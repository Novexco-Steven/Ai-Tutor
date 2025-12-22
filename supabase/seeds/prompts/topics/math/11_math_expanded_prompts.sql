-- Grade 11 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 11 Math topics
-- ============================================================================

-- ============================================================================
-- SECTION 1
-- ============================================================================

-- Relations and Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Relations and Functions' AND grade_level_min = 11),
  'Relations and Functions Topic Guide', 'Distinguish functions from relations',
  'RELATIONS AND FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to relations and functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect relations and functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of relations and functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning relations and functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about relations and functions

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
- Accurately solves problems involving relations and functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Relations and Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Function Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Notation' AND grade_level_min = 11),
  'Function Notation Topic Guide', 'Use and interpret function notation',
  'FUNCTION NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Notation' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Domain and Range
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 11),
  'Domain and Range Topic Guide', 'Find domain and range from various forms',
  'DOMAIN AND RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about domain and range

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
- Accurately solves problems involving domain and range
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Function Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Operations' AND grade_level_min = 11),
  'Function Operations Topic Guide', 'Add, subtract, multiply, divide functions',
  'FUNCTION OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to function operations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect function operations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of function operations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning function operations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about function operations

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
- Accurately solves problems involving function operations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Operations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Composition of Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composition of Functions' AND grade_level_min = 11),
  'Composition of Functions Topic Guide', 'Compose functions and find composite values',
  'COMPOSITION OF FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to composition of functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect composition of functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of composition of functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning composition of functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about composition of functions

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
- Accurately solves problems involving composition of functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composition of Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Inverse Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 11),
  'Inverse Functions Topic Guide', 'Find and verify inverse functions',
  'INVERSE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inverse functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inverse functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inverse functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inverse functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inverse functions

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
- Accurately solves problems involving inverse functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- One-to-One Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One-to-One Functions' AND grade_level_min = 11),
  'One-to-One Functions Topic Guide', 'Identify one-to-one functions',
  'ONE-TO-ONE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to one-to-one functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect one-to-one functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of one-to-one functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning one-to-one functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about one-to-one functions

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
- Accurately solves problems involving one-to-one functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One-to-One Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Piecewise Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Piecewise Functions' AND grade_level_min = 11),
  'Piecewise Functions Topic Guide', 'Graph and evaluate piecewise functions',
  'PIECEWISE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to piecewise functions
2. Apply core techniques to solve problems
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about piecewise functions

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
- Accurately solves problems involving piecewise functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Piecewise Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Parent Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parent Functions' AND grade_level_min = 11),
  'Parent Functions Topic Guide', 'Identify and graph parent functions',
  'PARENT FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to parent functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect parent functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of parent functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning parent functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about parent functions

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
- Accurately solves problems involving parent functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parent Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Transformations of Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Transformations of Functions' AND grade_level_min = 11),
  'Transformations of Functions Topic Guide', 'Apply transformations to functions',
  'TRANSFORMATIONS OF FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to transformations of functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect transformations of functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of transformations of functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning transformations of functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about transformations of functions

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
- Accurately solves problems involving transformations of functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transformations of Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Even and Odd Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Even and Odd Functions' AND grade_level_min = 11),
  'Even and Odd Functions Topic Guide', 'Identify function symmetry',
  'EVEN AND ODD FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to even and odd functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect even and odd functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of even and odd functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning even and odd functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about even and odd functions

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
- Accurately solves problems involving even and odd functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Even and Odd Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Linear Functions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Functions Review' AND grade_level_min = 11),
  'Linear Functions Review Topic Guide', 'Review linear function concepts',
  'LINEAR FUNCTIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 introductory mathematics
- Foundational understanding of related concepts
- Readiness for foundational mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to linear functions review
2. Apply foundational techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect linear functions review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of linear functions review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning linear functions review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about linear functions review

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
- Accurately solves problems involving linear functions review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates foundational understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Functions Review' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 2
-- ============================================================================

-- Slope and Rate of Change
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope and Rate of Change' AND grade_level_min = 11),
  'Slope and Rate of Change Topic Guide', 'Calculate and interpret slope',
  'SLOPE AND RATE OF CHANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to slope and rate of change
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect slope and rate of change to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of slope and rate of change
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning slope and rate of change
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about slope and rate of change

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
- Accurately solves problems involving slope and rate of change
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope and Rate of Change' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Writing Linear Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Linear Equations' AND grade_level_min = 11),
  'Writing Linear Equations Topic Guide', 'Write equations in multiple forms',
  'WRITING LINEAR EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to writing linear equations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect writing linear equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of writing linear equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning writing linear equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about writing linear equations

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
- Accurately solves problems involving writing linear equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Linear Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Parallel and Perpendicular Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 11),
  'Parallel and Perpendicular Lines Topic Guide', 'Write equations of parallel/perpendicular lines',
  'PARALLEL AND PERPENDICULAR LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to parallel and perpendicular lines
2. Apply core techniques to solve problems
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about parallel and perpendicular lines

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
- Accurately solves problems involving parallel and perpendicular lines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel and Perpendicular Lines' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Absolute Value Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Functions' AND grade_level_min = 11),
  'Absolute Value Functions Topic Guide', 'Graph y = |x| and transformations',
  'ABSOLUTE VALUE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to absolute value functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect absolute value functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of absolute value functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning absolute value functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about absolute value functions

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
- Accurately solves problems involving absolute value functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Transforming Absolute Value Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Transforming Absolute Value Functions' AND grade_level_min = 11),
  'Transforming Absolute Value Functions Topic Guide', 'Apply transformations',
  'TRANSFORMING ABSOLUTE VALUE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to transforming absolute value functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect transforming absolute value functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of transforming absolute value functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning transforming absolute value functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about transforming absolute value functions

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
- Accurately solves problems involving transforming absolute value functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transforming Absolute Value Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Absolute Value Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Absolute Value Equations' AND grade_level_min = 11),
  'Solving Absolute Value Equations Topic Guide', 'Solve equations with absolute value',
  'SOLVING ABSOLUTE VALUE EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving absolute value equations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving absolute value equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving absolute value equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving absolute value equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving absolute value equations

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
- Accurately solves problems involving solving absolute value equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Absolute Value Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Absolute Value Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 11),
  'Absolute Value Inequalities Topic Guide', 'Solve and graph absolute value inequalities',
  'ABSOLUTE VALUE INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Piecewise Linear Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Piecewise Linear Functions' AND grade_level_min = 11),
  'Piecewise Linear Functions Topic Guide', 'Graph piecewise linear functions',
  'PIECEWISE LINEAR FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to piecewise linear functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect piecewise linear functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of piecewise linear functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning piecewise linear functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about piecewise linear functions

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
- Accurately solves problems involving piecewise linear functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Piecewise Linear Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Step Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Step Functions' AND grade_level_min = 11),
  'Step Functions Topic Guide', 'Graph and apply step functions',
  'STEP FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to step functions
2. Apply core techniques to solve problems
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
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about step functions

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
- Accurately solves problems involving step functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Step Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Systems Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Systems Review' AND grade_level_min = 11),
  'Solving Systems Review Topic Guide', 'Review substitution and elimination',
  'SOLVING SYSTEMS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving systems review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving systems review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving systems review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving systems review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving systems review

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
- Accurately solves problems involving solving systems review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Systems Review' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Systems with Three Variables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems with Three Variables' AND grade_level_min = 11),
  'Systems with Three Variables Topic Guide', 'Solve 3-variable systems',
  'SYSTEMS WITH THREE VARIABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to systems with three variables
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect systems with three variables to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of systems with three variables
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning systems with three variables
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about systems with three variables

2. DIRECT INSTRUCTION (16 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (14 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (9 minutes):
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
- Accurately solves problems involving systems with three variables
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems with Three Variables' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Systems of Linear Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems of Linear Inequalities' AND grade_level_min = 11),
  'Systems of Linear Inequalities Topic Guide', 'Graph systems of inequalities',
  'SYSTEMS OF LINEAR INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to systems of linear inequalities
2. Apply core techniques to solve problems
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
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems of Linear Inequalities' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 3
-- ============================================================================

-- Linear Programming
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Programming' AND grade_level_min = 11),
  'Linear Programming Topic Guide', 'Solve optimization problems',
  'LINEAR PROGRAMMING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to linear programming
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect linear programming to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of linear programming
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning linear programming
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about linear programming

2. DIRECT INSTRUCTION (16 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (14 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (9 minutes):
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
- Accurately solves problems involving linear programming
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Programming' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Matrix Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Matrix Introduction' AND grade_level_min = 11),
  'Matrix Introduction Topic Guide', 'Represent data with matrices',
  'MATRIX INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to matrix introduction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect matrix introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of matrix introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning matrix introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about matrix introduction

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
- Accurately solves problems involving matrix introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Matrix Introduction' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Matrix Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Matrix Operations' AND grade_level_min = 11),
  'Matrix Operations Topic Guide', 'Add, subtract, multiply matrices',
  'MATRIX OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to matrix operations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect matrix operations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of matrix operations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning matrix operations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about matrix operations

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
- Accurately solves problems involving matrix operations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Matrix Operations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Matrix Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Matrix Equations' AND grade_level_min = 11),
  'Matrix Equations Topic Guide', 'Solve matrix equations',
  'MATRIX EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to matrix equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect matrix equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of matrix equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning matrix equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about matrix equations

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
- Accurately solves problems involving matrix equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Matrix Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Inverse Matrices
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Matrices' AND grade_level_min = 11),
  'Inverse Matrices Topic Guide', 'Find and use inverse matrices',
  'INVERSE MATRICES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inverse matrices
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inverse matrices to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inverse matrices
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inverse matrices
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inverse matrices

2. DIRECT INSTRUCTION (16 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (14 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (9 minutes):
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
- Accurately solves problems involving inverse matrices
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Matrices' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Systems with Matrices
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Systems with Matrices' AND grade_level_min = 11),
  'Solving Systems with Matrices Topic Guide', 'Use matrices to solve systems',
  'SOLVING SYSTEMS WITH MATRICES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving systems with matrices
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving systems with matrices to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving systems with matrices
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving systems with matrices
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving systems with matrices

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
- Accurately solves problems involving solving systems with matrices
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Systems with Matrices' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Nonlinear Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Nonlinear Systems' AND grade_level_min = 11),
  'Nonlinear Systems Topic Guide', 'Solve systems with quadratics',
  'NONLINEAR SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to nonlinear systems
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect nonlinear systems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of nonlinear systems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning nonlinear systems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about nonlinear systems

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
- Accurately solves problems involving nonlinear systems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Nonlinear Systems' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Quadratics Standard Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Quadratics Standard Form' AND grade_level_min = 11),
  'Graphing Quadratics Standard Form Topic Guide', 'Graph in standard form',
  'GRAPHING QUADRATICS STANDARD FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing quadratics standard form
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing quadratics standard form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing quadratics standard form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing quadratics standard form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing quadratics standard form

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
- Accurately solves problems involving graphing quadratics standard form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Quadratics Standard Form' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Quadratics Vertex Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Quadratics Vertex Form' AND grade_level_min = 11),
  'Graphing Quadratics Vertex Form Topic Guide', 'Graph in vertex form',
  'GRAPHING QUADRATICS VERTEX FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing quadratics vertex form
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing quadratics vertex form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing quadratics vertex form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing quadratics vertex form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing quadratics vertex form

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
- Accurately solves problems involving graphing quadratics vertex form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Quadratics Vertex Form' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Transformations of Quadratics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Transformations of Quadratics' AND grade_level_min = 11),
  'Transformations of Quadratics Topic Guide', 'Apply transformations',
  'TRANSFORMATIONS OF QUADRATICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to transformations of quadratics
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect transformations of quadratics to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of transformations of quadratics
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning transformations of quadratics
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about transformations of quadratics

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
- Accurately solves problems involving transformations of quadratics
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Transformations of Quadratics' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Finding Vertex and Axis
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Vertex and Axis' AND grade_level_min = 11),
  'Finding Vertex and Axis Topic Guide', 'Find key features algebraically',
  'FINDING VERTEX AND AXIS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to finding vertex and axis
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect finding vertex and axis to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of finding vertex and axis
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning finding vertex and axis
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about finding vertex and axis

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
- Accurately solves problems involving finding vertex and axis
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Vertex and Axis' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Factoring Quadratics Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Quadratics Review' AND grade_level_min = 11),
  'Factoring Quadratics Review Topic Guide', 'Factor quadratic expressions',
  'FACTORING QUADRATICS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factoring quadratics review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factoring quadratics review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factoring quadratics review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factoring quadratics review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factoring quadratics review

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
- Accurately solves problems involving factoring quadratics review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Quadratics Review' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 4
-- ============================================================================

-- Completing the Square
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Completing the Square' AND grade_level_min = 11),
  'Completing the Square Topic Guide', 'Complete the square for any quadratic',
  'COMPLETING THE SQUARE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Completing the Square' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Quadratic Formula Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Formula Review' AND grade_level_min = 11),
  'Quadratic Formula Review Topic Guide', 'Apply quadratic formula',
  'QUADRATIC FORMULA REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadratic formula review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadratic formula review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadratic formula review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadratic formula review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadratic formula review

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
- Accurately solves problems involving quadratic formula review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Formula Review' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Discriminant and Nature of Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Discriminant and Nature of Roots' AND grade_level_min = 11),
  'Discriminant and Nature of Roots Topic Guide', 'Analyze discriminant',
  'DISCRIMINANT AND NATURE OF ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to discriminant and nature of roots
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect discriminant and nature of roots to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of discriminant and nature of roots
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning discriminant and nature of roots
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about discriminant and nature of roots

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
- Accurately solves problems involving discriminant and nature of roots
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Discriminant and Nature of Roots' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Complex Numbers Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complex Numbers Introduction' AND grade_level_min = 11),
  'Complex Numbers Introduction Topic Guide', 'Understand imaginary and complex numbers',
  'COMPLEX NUMBERS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to complex numbers introduction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect complex numbers introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of complex numbers introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning complex numbers introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about complex numbers introduction

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
- Accurately solves problems involving complex numbers introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Numbers Introduction' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Operations with Complex Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Operations with Complex Numbers' AND grade_level_min = 11),
  'Operations with Complex Numbers Topic Guide', 'Add, subtract, multiply complex numbers',
  'OPERATIONS WITH COMPLEX NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to operations with complex numbers
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect operations with complex numbers to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of operations with complex numbers
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning operations with complex numbers
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about operations with complex numbers

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
- Accurately solves problems involving operations with complex numbers
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Operations with Complex Numbers' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Quadratic Equations with Complex Solutions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Equations with Complex Solutions' AND grade_level_min = 11),
  'Quadratic Equations with Complex Solutions Topic Guide', 'Solve with complex solutions',
  'QUADRATIC EQUATIONS WITH COMPLEX SOLUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadratic equations with complex solutions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadratic equations with complex solutions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadratic equations with complex solutions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadratic equations with complex solutions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadratic equations with complex solutions

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
- Accurately solves problems involving quadratic equations with complex solutions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Equations with Complex Solutions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Quadratic Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Inequalities' AND grade_level_min = 11),
  'Quadratic Inequalities Topic Guide', 'Solve and graph quadratic inequalities',
  'QUADRATIC INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadratic inequalities
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadratic inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadratic inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadratic inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadratic inequalities

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
- Accurately solves problems involving quadratic inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Inequalities' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Quadratic Modeling
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quadratic Modeling' AND grade_level_min = 11),
  'Quadratic Modeling Topic Guide', 'Model with quadratic functions',
  'QUADRATIC MODELING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quadratic modeling
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quadratic modeling to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quadratic modeling
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quadratic modeling
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quadratic modeling

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
- Accurately solves problems involving quadratic modeling
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quadratic Modeling' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Polynomial Functions Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Functions Introduction' AND grade_level_min = 11),
  'Polynomial Functions Introduction Topic Guide', 'Identify polynomial functions',
  'POLYNOMIAL FUNCTIONS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polynomial functions introduction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polynomial functions introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polynomial functions introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polynomial functions introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polynomial functions introduction

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
- Accurately solves problems involving polynomial functions introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Functions Introduction' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- End Behavior
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'End Behavior' AND grade_level_min = 11),
  'End Behavior Topic Guide', 'Determine end behavior from degree and leading coefficient',
  'END BEHAVIOR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to end behavior
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect end behavior to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of end behavior
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning end behavior
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about end behavior

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
- Accurately solves problems involving end behavior
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'End Behavior' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Polynomial Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Polynomial Functions' AND grade_level_min = 11),
  'Graphing Polynomial Functions Topic Guide', 'Sketch polynomial graphs',
  'GRAPHING POLYNOMIAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing polynomial functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing polynomial functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing polynomial functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing polynomial functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing polynomial functions

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
- Accurately solves problems involving graphing polynomial functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Polynomial Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Factoring Polynomials Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Polynomials Review' AND grade_level_min = 11),
  'Factoring Polynomials Review Topic Guide', 'Factor various polynomial types',
  'FACTORING POLYNOMIALS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factoring polynomials review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factoring polynomials review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factoring polynomials review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factoring polynomials review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factoring polynomials review

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
- Accurately solves problems involving factoring polynomials review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Polynomials Review' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 5
-- ============================================================================

-- Zeros and Multiplicity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Zeros and Multiplicity' AND grade_level_min = 11),
  'Zeros and Multiplicity Topic Guide', 'Find zeros and determine multiplicity',
  'ZEROS AND MULTIPLICITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to zeros and multiplicity
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect zeros and multiplicity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of zeros and multiplicity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning zeros and multiplicity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about zeros and multiplicity

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
- Accurately solves problems involving zeros and multiplicity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Zeros and Multiplicity' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Polynomial Long Division
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Long Division' AND grade_level_min = 11),
  'Polynomial Long Division Topic Guide', 'Divide polynomials using long division',
  'POLYNOMIAL LONG DIVISION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polynomial long division
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polynomial long division to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polynomial long division
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polynomial long division
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polynomial long division

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
- Accurately solves problems involving polynomial long division
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Long Division' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Synthetic Division
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Synthetic Division' AND grade_level_min = 11),
  'Synthetic Division Topic Guide', 'Use synthetic division',
  'SYNTHETIC DIVISION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to synthetic division
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect synthetic division to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of synthetic division
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning synthetic division
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about synthetic division

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
- Accurately solves problems involving synthetic division
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Synthetic Division' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Remainder Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Remainder Theorem' AND grade_level_min = 11),
  'Remainder Theorem Topic Guide', 'Apply remainder theorem',
  'REMAINDER THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to remainder theorem
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect remainder theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of remainder theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning remainder theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about remainder theorem

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
- Accurately solves problems involving remainder theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Remainder Theorem' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Factor Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factor Theorem' AND grade_level_min = 11),
  'Factor Theorem Topic Guide', 'Apply factor theorem to find factors',
  'FACTOR THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to factor theorem
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect factor theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of factor theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning factor theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about factor theorem

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
- Accurately solves problems involving factor theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factor Theorem' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Rational Root Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Root Theorem' AND grade_level_min = 11),
  'Rational Root Theorem Topic Guide', 'Find potential rational zeros',
  'RATIONAL ROOT THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rational root theorem
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rational root theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rational root theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rational root theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rational root theorem

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
- Accurately solves problems involving rational root theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Root Theorem' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Finding All Zeros
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding All Zeros' AND grade_level_min = 11),
  'Finding All Zeros Topic Guide', 'Find all zeros of polynomials',
  'FINDING ALL ZEROS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to finding all zeros
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect finding all zeros to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of finding all zeros
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning finding all zeros
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about finding all zeros

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
- Accurately solves problems involving finding all zeros
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding All Zeros' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Writing Polynomial Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Polynomial Equations' AND grade_level_min = 11),
  'Writing Polynomial Equations Topic Guide', 'Write equations from zeros',
  'WRITING POLYNOMIAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to writing polynomial equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect writing polynomial equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of writing polynomial equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning writing polynomial equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about writing polynomial equations

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
- Accurately solves problems involving writing polynomial equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Polynomial Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Polynomial Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Inequalities' AND grade_level_min = 11),
  'Polynomial Inequalities Topic Guide', 'Solve polynomial inequalities',
  'POLYNOMIAL INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polynomial inequalities
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polynomial inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polynomial inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polynomial inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polynomial inequalities

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
- Accurately solves problems involving polynomial inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Inequalities' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Simplifying Rational Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying Rational Expressions' AND grade_level_min = 11),
  'Simplifying Rational Expressions Topic Guide', 'Factor and simplify',
  'SIMPLIFYING RATIONAL EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to simplifying rational expressions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect simplifying rational expressions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of simplifying rational expressions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning simplifying rational expressions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about simplifying rational expressions

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
- Accurately solves problems involving simplifying rational expressions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying Rational Expressions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Multiplying Rational Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Rational Expressions' AND grade_level_min = 11),
  'Multiplying Rational Expressions Topic Guide', 'Multiply and simplify',
  'MULTIPLYING RATIONAL EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to multiplying rational expressions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect multiplying rational expressions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of multiplying rational expressions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning multiplying rational expressions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about multiplying rational expressions

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
- Accurately solves problems involving multiplying rational expressions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Rational Expressions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Dividing Rational Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Rational Expressions' AND grade_level_min = 11),
  'Dividing Rational Expressions Topic Guide', 'Divide and simplify',
  'DIVIDING RATIONAL EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to dividing rational expressions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect dividing rational expressions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of dividing rational expressions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning dividing rational expressions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about dividing rational expressions

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
- Accurately solves problems involving dividing rational expressions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Rational Expressions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 6
-- ============================================================================

-- Adding Rational Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Rational Expressions' AND grade_level_min = 11),
  'Adding Rational Expressions Topic Guide', 'Add with common and unlike denominators',
  'ADDING RATIONAL EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to adding rational expressions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect adding rational expressions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of adding rational expressions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning adding rational expressions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about adding rational expressions

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
- Accurately solves problems involving adding rational expressions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Rational Expressions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Subtracting Rational Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Rational Expressions' AND grade_level_min = 11),
  'Subtracting Rational Expressions Topic Guide', 'Subtract with various denominators',
  'SUBTRACTING RATIONAL EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to subtracting rational expressions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect subtracting rational expressions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of subtracting rational expressions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning subtracting rational expressions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about subtracting rational expressions

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
- Accurately solves problems involving subtracting rational expressions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Rational Expressions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Complex Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complex Fractions' AND grade_level_min = 11),
  'Complex Fractions Topic Guide', 'Simplify complex fractions',
  'COMPLEX FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to complex fractions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect complex fractions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of complex fractions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning complex fractions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about complex fractions

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
- Accurately solves problems involving complex fractions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Fractions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Rational Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Rational Equations' AND grade_level_min = 11),
  'Solving Rational Equations Topic Guide', 'Solve equations with rational expressions',
  'SOLVING RATIONAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving rational equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving rational equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving rational equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving rational equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving rational equations

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
- Accurately solves problems involving solving rational equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Rational Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Extraneous Solutions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Extraneous Solutions' AND grade_level_min = 11),
  'Extraneous Solutions Topic Guide', 'Identify and check for extraneous solutions',
  'EXTRANEOUS SOLUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to extraneous solutions
2. Apply core techniques to solve problems
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
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about extraneous solutions

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
- Accurately solves problems involving extraneous solutions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Extraneous Solutions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Rational Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Rational Functions' AND grade_level_min = 11),
  'Graphing Rational Functions Topic Guide', 'Graph rational functions',
  'GRAPHING RATIONAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing rational functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing rational functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing rational functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing rational functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing rational functions

2. DIRECT INSTRUCTION (16 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (14 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (9 minutes):
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
- Accurately solves problems involving graphing rational functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Rational Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Vertical Asymptotes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vertical Asymptotes' AND grade_level_min = 11),
  'Vertical Asymptotes Topic Guide', 'Find and interpret vertical asymptotes',
  'VERTICAL ASYMPTOTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to vertical asymptotes
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect vertical asymptotes to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of vertical asymptotes
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning vertical asymptotes
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about vertical asymptotes

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
- Accurately solves problems involving vertical asymptotes
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vertical Asymptotes' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Horizontal Asymptotes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Horizontal Asymptotes' AND grade_level_min = 11),
  'Horizontal Asymptotes Topic Guide', 'Find and interpret horizontal asymptotes',
  'HORIZONTAL ASYMPTOTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to horizontal asymptotes
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect horizontal asymptotes to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of horizontal asymptotes
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning horizontal asymptotes
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about horizontal asymptotes

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
- Accurately solves problems involving horizontal asymptotes
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Horizontal Asymptotes' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Oblique Asymptotes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Oblique Asymptotes' AND grade_level_min = 11),
  'Oblique Asymptotes Topic Guide', 'Find slant asymptotes',
  'OBLIQUE ASYMPTOTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to oblique asymptotes
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect oblique asymptotes to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of oblique asymptotes
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning oblique asymptotes
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about oblique asymptotes

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
- Accurately solves problems involving oblique asymptotes
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Oblique Asymptotes' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Holes in Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Holes in Graphs' AND grade_level_min = 11),
  'Holes in Graphs Topic Guide', 'Identify and locate holes',
  'HOLES IN GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to holes in graphs
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect holes in graphs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of holes in graphs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning holes in graphs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about holes in graphs

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
- Accurately solves problems involving holes in graphs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Holes in Graphs' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Rational Function Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Function Applications' AND grade_level_min = 11),
  'Rational Function Applications Topic Guide', 'Apply to real situations',
  'RATIONAL FUNCTION APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rational function applications
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rational function applications to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rational function applications
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rational function applications
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rational function applications

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
- Accurately solves problems involving rational function applications
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Function Applications' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Simplifying Radicals Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying Radicals Review' AND grade_level_min = 11),
  'Simplifying Radicals Review Topic Guide', 'Simplify radical expressions',
  'SIMPLIFYING RADICALS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to simplifying radicals review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect simplifying radicals review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of simplifying radicals review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning simplifying radicals review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about simplifying radicals review

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
- Accurately solves problems involving simplifying radicals review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying Radicals Review' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 7
-- ============================================================================

-- Rational Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Exponents' AND grade_level_min = 11),
  'Rational Exponents Topic Guide', 'Convert between radicals and rational exponents',
  'RATIONAL EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rational exponents
2. Apply core techniques to solve problems
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rational exponents

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
- Accurately solves problems involving rational exponents
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Exponents' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Simplifying with Rational Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying with Rational Exponents' AND grade_level_min = 11),
  'Simplifying with Rational Exponents Topic Guide', 'Simplify expressions with rational exponents',
  'SIMPLIFYING WITH RATIONAL EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to simplifying with rational exponents
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect simplifying with rational exponents to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of simplifying with rational exponents
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning simplifying with rational exponents
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about simplifying with rational exponents

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
- Accurately solves problems involving simplifying with rational exponents
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying with Rational Exponents' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Operations with Radicals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Operations with Radicals' AND grade_level_min = 11),
  'Operations with Radicals Topic Guide', 'Add, subtract, multiply, divide radicals',
  'OPERATIONS WITH RADICALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to operations with radicals
2. Apply core techniques to solve problems
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
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Operations with Radicals' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Rationalizing Denominators
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rationalizing Denominators' AND grade_level_min = 11),
  'Rationalizing Denominators Topic Guide', 'Rationalize with one and two terms',
  'RATIONALIZING DENOMINATORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rationalizing Denominators' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Radical Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Radical Equations' AND grade_level_min = 11),
  'Solving Radical Equations Topic Guide', 'Solve equations with radicals',
  'SOLVING RADICAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Radical Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Equations with Rational Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Equations with Rational Exponents' AND grade_level_min = 11),
  'Solving Equations with Rational Exponents Topic Guide', 'Solve equations with fractional exponents',
  'SOLVING EQUATIONS WITH RATIONAL EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving equations with rational exponents
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving equations with rational exponents to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving equations with rational exponents
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving equations with rational exponents
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving equations with rational exponents

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
- Accurately solves problems involving solving equations with rational exponents
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Equations with Rational Exponents' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Square Root Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Square Root Functions' AND grade_level_min = 11),
  'Graphing Square Root Functions Topic Guide', 'Graph and transform square root functions',
  'GRAPHING SQUARE ROOT FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing square root functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing square root functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing square root functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing square root functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing square root functions

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
- Accurately solves problems involving graphing square root functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Square Root Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Cube Root Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Cube Root Functions' AND grade_level_min = 11),
  'Graphing Cube Root Functions Topic Guide', 'Graph and transform cube root functions',
  'GRAPHING CUBE ROOT FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing cube root functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing cube root functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing cube root functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing cube root functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing cube root functions

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
- Accurately solves problems involving graphing cube root functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Cube Root Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Inverse Functions with Radicals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Functions with Radicals' AND grade_level_min = 11),
  'Inverse Functions with Radicals Topic Guide', 'Find inverses involving radicals',
  'INVERSE FUNCTIONS WITH RADICALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inverse functions with radicals
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect inverse functions with radicals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of inverse functions with radicals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning inverse functions with radicals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inverse functions with radicals

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
- Accurately solves problems involving inverse functions with radicals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Functions with Radicals' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Radical Function Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Radical Function Applications' AND grade_level_min = 11),
  'Radical Function Applications Topic Guide', 'Apply radical functions to real situations',
  'RADICAL FUNCTION APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to radical function applications
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect radical function applications to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of radical function applications
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning radical function applications
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about radical function applications

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
- Accurately solves problems involving radical function applications
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Radical Function Applications' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Exponential Functions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Functions Review' AND grade_level_min = 11),
  'Exponential Functions Review Topic Guide', 'Review exponential function concepts',
  'EXPONENTIAL FUNCTIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential functions review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential functions review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential functions review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential functions review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential functions review

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
- Accurately solves problems involving exponential functions review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Functions Review' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Exponential Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Exponential Functions' AND grade_level_min = 11),
  'Graphing Exponential Functions Topic Guide', 'Graph and transform exponential functions',
  'GRAPHING EXPONENTIAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing exponential functions

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
- Accurately solves problems involving graphing exponential functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Exponential Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 8
-- ============================================================================

-- The Natural Base e
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'The Natural Base e' AND grade_level_min = 11),
  'The Natural Base e Topic Guide', 'Understand and use natural base',
  'THE NATURAL BASE E - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to the natural base e
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect the natural base e to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of the natural base e
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning the natural base e
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about the natural base e

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
- Accurately solves problems involving the natural base e
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'The Natural Base e' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Exponential Growth
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Growth' AND grade_level_min = 11),
  'Exponential Growth Topic Guide', 'Model exponential growth',
  'EXPONENTIAL GROWTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Growth' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Exponential Decay
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Decay' AND grade_level_min = 11),
  'Exponential Decay Topic Guide', 'Model exponential decay',
  'EXPONENTIAL DECAY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Decay' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Compound Interest
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Interest' AND grade_level_min = 11),
  'Compound Interest Topic Guide', 'Apply compound interest formulas',
  'COMPOUND INTEREST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Interest' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Continuous Compound Interest
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Continuous Compound Interest' AND grade_level_min = 11),
  'Continuous Compound Interest Topic Guide', 'Apply continuous compounding',
  'CONTINUOUS COMPOUND INTEREST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to continuous compound interest
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect continuous compound interest to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of continuous compound interest
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning continuous compound interest
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about continuous compound interest

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
- Accurately solves problems involving continuous compound interest
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Continuous Compound Interest' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Exponential Equations Using Same Base
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Exponential Equations Using Same Base' AND grade_level_min = 11),
  'Solving Exponential Equations Using Same Base Topic Guide', 'Solve by rewriting with same base',
  'SOLVING EXPONENTIAL EQUATIONS USING SAME BASE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving exponential equations using same base
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving exponential equations using same base to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving exponential equations using same base
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving exponential equations using same base
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving exponential equations using same base

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
- Accurately solves problems involving solving exponential equations using same base
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Exponential Equations Using Same Base' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Exponential Equations Using Logs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Exponential Equations Using Logs' AND grade_level_min = 11),
  'Solving Exponential Equations Using Logs Topic Guide', 'Solve using logarithms',
  'SOLVING EXPONENTIAL EQUATIONS USING LOGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving exponential equations using logs
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving exponential equations using logs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving exponential equations using logs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving exponential equations using logs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving exponential equations using logs

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
- Accurately solves problems involving solving exponential equations using logs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Exponential Equations Using Logs' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Exponential Modeling
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Modeling' AND grade_level_min = 11),
  'Exponential Modeling Topic Guide', 'Create and interpret exponential models',
  'EXPONENTIAL MODELING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential modeling
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential modeling to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential modeling
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential modeling
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential modeling

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
- Accurately solves problems involving exponential modeling
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Modeling' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Introduction to Logarithms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Logarithms' AND grade_level_min = 11),
  'Introduction to Logarithms Topic Guide', 'Define logarithms as inverses',
  'INTRODUCTION TO LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to introduction to logarithms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect introduction to logarithms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of introduction to logarithms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning introduction to logarithms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about introduction to logarithms

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
- Accurately solves problems involving introduction to logarithms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Logarithms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Converting Between Forms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converting Between Forms' AND grade_level_min = 11),
  'Converting Between Forms Topic Guide', 'Convert between exponential and log forms',
  'CONVERTING BETWEEN FORMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to converting between forms
2. Apply core techniques to solve problems
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
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about converting between forms

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
- Accurately solves problems involving converting between forms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converting Between Forms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Common Logarithms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Common Logarithms' AND grade_level_min = 11),
  'Common Logarithms Topic Guide', 'Work with base 10 logarithms',
  'COMMON LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to common logarithms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect common logarithms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of common logarithms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning common logarithms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about common logarithms

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
- Accurately solves problems involving common logarithms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Common Logarithms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Natural Logarithms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Natural Logarithms' AND grade_level_min = 11),
  'Natural Logarithms Topic Guide', 'Work with base e logarithms',
  'NATURAL LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to natural logarithms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect natural logarithms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of natural logarithms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning natural logarithms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about natural logarithms

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
- Accurately solves problems involving natural logarithms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Logarithms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 9
-- ============================================================================

-- Graphing Logarithmic Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Logarithmic Functions' AND grade_level_min = 11),
  'Graphing Logarithmic Functions Topic Guide', 'Graph and transform log functions',
  'GRAPHING LOGARITHMIC FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing logarithmic functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing logarithmic functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing logarithmic functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing logarithmic functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing logarithmic functions

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
- Accurately solves problems involving graphing logarithmic functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Logarithmic Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Product Rule for Logs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Product Rule for Logs' AND grade_level_min = 11),
  'Product Rule for Logs Topic Guide', 'Apply log(ab) = log a + log b',
  'PRODUCT RULE FOR LOGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to product rule for logs
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect product rule for logs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of product rule for logs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning product rule for logs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about product rule for logs

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
- Accurately solves problems involving product rule for logs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Product Rule for Logs' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Quotient Rule for Logs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quotient Rule for Logs' AND grade_level_min = 11),
  'Quotient Rule for Logs Topic Guide', 'Apply log(a/b) = log a - log b',
  'QUOTIENT RULE FOR LOGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to quotient rule for logs
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect quotient rule for logs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of quotient rule for logs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning quotient rule for logs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about quotient rule for logs

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
- Accurately solves problems involving quotient rule for logs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quotient Rule for Logs' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Power Rule for Logs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Power Rule for Logs' AND grade_level_min = 11),
  'Power Rule for Logs Topic Guide', 'Apply log(aⁿ) = n log a',
  'POWER RULE FOR LOGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to power rule for logs
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect power rule for logs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of power rule for logs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning power rule for logs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about power rule for logs

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
- Accurately solves problems involving power rule for logs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Power Rule for Logs' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Expanding Logarithms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Expanding Logarithms' AND grade_level_min = 11),
  'Expanding Logarithms Topic Guide', 'Expand using log properties',
  'EXPANDING LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to expanding logarithms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect expanding logarithms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of expanding logarithms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning expanding logarithms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about expanding logarithms

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
- Accurately solves problems involving expanding logarithms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Expanding Logarithms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Condensing Logarithms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Condensing Logarithms' AND grade_level_min = 11),
  'Condensing Logarithms Topic Guide', 'Combine using log properties',
  'CONDENSING LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to condensing logarithms
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect condensing logarithms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of condensing logarithms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning condensing logarithms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about condensing logarithms

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
- Accurately solves problems involving condensing logarithms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Condensing Logarithms' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Change of Base Formula
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Change of Base Formula' AND grade_level_min = 11),
  'Change of Base Formula Topic Guide', 'Convert between bases',
  'CHANGE OF BASE FORMULA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to change of base formula
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect change of base formula to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of change of base formula
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning change of base formula
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about change of base formula

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
- Accurately solves problems involving change of base formula
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Change of Base Formula' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Logarithmic Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Logarithmic Equations' AND grade_level_min = 11),
  'Solving Logarithmic Equations Topic Guide', 'Solve equations with logarithms',
  'SOLVING LOGARITHMIC EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving logarithmic equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving logarithmic equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving logarithmic equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving logarithmic equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving logarithmic equations

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
- Accurately solves problems involving solving logarithmic equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Logarithmic Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Logarithmic Models
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Logarithmic Models' AND grade_level_min = 11),
  'Logarithmic Models Topic Guide', 'Apply logarithms to real situations',
  'LOGARITHMIC MODELS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to logarithmic models
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect logarithmic models to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of logarithmic models
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning logarithmic models
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about logarithmic models

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
- Accurately solves problems involving logarithmic models
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logarithmic Models' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Introduction to Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Sequences' AND grade_level_min = 11),
  'Introduction to Sequences Topic Guide', 'Understand sequence notation',
  'INTRODUCTION TO SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to introduction to sequences
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect introduction to sequences to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of introduction to sequences
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning introduction to sequences
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about introduction to sequences

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
- Accurately solves problems involving introduction to sequences
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Sequences' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Arithmetic Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arithmetic Sequences' AND grade_level_min = 11),
  'Arithmetic Sequences Topic Guide', 'Find terms of arithmetic sequences',
  'ARITHMETIC SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arithmetic Sequences' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Arithmetic Series
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arithmetic Series' AND grade_level_min = 11),
  'Arithmetic Series Topic Guide', 'Calculate sums of arithmetic series',
  'ARITHMETIC SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to arithmetic series
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect arithmetic series to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of arithmetic series
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning arithmetic series
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about arithmetic series

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
- Accurately solves problems involving arithmetic series
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arithmetic Series' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 10
-- ============================================================================

-- Geometric Sequences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Sequences' AND grade_level_min = 11),
  'Geometric Sequences Topic Guide', 'Find terms of geometric sequences',
  'GEOMETRIC SEQUENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Sequences' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Geometric Series
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Series' AND grade_level_min = 11),
  'Geometric Series Topic Guide', 'Calculate sums of geometric series',
  'GEOMETRIC SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to geometric series
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect geometric series to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of geometric series
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning geometric series
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about geometric series

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
- Accurately solves problems involving geometric series
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Series' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Infinite Geometric Series
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Infinite Geometric Series' AND grade_level_min = 11),
  'Infinite Geometric Series Topic Guide', 'Find sums of infinite series',
  'INFINITE GEOMETRIC SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to infinite geometric series
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect infinite geometric series to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of infinite geometric series
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning infinite geometric series
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about infinite geometric series

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
- Accurately solves problems involving infinite geometric series
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Infinite Geometric Series' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Recursive Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Recursive Formulas' AND grade_level_min = 11),
  'Recursive Formulas Topic Guide', 'Write and use recursive formulas',
  'RECURSIVE FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to recursive formulas
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect recursive formulas to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of recursive formulas
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning recursive formulas
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about recursive formulas

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
- Accurately solves problems involving recursive formulas
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Recursive Formulas' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Explicit Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Explicit Formulas' AND grade_level_min = 11),
  'Explicit Formulas Topic Guide', 'Write and use explicit formulas',
  'EXPLICIT FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to explicit formulas
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect explicit formulas to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of explicit formulas
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning explicit formulas
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about explicit formulas

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
- Accurately solves problems involving explicit formulas
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Explicit Formulas' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Sigma Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sigma Notation' AND grade_level_min = 11),
  'Sigma Notation Topic Guide', 'Use summation notation',
  'SIGMA NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sigma notation
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sigma notation to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sigma notation
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sigma notation
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sigma notation

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
- Accurately solves problems involving sigma notation
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sigma Notation' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Sequences and Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sequences and Functions' AND grade_level_min = 11),
  'Sequences and Functions Topic Guide', 'Connect sequences to functions',
  'SEQUENCES AND FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sequences and functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sequences and functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sequences and functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sequences and functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sequences and functions

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
- Accurately solves problems involving sequences and functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sequences and Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Sequence Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sequence Applications' AND grade_level_min = 11),
  'Sequence Applications Topic Guide', 'Apply sequences to real situations',
  'SEQUENCE APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sequence applications
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sequence applications to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sequence applications
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sequence applications
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sequence applications

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
- Accurately solves problems involving sequence applications
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sequence Applications' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Permutations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Permutations' AND grade_level_min = 11),
  'Permutations Topic Guide', 'Calculate permutations',
  'PERMUTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Permutations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Combinations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combinations' AND grade_level_min = 11),
  'Combinations Topic Guide', 'Calculate combinations',
  'COMBINATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combinations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Probability with Permutations and Combinations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability with Permutations and Combinations' AND grade_level_min = 11),
  'Probability with Permutations and Combinations Topic Guide', 'Apply counting to probability',
  'PROBABILITY WITH PERMUTATIONS AND COMBINATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to probability with permutations and combinations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect probability with permutations and combinations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of probability with permutations and combinations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning probability with permutations and combinations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about probability with permutations and combinations

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
- Accurately solves problems involving probability with permutations and combinations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability with Permutations and Combinations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Binomial Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Binomial Probability' AND grade_level_min = 11),
  'Binomial Probability Topic Guide', 'Calculate binomial probabilities',
  'BINOMIAL PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to binomial probability
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect binomial probability to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of binomial probability
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning binomial probability
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about binomial probability

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
- Accurately solves problems involving binomial probability
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Binomial Probability' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 11
-- ============================================================================

-- Binomial Distribution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Binomial Distribution' AND grade_level_min = 11),
  'Binomial Distribution Topic Guide', 'Analyze binomial distributions',
  'BINOMIAL DISTRIBUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to binomial distribution
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect binomial distribution to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of binomial distribution
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning binomial distribution
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about binomial distribution

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
- Accurately solves problems involving binomial distribution
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Binomial Distribution' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Normal Distribution Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Normal Distribution Introduction' AND grade_level_min = 11),
  'Normal Distribution Introduction Topic Guide', 'Understand normal distribution',
  'NORMAL DISTRIBUTION INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to normal distribution introduction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect normal distribution introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of normal distribution introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning normal distribution introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about normal distribution introduction

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
- Accurately solves problems involving normal distribution introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Normal Distribution Introduction' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Standard Normal Distribution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Standard Normal Distribution' AND grade_level_min = 11),
  'Standard Normal Distribution Topic Guide', 'Use z-scores',
  'STANDARD NORMAL DISTRIBUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to standard normal distribution
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect standard normal distribution to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of standard normal distribution
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning standard normal distribution
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about standard normal distribution

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
- Accurately solves problems involving standard normal distribution
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Standard Normal Distribution' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Normal Distribution Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Normal Distribution Applications' AND grade_level_min = 11),
  'Normal Distribution Applications Topic Guide', 'Apply normal distribution',
  'NORMAL DISTRIBUTION APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to normal distribution applications
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect normal distribution applications to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of normal distribution applications
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning normal distribution applications
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about normal distribution applications

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
- Accurately solves problems involving normal distribution applications
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Normal Distribution Applications' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Sampling Distributions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sampling Distributions' AND grade_level_min = 11),
  'Sampling Distributions Topic Guide', 'Understand sampling distributions',
  'SAMPLING DISTRIBUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sampling distributions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sampling distributions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sampling distributions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sampling distributions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sampling distributions

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
- Accurately solves problems involving sampling distributions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sampling Distributions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Confidence Intervals Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Confidence Intervals Introduction' AND grade_level_min = 11),
  'Confidence Intervals Introduction Topic Guide', 'Calculate confidence intervals',
  'CONFIDENCE INTERVALS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to confidence intervals introduction
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect confidence intervals introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of confidence intervals introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning confidence intervals introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about confidence intervals introduction

2. DIRECT INSTRUCTION (16 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (14 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (9 minutes):
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
- Accurately solves problems involving confidence intervals introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Confidence Intervals Introduction' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Angles in Standard Position
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angles in Standard Position' AND grade_level_min = 11),
  'Angles in Standard Position Topic Guide', 'Understand angle measurement',
  'ANGLES IN STANDARD POSITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angles in standard position
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angles in standard position to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angles in standard position
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angles in standard position
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angles in standard position

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
- Accurately solves problems involving angles in standard position
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angles in Standard Position' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Radian Measure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Radian Measure' AND grade_level_min = 11),
  'Radian Measure Topic Guide', 'Convert between degrees and radians',
  'RADIAN MEASURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to radian measure
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect radian measure to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of radian measure
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning radian measure
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about radian measure

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
- Accurately solves problems involving radian measure
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Radian Measure' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Unit Circle Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Circle Introduction' AND grade_level_min = 11),
  'Unit Circle Introduction Topic Guide', 'Learn the unit circle',
  'UNIT CIRCLE INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to unit circle introduction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect unit circle introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of unit circle introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning unit circle introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about unit circle introduction

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
- Accurately solves problems involving unit circle introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Circle Introduction' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Trig Functions on Unit Circle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trig Functions on Unit Circle' AND grade_level_min = 11),
  'Trig Functions on Unit Circle Topic Guide', 'Find trig values from unit circle',
  'TRIG FUNCTIONS ON UNIT CIRCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to trig functions on unit circle
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect trig functions on unit circle to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of trig functions on unit circle
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning trig functions on unit circle
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about trig functions on unit circle

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
- Accurately solves problems involving trig functions on unit circle
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trig Functions on Unit Circle' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Reference Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reference Angles' AND grade_level_min = 11),
  'Reference Angles Topic Guide', 'Find reference angles',
  'REFERENCE ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to reference angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect reference angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of reference angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning reference angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about reference angles

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
- Accurately solves problems involving reference angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reference Angles' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Sine Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Sine Functions' AND grade_level_min = 11),
  'Graphing Sine Functions Topic Guide', 'Graph y = sin x and transformations',
  'GRAPHING SINE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing sine functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing sine functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing sine functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing sine functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing sine functions

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
- Accurately solves problems involving graphing sine functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Sine Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 12
-- ============================================================================

-- Graphing Cosine Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Cosine Functions' AND grade_level_min = 11),
  'Graphing Cosine Functions Topic Guide', 'Graph y = cos x and transformations',
  'GRAPHING COSINE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing cosine functions
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing cosine functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing cosine functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing cosine functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing cosine functions

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
- Accurately solves problems involving graphing cosine functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Cosine Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Graphing Tangent Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Tangent Functions' AND grade_level_min = 11),
  'Graphing Tangent Functions Topic Guide', 'Graph y = tan x',
  'GRAPHING TANGENT FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing tangent functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing tangent functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing tangent functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing tangent functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing tangent functions

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
- Accurately solves problems involving graphing tangent functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Tangent Functions' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Amplitude and Period
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Amplitude and Period' AND grade_level_min = 11),
  'Amplitude and Period Topic Guide', 'Identify amplitude and period',
  'AMPLITUDE AND PERIOD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to amplitude and period
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect amplitude and period to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of amplitude and period
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning amplitude and period
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about amplitude and period

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
- Accurately solves problems involving amplitude and period
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Amplitude and Period' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Phase Shift
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Phase Shift' AND grade_level_min = 11),
  'Phase Shift Topic Guide', 'Apply horizontal shifts',
  'PHASE SHIFT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to phase shift
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect phase shift to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of phase shift
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning phase shift
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about phase shift

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
- Accurately solves problems involving phase shift
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Phase Shift' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Pythagorean Identities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Identities' AND grade_level_min = 11),
  'Pythagorean Identities Topic Guide', 'Use Pythagorean identities',
  'PYTHAGOREAN IDENTITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to pythagorean identities
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect pythagorean identities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of pythagorean identities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning pythagorean identities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about pythagorean identities

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
- Accurately solves problems involving pythagorean identities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Identities' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Reciprocal Identities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reciprocal Identities' AND grade_level_min = 11),
  'Reciprocal Identities Topic Guide', 'Use reciprocal identities',
  'RECIPROCAL IDENTITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to reciprocal identities
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect reciprocal identities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of reciprocal identities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning reciprocal identities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about reciprocal identities

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
- Accurately solves problems involving reciprocal identities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reciprocal Identities' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

-- Solving Trig Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Trig Equations' AND grade_level_min = 11),
  'Solving Trig Equations Topic Guide', 'Solve basic trig equations',
  'SOLVING TRIG EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 11 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving trig equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving trig equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving trig equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving trig equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving trig equations

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
- Accurately solves problems involving solving trig equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Trig Equations' AND grade_level_min = 11)
ON CONFLICT DO NOTHING;

