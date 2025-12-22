-- Grade 12 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for Grade 12 Math topics
-- ============================================================================

-- ============================================================================
-- SECTION 1
-- ============================================================================

-- Function Families
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Families' AND grade_level_min = 12),
  'Function Families Topic Guide', 'Review all function types',
  'FUNCTION FAMILIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to function families
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect function families to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of function families
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning function families
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about function families

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
- Accurately solves problems involving function families
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Families' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Domain and Range
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 12),
  'Domain and Range Topic Guide', 'Find domain and range of all function types',
  'DOMAIN AND RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Domain and Range' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Function Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Transformations' AND grade_level_min = 12),
  'Function Transformations Topic Guide', 'Apply translations, reflections, stretches',
  'FUNCTION TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to function transformations
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect function transformations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of function transformations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning function transformations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about function transformations

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
- Accurately solves problems involving function transformations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Transformations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Function Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Operations' AND grade_level_min = 12),
  'Function Operations Topic Guide', 'Perform operations with functions',
  'FUNCTION OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about function operations

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
- Accurately solves problems involving function operations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Operations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Composition of Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composition of Functions' AND grade_level_min = 12),
  'Composition of Functions Topic Guide', 'Compose functions',
  'COMPOSITION OF FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to composition of functions
2. Apply core techniques to solve problems
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about composition of functions

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
- Accurately solves problems involving composition of functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composition of Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Inverse Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 12),
  'Inverse Functions Topic Guide', 'Find inverses algebraically and graphically',
  'INVERSE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to inverse functions
2. Apply core techniques to solve problems
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inverse functions

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
- Accurately solves problems involving inverse functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Verifying Inverses
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Verifying Inverses' AND grade_level_min = 12),
  'Verifying Inverses Topic Guide', 'Verify inverse using composition',
  'VERIFYING INVERSES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to verifying inverses
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect verifying inverses to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of verifying inverses
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning verifying inverses
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about verifying inverses

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
- Accurately solves problems involving verifying inverses
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Verifying Inverses' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Piecewise Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Piecewise Functions' AND grade_level_min = 12),
  'Piecewise Functions Topic Guide', 'Graph and evaluate piecewise functions',
  'PIECEWISE FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Piecewise Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Even and Odd Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Even and Odd Functions' AND grade_level_min = 12),
  'Even and Odd Functions Topic Guide', 'Identify function symmetry',
  'EVEN AND ODD FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
1. HOOK (3 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about even and odd functions

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
- Accurately solves problems involving even and odd functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Even and Odd Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- End Behavior
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'End Behavior' AND grade_level_min = 12),
  'End Behavior Topic Guide', 'Analyze end behavior of functions',
  'END BEHAVIOR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about end behavior

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
- Accurately solves problems involving end behavior
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'End Behavior' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Rates of Change
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rates of Change' AND grade_level_min = 12),
  'Rates of Change Topic Guide', 'Calculate and interpret rates of change',
  'RATES OF CHANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rates of change
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rates of change to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rates of change
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rates of change
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rates of change

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
- Accurately solves problems involving rates of change
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rates of Change' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Polynomial Functions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Functions Review' AND grade_level_min = 12),
  'Polynomial Functions Review Topic Guide', 'Review polynomial concepts',
  'POLYNOMIAL FUNCTIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polynomial functions review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polynomial functions review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polynomial functions review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polynomial functions review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polynomial functions review

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
- Accurately solves problems involving polynomial functions review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Functions Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 2
-- ============================================================================

-- Zeros and Multiplicity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Zeros and Multiplicity' AND grade_level_min = 12),
  'Zeros and Multiplicity Topic Guide', 'Analyze zeros and their multiplicity',
  'ZEROS AND MULTIPLICITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to zeros and multiplicity
2. Apply core techniques to solve problems
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about zeros and multiplicity

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
- Accurately solves problems involving zeros and multiplicity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Zeros and Multiplicity' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Graphing Polynomials
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Polynomials' AND grade_level_min = 12),
  'Graphing Polynomials Topic Guide', 'Sketch polynomial graphs',
  'GRAPHING POLYNOMIALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing polynomials
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing polynomials to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing polynomials
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing polynomials
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing polynomials

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
- Accurately solves problems involving graphing polynomials
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Polynomials' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Polynomial Division
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Division' AND grade_level_min = 12),
  'Polynomial Division Topic Guide', 'Perform long and synthetic division',
  'POLYNOMIAL DIVISION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polynomial division
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polynomial division to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polynomial division
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polynomial division
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polynomial division

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
- Accurately solves problems involving polynomial division
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Division' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Remainder and Factor Theorems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Remainder and Factor Theorems' AND grade_level_min = 12),
  'Remainder and Factor Theorems Topic Guide', 'Apply theorems to find zeros',
  'REMAINDER AND FACTOR THEOREMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to remainder and factor theorems
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect remainder and factor theorems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of remainder and factor theorems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning remainder and factor theorems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about remainder and factor theorems

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
- Accurately solves problems involving remainder and factor theorems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Remainder and Factor Theorems' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Complex Zeros
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complex Zeros' AND grade_level_min = 12),
  'Complex Zeros Topic Guide', 'Find complex zeros of polynomials',
  'COMPLEX ZEROS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to complex zeros
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect complex zeros to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of complex zeros
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning complex zeros
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about complex zeros

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
- Accurately solves problems involving complex zeros
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Zeros' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Fundamental Theorem of Algebra
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fundamental Theorem of Algebra' AND grade_level_min = 12),
  'Fundamental Theorem of Algebra Topic Guide', 'Apply fundamental theorem',
  'FUNDAMENTAL THEOREM OF ALGEBRA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to fundamental theorem of algebra
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect fundamental theorem of algebra to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of fundamental theorem of algebra
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning fundamental theorem of algebra
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about fundamental theorem of algebra

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
- Accurately solves problems involving fundamental theorem of algebra
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fundamental Theorem of Algebra' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Rational Functions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Functions Review' AND grade_level_min = 12),
  'Rational Functions Review Topic Guide', 'Review rational function concepts',
  'RATIONAL FUNCTIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rational functions review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rational functions review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rational functions review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rational functions review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rational functions review

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
- Accurately solves problems involving rational functions review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Functions Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Asymptotes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Asymptotes' AND grade_level_min = 12),
  'Asymptotes Topic Guide', 'Find all types of asymptotes',
  'ASYMPTOTES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to asymptotes
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect asymptotes to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of asymptotes
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning asymptotes
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about asymptotes

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
- Accurately solves problems involving asymptotes
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Asymptotes' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Graphing Rational Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Rational Functions' AND grade_level_min = 12),
  'Graphing Rational Functions Topic Guide', 'Graph with asymptotes and intercepts',
  'GRAPHING RATIONAL FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
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
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing rational functions

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
- Accurately solves problems involving graphing rational functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Rational Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Polynomial Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polynomial Inequalities' AND grade_level_min = 12),
  'Polynomial Inequalities Topic Guide', 'Solve polynomial inequalities',
  'POLYNOMIAL INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
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
- Accurately solves problems involving polynomial inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polynomial Inequalities' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Rational Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Inequalities' AND grade_level_min = 12),
  'Rational Inequalities Topic Guide', 'Solve rational inequalities',
  'RATIONAL INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to rational inequalities
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect rational inequalities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of rational inequalities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning rational inequalities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about rational inequalities

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
- Accurately solves problems involving rational inequalities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Inequalities' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Partial Fraction Decomposition
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Partial Fraction Decomposition' AND grade_level_min = 12),
  'Partial Fraction Decomposition Topic Guide', 'Decompose rational expressions',
  'PARTIAL FRACTION DECOMPOSITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to partial fraction decomposition
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect partial fraction decomposition to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of partial fraction decomposition
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning partial fraction decomposition
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about partial fraction decomposition

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
- Accurately solves problems involving partial fraction decomposition
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Partial Fraction Decomposition' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 3
-- ============================================================================

-- Exponential Functions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Functions Review' AND grade_level_min = 12),
  'Exponential Functions Review Topic Guide', 'Review exponential function concepts',
  'EXPONENTIAL FUNCTIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Functions Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Natural Exponential Function
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Natural Exponential Function' AND grade_level_min = 12),
  'Natural Exponential Function Topic Guide', 'Work with e and natural exponential',
  'NATURAL EXPONENTIAL FUNCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to natural exponential function
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect natural exponential function to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of natural exponential function
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning natural exponential function
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about natural exponential function

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
- Accurately solves problems involving natural exponential function
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Exponential Function' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Logarithmic Functions Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Logarithmic Functions Review' AND grade_level_min = 12),
  'Logarithmic Functions Review Topic Guide', 'Review logarithm concepts',
  'LOGARITHMIC FUNCTIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to logarithmic functions review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect logarithmic functions review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of logarithmic functions review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning logarithmic functions review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about logarithmic functions review

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
- Accurately solves problems involving logarithmic functions review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logarithmic Functions Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Natural Logarithm
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Natural Logarithm' AND grade_level_min = 12),
  'Natural Logarithm Topic Guide', 'Work with ln',
  'NATURAL LOGARITHM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to natural logarithm
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect natural logarithm to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of natural logarithm
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning natural logarithm
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about natural logarithm

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
- Accurately solves problems involving natural logarithm
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Natural Logarithm' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Properties of Logarithms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Logarithms' AND grade_level_min = 12),
  'Properties of Logarithms Topic Guide', 'Apply all log properties',
  'PROPERTIES OF LOGARITHMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to properties of logarithms
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect properties of logarithms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of properties of logarithms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning properties of logarithms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about properties of logarithms

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
- Accurately solves problems involving properties of logarithms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Logarithms' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Expanding and Condensing Logs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Expanding and Condensing Logs' AND grade_level_min = 12),
  'Expanding and Condensing Logs Topic Guide', 'Rewrite using properties',
  'EXPANDING AND CONDENSING LOGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to expanding and condensing logs
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect expanding and condensing logs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of expanding and condensing logs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning expanding and condensing logs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about expanding and condensing logs

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
- Accurately solves problems involving expanding and condensing logs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Expanding and Condensing Logs' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Change of Base
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Change of Base' AND grade_level_min = 12),
  'Change of Base Topic Guide', 'Apply change of base formula',
  'CHANGE OF BASE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to change of base
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect change of base to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of change of base
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning change of base
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about change of base

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
- Accurately solves problems involving change of base
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Change of Base' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Exponential Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Equations' AND grade_level_min = 12),
  'Exponential Equations Topic Guide', 'Solve using logs',
  'EXPONENTIAL EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential equations

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
- Accurately solves problems involving exponential equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Equations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Logarithmic Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Logarithmic Equations' AND grade_level_min = 12),
  'Logarithmic Equations Topic Guide', 'Solve equations with logs',
  'LOGARITHMIC EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to logarithmic equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect logarithmic equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of logarithmic equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning logarithmic equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about logarithmic equations

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
- Accurately solves problems involving logarithmic equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logarithmic Equations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Exponential Growth and Decay
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exponential Growth and Decay' AND grade_level_min = 12),
  'Exponential Growth and Decay Topic Guide', 'Model real situations',
  'EXPONENTIAL GROWTH AND DECAY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to exponential growth and decay
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect exponential growth and decay to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of exponential growth and decay
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning exponential growth and decay
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about exponential growth and decay

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
- Accurately solves problems involving exponential growth and decay
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exponential Growth and Decay' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Logistic Growth
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Logistic Growth' AND grade_level_min = 12),
  'Logistic Growth Topic Guide', 'Model with logistic functions',
  'LOGISTIC GROWTH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to logistic growth
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect logistic growth to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of logistic growth
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning logistic growth
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about logistic growth

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
- Accurately solves problems involving logistic growth
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Logistic Growth' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Compound Interest Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Interest Applications' AND grade_level_min = 12),
  'Compound Interest Applications Topic Guide', 'Apply to financial problems',
  'COMPOUND INTEREST APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to compound interest applications
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect compound interest applications to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of compound interest applications
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning compound interest applications
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about compound interest applications

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
- Accurately solves problems involving compound interest applications
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Interest Applications' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 4
-- ============================================================================

-- Angle Measure
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Measure' AND grade_level_min = 12),
  'Angle Measure Topic Guide', 'Work with degrees and radians',
  'ANGLE MEASURE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angle measure
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angle measure to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angle measure
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angle measure
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angle measure

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
- Accurately solves problems involving angle measure
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Measure' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Unit Circle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Circle' AND grade_level_min = 12),
  'Unit Circle Topic Guide', 'Master the unit circle',
  'UNIT CIRCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to unit circle
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect unit circle to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of unit circle
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning unit circle
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about unit circle

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
- Accurately solves problems involving unit circle
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Circle' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Trigonometric Functions of Any Angle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trigonometric Functions of Any Angle' AND grade_level_min = 12),
  'Trigonometric Functions of Any Angle Topic Guide', 'Find trig values for any angle',
  'TRIGONOMETRIC FUNCTIONS OF ANY ANGLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to trigonometric functions of any angle
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect trigonometric functions of any angle to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of trigonometric functions of any angle
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning trigonometric functions of any angle
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about trigonometric functions of any angle

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
- Accurately solves problems involving trigonometric functions of any angle
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trigonometric Functions of Any Angle' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Reference Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reference Angles' AND grade_level_min = 12),
  'Reference Angles Topic Guide', 'Use reference angles effectively',
  'REFERENCE ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reference Angles' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Graphing Sine and Cosine
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Sine and Cosine' AND grade_level_min = 12),
  'Graphing Sine and Cosine Topic Guide', 'Graph with transformations',
  'GRAPHING SINE AND COSINE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing sine and cosine
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing sine and cosine to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing sine and cosine
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing sine and cosine
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing sine and cosine

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
- Accurately solves problems involving graphing sine and cosine
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Sine and Cosine' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Graphing Tangent and Cotangent
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Tangent and Cotangent' AND grade_level_min = 12),
  'Graphing Tangent and Cotangent Topic Guide', 'Graph tan and cot functions',
  'GRAPHING TANGENT AND COTANGENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing tangent and cotangent
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing tangent and cotangent to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing tangent and cotangent
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing tangent and cotangent
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing tangent and cotangent

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
- Accurately solves problems involving graphing tangent and cotangent
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Tangent and Cotangent' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Graphing Secant and Cosecant
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Secant and Cosecant' AND grade_level_min = 12),
  'Graphing Secant and Cosecant Topic Guide', 'Graph sec and csc functions',
  'GRAPHING SECANT AND COSECANT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing secant and cosecant
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing secant and cosecant to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing secant and cosecant
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing secant and cosecant
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing secant and cosecant

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
- Accurately solves problems involving graphing secant and cosecant
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Secant and Cosecant' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Inverse Trigonometric Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inverse Trigonometric Functions' AND grade_level_min = 12),
  'Inverse Trigonometric Functions Topic Guide', 'Evaluate inverse trig functions',
  'INVERSE TRIGONOMETRIC FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about inverse trigonometric functions

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
- Accurately solves problems involving inverse trigonometric functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inverse Trigonometric Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Graphing Inverse Trig Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Inverse Trig Functions' AND grade_level_min = 12),
  'Graphing Inverse Trig Functions Topic Guide', 'Graph arcsin, arccos, arctan',
  'GRAPHING INVERSE TRIG FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to graphing inverse trig functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect graphing inverse trig functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of graphing inverse trig functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning graphing inverse trig functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about graphing inverse trig functions

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
- Accurately solves problems involving graphing inverse trig functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Inverse Trig Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Composition with Inverse Trig
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composition with Inverse Trig' AND grade_level_min = 12),
  'Composition with Inverse Trig Topic Guide', 'Evaluate composite expressions',
  'COMPOSITION WITH INVERSE TRIG - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to composition with inverse trig
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect composition with inverse trig to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of composition with inverse trig
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning composition with inverse trig
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about composition with inverse trig

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
- Accurately solves problems involving composition with inverse trig
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composition with Inverse Trig' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Applications of Trig Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Applications of Trig Functions' AND grade_level_min = 12),
  'Applications of Trig Functions Topic Guide', 'Model periodic behavior',
  'APPLICATIONS OF TRIG FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to applications of trig functions
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect applications of trig functions to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of applications of trig functions
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning applications of trig functions
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about applications of trig functions

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
- Accurately solves problems involving applications of trig functions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Applications of Trig Functions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Fundamental Identities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fundamental Identities' AND grade_level_min = 12),
  'Fundamental Identities Topic Guide', 'Use reciprocal and quotient identities',
  'FUNDAMENTAL IDENTITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to fundamental identities
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect fundamental identities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of fundamental identities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning fundamental identities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about fundamental identities

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
- Accurately solves problems involving fundamental identities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fundamental Identities' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 5
-- ============================================================================

-- Pythagorean Identities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Identities' AND grade_level_min = 12),
  'Pythagorean Identities Topic Guide', 'Apply Pythagorean identities',
  'PYTHAGOREAN IDENTITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Identities' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Verifying Identities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Verifying Identities' AND grade_level_min = 12),
  'Verifying Identities Topic Guide', 'Prove trigonometric identities',
  'VERIFYING IDENTITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to verifying identities
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect verifying identities to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of verifying identities
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning verifying identities
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about verifying identities

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
- Accurately solves problems involving verifying identities
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Verifying Identities' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Sum and Difference Formulas Sine
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sum and Difference Formulas Sine' AND grade_level_min = 12),
  'Sum and Difference Formulas Sine Topic Guide', 'Apply sin(A ± B)',
  'SUM AND DIFFERENCE FORMULAS SINE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sum and difference formulas sine
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sum and difference formulas sine to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sum and difference formulas sine
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sum and difference formulas sine
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sum and difference formulas sine

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
- Accurately solves problems involving sum and difference formulas sine
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sum and Difference Formulas Sine' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Sum and Difference Formulas Cosine
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sum and Difference Formulas Cosine' AND grade_level_min = 12),
  'Sum and Difference Formulas Cosine Topic Guide', 'Apply cos(A ± B)',
  'SUM AND DIFFERENCE FORMULAS COSINE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sum and difference formulas cosine
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sum and difference formulas cosine to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sum and difference formulas cosine
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sum and difference formulas cosine
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sum and difference formulas cosine

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
- Accurately solves problems involving sum and difference formulas cosine
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sum and Difference Formulas Cosine' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Sum and Difference Formulas Tangent
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sum and Difference Formulas Tangent' AND grade_level_min = 12),
  'Sum and Difference Formulas Tangent Topic Guide', 'Apply tan(A ± B)',
  'SUM AND DIFFERENCE FORMULAS TANGENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sum and difference formulas tangent
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sum and difference formulas tangent to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sum and difference formulas tangent
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sum and difference formulas tangent
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sum and difference formulas tangent

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
- Accurately solves problems involving sum and difference formulas tangent
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sum and Difference Formulas Tangent' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Double-Angle Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Double-Angle Formulas' AND grade_level_min = 12),
  'Double-Angle Formulas Topic Guide', 'Apply double-angle identities',
  'DOUBLE-ANGLE FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to double-angle formulas
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect double-angle formulas to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of double-angle formulas
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning double-angle formulas
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about double-angle formulas

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
- Accurately solves problems involving double-angle formulas
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Double-Angle Formulas' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Half-Angle Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Half-Angle Formulas' AND grade_level_min = 12),
  'Half-Angle Formulas Topic Guide', 'Apply half-angle identities',
  'HALF-ANGLE FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to half-angle formulas
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect half-angle formulas to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of half-angle formulas
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning half-angle formulas
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about half-angle formulas

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
- Accurately solves problems involving half-angle formulas
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Half-Angle Formulas' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Power-Reducing Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Power-Reducing Formulas' AND grade_level_min = 12),
  'Power-Reducing Formulas Topic Guide', 'Use power-reducing identities',
  'POWER-REDUCING FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to power-reducing formulas
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect power-reducing formulas to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of power-reducing formulas
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning power-reducing formulas
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about power-reducing formulas

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
- Accurately solves problems involving power-reducing formulas
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Power-Reducing Formulas' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Product-to-Sum Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Product-to-Sum Formulas' AND grade_level_min = 12),
  'Product-to-Sum Formulas Topic Guide', 'Convert products to sums',
  'PRODUCT-TO-SUM FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to product-to-sum formulas
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect product-to-sum formulas to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of product-to-sum formulas
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning product-to-sum formulas
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about product-to-sum formulas

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
- Accurately solves problems involving product-to-sum formulas
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Product-to-Sum Formulas' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Sum-to-Product Formulas
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sum-to-Product Formulas' AND grade_level_min = 12),
  'Sum-to-Product Formulas Topic Guide', 'Convert sums to products',
  'SUM-TO-PRODUCT FORMULAS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sum-to-product formulas
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sum-to-product formulas to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sum-to-product formulas
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sum-to-product formulas
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sum-to-product formulas

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
- Accurately solves problems involving sum-to-product formulas
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sum-to-Product Formulas' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Solving Trig Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Trig Equations' AND grade_level_min = 12),
  'Solving Trig Equations Topic Guide', 'Solve equations using identities',
  'SOLVING TRIG EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
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
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving trig equations

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
- Accurately solves problems involving solving trig equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Trig Equations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Law of Sines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Law of Sines' AND grade_level_min = 12),
  'Law of Sines Topic Guide', 'Apply law of sines',
  'LAW OF SINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to law of sines
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect law of sines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of law of sines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning law of sines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about law of sines

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
- Accurately solves problems involving law of sines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Law of Sines' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 6
-- ============================================================================

-- Ambiguous Case
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ambiguous Case' AND grade_level_min = 12),
  'Ambiguous Case Topic Guide', 'Analyze ambiguous case (SSA)',
  'AMBIGUOUS CASE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to ambiguous case
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect ambiguous case to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of ambiguous case
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning ambiguous case
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about ambiguous case

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
- Accurately solves problems involving ambiguous case
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ambiguous Case' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Law of Cosines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Law of Cosines' AND grade_level_min = 12),
  'Law of Cosines Topic Guide', 'Apply law of cosines',
  'LAW OF COSINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to law of cosines
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect law of cosines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of law of cosines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning law of cosines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about law of cosines

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
- Accurately solves problems involving law of cosines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Law of Cosines' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Choosing Law of Sines or Cosines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Choosing Law of Sines or Cosines' AND grade_level_min = 12),
  'Choosing Law of Sines or Cosines Topic Guide', 'Select appropriate law',
  'CHOOSING LAW OF SINES OR COSINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to choosing law of sines or cosines
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect choosing law of sines or cosines to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of choosing law of sines or cosines
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning choosing law of sines or cosines
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about choosing law of sines or cosines

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
- Accurately solves problems involving choosing law of sines or cosines
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Choosing Law of Sines or Cosines' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Solving Oblique Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Oblique Triangles' AND grade_level_min = 12),
  'Solving Oblique Triangles Topic Guide', 'Solve any triangle',
  'SOLVING OBLIQUE TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to solving oblique triangles
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect solving oblique triangles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of solving oblique triangles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning solving oblique triangles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about solving oblique triangles

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
- Accurately solves problems involving solving oblique triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Oblique Triangles' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Area of Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 12),
  'Area of Triangles Topic Guide', 'Find area using trig',
  'AREA OF TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about area of triangles

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
- Accurately solves problems involving area of triangles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Navigation Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Navigation Problems' AND grade_level_min = 12),
  'Navigation Problems Topic Guide', 'Apply to navigation',
  'NAVIGATION PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to navigation problems
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect navigation problems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of navigation problems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning navigation problems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about navigation problems

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
- Accurately solves problems involving navigation problems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Navigation Problems' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Surveying Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surveying Problems' AND grade_level_min = 12),
  'Surveying Problems Topic Guide', 'Apply to surveying',
  'SURVEYING PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to surveying problems
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect surveying problems to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of surveying problems
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning surveying problems
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about surveying problems

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
- Accurately solves problems involving surveying problems
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surveying Problems' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Simple Harmonic Motion
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simple Harmonic Motion' AND grade_level_min = 12),
  'Simple Harmonic Motion Topic Guide', 'Model harmonic motion',
  'SIMPLE HARMONIC MOTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to simple harmonic motion
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect simple harmonic motion to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of simple harmonic motion
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning simple harmonic motion
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about simple harmonic motion

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
- Accurately solves problems involving simple harmonic motion
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simple Harmonic Motion' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Polar Coordinate System
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polar Coordinate System' AND grade_level_min = 12),
  'Polar Coordinate System Topic Guide', 'Understand polar coordinates',
  'POLAR COORDINATE SYSTEM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polar coordinate system
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polar coordinate system to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polar coordinate system
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polar coordinate system
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polar coordinate system

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
- Accurately solves problems involving polar coordinate system
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polar Coordinate System' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Plotting Polar Points
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Plotting Polar Points' AND grade_level_min = 12),
  'Plotting Polar Points Topic Guide', 'Plot points in polar form',
  'PLOTTING POLAR POINTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to plotting polar points
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect plotting polar points to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of plotting polar points
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning plotting polar points
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about plotting polar points

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
- Accurately solves problems involving plotting polar points
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Plotting Polar Points' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Converting Rectangular to Polar
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converting Rectangular to Polar' AND grade_level_min = 12),
  'Converting Rectangular to Polar Topic Guide', 'Convert coordinates',
  'CONVERTING RECTANGULAR TO POLAR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to converting rectangular to polar
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect converting rectangular to polar to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of converting rectangular to polar
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning converting rectangular to polar
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about converting rectangular to polar

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
- Accurately solves problems involving converting rectangular to polar
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converting Rectangular to Polar' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Converting Polar to Rectangular
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converting Polar to Rectangular' AND grade_level_min = 12),
  'Converting Polar to Rectangular Topic Guide', 'Convert coordinates',
  'CONVERTING POLAR TO RECTANGULAR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to converting polar to rectangular
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect converting polar to rectangular to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of converting polar to rectangular
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning converting polar to rectangular
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about converting polar to rectangular

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
- Accurately solves problems involving converting polar to rectangular
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converting Polar to Rectangular' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 7
-- ============================================================================

-- Polar Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polar Equations' AND grade_level_min = 12),
  'Polar Equations Topic Guide', 'Graph polar equations',
  'POLAR EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polar equations
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polar equations to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polar equations
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polar equations
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polar equations

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
- Accurately solves problems involving polar equations
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polar Equations' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Polar Graphs Types
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polar Graphs Types' AND grade_level_min = 12),
  'Polar Graphs Types Topic Guide', 'Identify roses, limacons, cardioids',
  'POLAR GRAPHS TYPES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polar graphs types
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polar graphs types to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polar graphs types
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polar graphs types
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polar graphs types

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
- Accurately solves problems involving polar graphs types
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polar Graphs Types' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Complex Numbers Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complex Numbers Review' AND grade_level_min = 12),
  'Complex Numbers Review Topic Guide', 'Review complex number operations',
  'COMPLEX NUMBERS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to complex numbers review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect complex numbers review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of complex numbers review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning complex numbers review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about complex numbers review

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
- Accurately solves problems involving complex numbers review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Numbers Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Complex Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complex Plane' AND grade_level_min = 12),
  'Complex Plane Topic Guide', 'Plot complex numbers',
  'COMPLEX PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to complex plane
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect complex plane to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of complex plane
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning complex plane
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about complex plane

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
- Accurately solves problems involving complex plane
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Plane' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Polar Form of Complex Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polar Form of Complex Numbers' AND grade_level_min = 12),
  'Polar Form of Complex Numbers Topic Guide', 'Write in polar/trigonometric form',
  'POLAR FORM OF COMPLEX NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to polar form of complex numbers
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect polar form of complex numbers to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of polar form of complex numbers
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning polar form of complex numbers
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about polar form of complex numbers

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
- Accurately solves problems involving polar form of complex numbers
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polar Form of Complex Numbers' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Products and Quotients in Polar Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Products and Quotients in Polar Form' AND grade_level_min = 12),
  'Products and Quotients in Polar Form Topic Guide', 'Multiply and divide in polar form',
  'PRODUCTS AND QUOTIENTS IN POLAR FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to products and quotients in polar form
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect products and quotients in polar form to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of products and quotients in polar form
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning products and quotients in polar form
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about products and quotients in polar form

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
- Accurately solves problems involving products and quotients in polar form
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Products and Quotients in Polar Form' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Roots of Complex Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Roots of Complex Numbers' AND grade_level_min = 12),
  'Roots of Complex Numbers Topic Guide', 'Find nth roots',
  'ROOTS OF COMPLEX NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to roots of complex numbers
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect roots of complex numbers to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of roots of complex numbers
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning roots of complex numbers
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about roots of complex numbers

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
- Accurately solves problems involving roots of complex numbers
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Roots of Complex Numbers' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Introduction to Vectors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Vectors' AND grade_level_min = 12),
  'Introduction to Vectors Topic Guide', 'Understand vector concepts',
  'INTRODUCTION TO VECTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to introduction to vectors
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect introduction to vectors to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of introduction to vectors
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning introduction to vectors
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about introduction to vectors

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
- Accurately solves problems involving introduction to vectors
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Vectors' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Vector Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vector Notation' AND grade_level_min = 12),
  'Vector Notation Topic Guide', 'Use component and unit vector notation',
  'VECTOR NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to vector notation
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect vector notation to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of vector notation
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning vector notation
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about vector notation

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
- Accurately solves problems involving vector notation
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vector Notation' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Vector Addition and Subtraction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vector Addition and Subtraction' AND grade_level_min = 12),
  'Vector Addition and Subtraction Topic Guide', 'Add and subtract vectors',
  'VECTOR ADDITION AND SUBTRACTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to vector addition and subtraction
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect vector addition and subtraction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of vector addition and subtraction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning vector addition and subtraction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about vector addition and subtraction

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
- Accurately solves problems involving vector addition and subtraction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vector Addition and Subtraction' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Scalar Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scalar Multiplication' AND grade_level_min = 12),
  'Scalar Multiplication Topic Guide', 'Multiply vectors by scalars',
  'SCALAR MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to scalar multiplication
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect scalar multiplication to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of scalar multiplication
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning scalar multiplication
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about scalar multiplication

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
- Accurately solves problems involving scalar multiplication
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scalar Multiplication' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Vector Magnitude
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vector Magnitude' AND grade_level_min = 12),
  'Vector Magnitude Topic Guide', 'Find magnitude of vectors',
  'VECTOR MAGNITUDE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to vector magnitude
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect vector magnitude to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of vector magnitude
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning vector magnitude
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about vector magnitude

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
- Accurately solves problems involving vector magnitude
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vector Magnitude' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 8
-- ============================================================================

-- Unit Vectors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Vectors' AND grade_level_min = 12),
  'Unit Vectors Topic Guide', 'Find and use unit vectors',
  'UNIT VECTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to unit vectors
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect unit vectors to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of unit vectors
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning unit vectors
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about unit vectors

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
- Accurately solves problems involving unit vectors
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Vectors' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Direction Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Direction Angles' AND grade_level_min = 12),
  'Direction Angles Topic Guide', 'Find direction angles',
  'DIRECTION ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to direction angles
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect direction angles to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of direction angles
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning direction angles
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about direction angles

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
- Accurately solves problems involving direction angles
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Direction Angles' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Dot Product
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dot Product' AND grade_level_min = 12),
  'Dot Product Topic Guide', 'Calculate dot products',
  'DOT PRODUCT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to dot product
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect dot product to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of dot product
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning dot product
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about dot product

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
- Accurately solves problems involving dot product
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dot Product' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Angle Between Vectors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Between Vectors' AND grade_level_min = 12),
  'Angle Between Vectors Topic Guide', 'Find angle using dot product',
  'ANGLE BETWEEN VECTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to angle between vectors
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect angle between vectors to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of angle between vectors
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning angle between vectors
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about angle between vectors

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
- Accurately solves problems involving angle between vectors
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Between Vectors' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Orthogonal Vectors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Orthogonal Vectors' AND grade_level_min = 12),
  'Orthogonal Vectors Topic Guide', 'Identify perpendicular vectors',
  'ORTHOGONAL VECTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to orthogonal vectors
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect orthogonal vectors to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of orthogonal vectors
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning orthogonal vectors
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about orthogonal vectors

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
- Accurately solves problems involving orthogonal vectors
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Orthogonal Vectors' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Vector Projections
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vector Projections' AND grade_level_min = 12),
  'Vector Projections Topic Guide', 'Find projections of vectors',
  'VECTOR PROJECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to vector projections
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect vector projections to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of vector projections
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning vector projections
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about vector projections

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
- Accurately solves problems involving vector projections
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vector Projections' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Applications of Vectors
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Applications of Vectors' AND grade_level_min = 12),
  'Applications of Vectors Topic Guide', 'Apply to physics problems',
  'APPLICATIONS OF VECTORS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to applications of vectors
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect applications of vectors to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of applications of vectors
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning applications of vectors
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about applications of vectors

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
- Accurately solves problems involving applications of vectors
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Applications of Vectors' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Vectors in 3D
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vectors in 3D' AND grade_level_min = 12),
  'Vectors in 3D Topic Guide', 'Extend to three dimensions',
  'VECTORS IN 3D - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to vectors in 3d
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect vectors in 3d to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of vectors in 3d
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning vectors in 3d
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about vectors in 3d

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
- Accurately solves problems involving vectors in 3d
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vectors in 3D' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Introduction to Conics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Conics' AND grade_level_min = 12),
  'Introduction to Conics Topic Guide', 'Understand conic sections',
  'INTRODUCTION TO CONICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to introduction to conics
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect introduction to conics to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of introduction to conics
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning introduction to conics
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about introduction to conics

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
- Accurately solves problems involving introduction to conics
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Conics' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Parabolas Vertex at Origin
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parabolas Vertex at Origin' AND grade_level_min = 12),
  'Parabolas Vertex at Origin Topic Guide', 'Graph and write parabola equations',
  'PARABOLAS VERTEX AT ORIGIN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to parabolas vertex at origin
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect parabolas vertex at origin to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of parabolas vertex at origin
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning parabolas vertex at origin
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about parabolas vertex at origin

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
- Accurately solves problems involving parabolas vertex at origin
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parabolas Vertex at Origin' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Parabolas Vertex Not at Origin
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parabolas Vertex Not at Origin' AND grade_level_min = 12),
  'Parabolas Vertex Not at Origin Topic Guide', 'Graph translated parabolas',
  'PARABOLAS VERTEX NOT AT ORIGIN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to parabolas vertex not at origin
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect parabolas vertex not at origin to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of parabolas vertex not at origin
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning parabolas vertex not at origin
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about parabolas vertex not at origin

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
- Accurately solves problems involving parabolas vertex not at origin
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parabolas Vertex Not at Origin' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Circles Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circles Review' AND grade_level_min = 12),
  'Circles Review Topic Guide', 'Review circle equations',
  'CIRCLES REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to circles review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect circles review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of circles review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning circles review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about circles review

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
- Accurately solves problems involving circles review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circles Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 9
-- ============================================================================

-- Ellipses Center at Origin
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ellipses Center at Origin' AND grade_level_min = 12),
  'Ellipses Center at Origin Topic Guide', 'Graph and write ellipse equations',
  'ELLIPSES CENTER AT ORIGIN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to ellipses center at origin
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect ellipses center at origin to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of ellipses center at origin
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning ellipses center at origin
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about ellipses center at origin

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
- Accurately solves problems involving ellipses center at origin
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ellipses Center at Origin' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Ellipses Center Not at Origin
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ellipses Center Not at Origin' AND grade_level_min = 12),
  'Ellipses Center Not at Origin Topic Guide', 'Graph translated ellipses',
  'ELLIPSES CENTER NOT AT ORIGIN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to ellipses center not at origin
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect ellipses center not at origin to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of ellipses center not at origin
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning ellipses center not at origin
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about ellipses center not at origin

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
- Accurately solves problems involving ellipses center not at origin
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ellipses Center Not at Origin' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Hyperbolas Center at Origin
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Hyperbolas Center at Origin' AND grade_level_min = 12),
  'Hyperbolas Center at Origin Topic Guide', 'Graph and write hyperbola equations',
  'HYPERBOLAS CENTER AT ORIGIN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to hyperbolas center at origin
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect hyperbolas center at origin to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of hyperbolas center at origin
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning hyperbolas center at origin
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about hyperbolas center at origin

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
- Accurately solves problems involving hyperbolas center at origin
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Hyperbolas Center at Origin' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Hyperbolas Center Not at Origin
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Hyperbolas Center Not at Origin' AND grade_level_min = 12),
  'Hyperbolas Center Not at Origin Topic Guide', 'Graph translated hyperbolas',
  'HYPERBOLAS CENTER NOT AT ORIGIN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to hyperbolas center not at origin
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect hyperbolas center not at origin to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of hyperbolas center not at origin
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning hyperbolas center not at origin
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about hyperbolas center not at origin

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
- Accurately solves problems involving hyperbolas center not at origin
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Hyperbolas Center Not at Origin' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Identifying Conic Sections
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Identifying Conic Sections' AND grade_level_min = 12),
  'Identifying Conic Sections Topic Guide', 'Identify from general form',
  'IDENTIFYING CONIC SECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to identifying conic sections
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect identifying conic sections to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of identifying conic sections
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning identifying conic sections
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about identifying conic sections

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
- Accurately solves problems involving identifying conic sections
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Identifying Conic Sections' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Eccentricity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Eccentricity' AND grade_level_min = 12),
  'Eccentricity Topic Guide', 'Calculate and interpret eccentricity',
  'ECCENTRICITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to eccentricity
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect eccentricity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of eccentricity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning eccentricity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about eccentricity

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
- Accurately solves problems involving eccentricity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Eccentricity' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Parametric Equations Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parametric Equations Introduction' AND grade_level_min = 12),
  'Parametric Equations Introduction Topic Guide', 'Graph parametric equations',
  'PARAMETRIC EQUATIONS INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to parametric equations introduction
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect parametric equations introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of parametric equations introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning parametric equations introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about parametric equations introduction

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
- Accurately solves problems involving parametric equations introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parametric Equations Introduction' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Conic Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Conic Applications' AND grade_level_min = 12),
  'Conic Applications Topic Guide', 'Apply to real situations',
  'CONIC APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to conic applications
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect conic applications to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of conic applications
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning conic applications
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about conic applications

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
- Accurately solves problems involving conic applications
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conic Applications' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Sequences Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sequences Review' AND grade_level_min = 12),
  'Sequences Review Topic Guide', 'Review sequence concepts',
  'SEQUENCES REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sequences review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sequences review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sequences review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sequences review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sequences review

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
- Accurately solves problems involving sequences review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sequences Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Arithmetic Sequences and Series
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arithmetic Sequences and Series' AND grade_level_min = 12),
  'Arithmetic Sequences and Series Topic Guide', 'Work with arithmetic sequences',
  'ARITHMETIC SEQUENCES AND SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to arithmetic sequences and series
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect arithmetic sequences and series to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of arithmetic sequences and series
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning arithmetic sequences and series
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about arithmetic sequences and series

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
- Accurately solves problems involving arithmetic sequences and series
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arithmetic Sequences and Series' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Geometric Sequences and Series
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Geometric Sequences and Series' AND grade_level_min = 12),
  'Geometric Sequences and Series Topic Guide', 'Work with geometric sequences',
  'GEOMETRIC SEQUENCES AND SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to geometric sequences and series
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect geometric sequences and series to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of geometric sequences and series
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning geometric sequences and series
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about geometric sequences and series

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
- Accurately solves problems involving geometric sequences and series
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Geometric Sequences and Series' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Infinite Geometric Series
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Infinite Geometric Series' AND grade_level_min = 12),
  'Infinite Geometric Series Topic Guide', 'Find sums of convergent series',
  'INFINITE GEOMETRIC SERIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to infinite geometric series
2. Apply core techniques to solve problems
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
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about infinite geometric series

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
- Accurately solves problems involving infinite geometric series
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Infinite Geometric Series' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 10
-- ============================================================================

-- Sigma Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sigma Notation' AND grade_level_min = 12),
  'Sigma Notation Topic Guide', 'Use and evaluate sigma notation',
  'SIGMA NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sigma Notation' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Mathematical Induction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mathematical Induction' AND grade_level_min = 12),
  'Mathematical Induction Topic Guide', 'Prove statements by induction',
  'MATHEMATICAL INDUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to mathematical induction
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect mathematical induction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of mathematical induction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning mathematical induction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (8 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about mathematical induction

2. DIRECT INSTRUCTION (18 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (15 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (10 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving mathematical induction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mathematical Induction' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Binomial Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Binomial Theorem' AND grade_level_min = 12),
  'Binomial Theorem Topic Guide', 'Expand binomials',
  'BINOMIAL THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to binomial theorem
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect binomial theorem to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of binomial theorem
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning binomial theorem
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about binomial theorem

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
- Accurately solves problems involving binomial theorem
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Binomial Theorem' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Finding Specific Terms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Specific Terms' AND grade_level_min = 12),
  'Finding Specific Terms Topic Guide', 'Find specific terms in expansions',
  'FINDING SPECIFIC TERMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to finding specific terms
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect finding specific terms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of finding specific terms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning finding specific terms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about finding specific terms

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
- Accurately solves problems involving finding specific terms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Specific Terms' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Sequences and Limits
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sequences and Limits' AND grade_level_min = 12),
  'Sequences and Limits Topic Guide', 'Understand limits of sequences',
  'SEQUENCES AND LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to sequences and limits
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect sequences and limits to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of sequences and limits
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning sequences and limits
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sequences and limits

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
- Accurately solves problems involving sequences and limits
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sequences and Limits' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Understanding Limits
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Limits' AND grade_level_min = 12),
  'Understanding Limits Topic Guide', 'Conceptual understanding of limits',
  'UNDERSTANDING LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to understanding limits
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect understanding limits to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of understanding limits
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning understanding limits
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about understanding limits

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
- Accurately solves problems involving understanding limits
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Limits' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Limits from Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Limits from Graphs' AND grade_level_min = 12),
  'Limits from Graphs Topic Guide', 'Find limits graphically',
  'LIMITS FROM GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to limits from graphs
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect limits from graphs to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of limits from graphs
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning limits from graphs
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about limits from graphs

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
- Accurately solves problems involving limits from graphs
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limits from Graphs' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Limits from Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Limits from Tables' AND grade_level_min = 12),
  'Limits from Tables Topic Guide', 'Find limits numerically',
  'LIMITS FROM TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to limits from tables
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect limits from tables to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of limits from tables
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning limits from tables
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about limits from tables

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
- Accurately solves problems involving limits from tables
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limits from Tables' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- One-Sided Limits
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One-Sided Limits' AND grade_level_min = 12),
  'One-Sided Limits Topic Guide', 'Evaluate left and right limits',
  'ONE-SIDED LIMITS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to one-sided limits
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect one-sided limits to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of one-sided limits
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning one-sided limits
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about one-sided limits

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
- Accurately solves problems involving one-sided limits
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One-Sided Limits' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Limits That Do Not Exist
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Limits That Do Not Exist' AND grade_level_min = 12),
  'Limits That Do Not Exist Topic Guide', 'Identify when limits fail to exist',
  'LIMITS THAT DO NOT EXIST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to limits that do not exist
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect limits that do not exist to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of limits that do not exist
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning limits that do not exist
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about limits that do not exist

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
- Accurately solves problems involving limits that do not exist
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limits That Do Not Exist' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Limits at Infinity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Limits at Infinity' AND grade_level_min = 12),
  'Limits at Infinity Topic Guide', 'Evaluate limits as x → ∞',
  'LIMITS AT INFINITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to limits at infinity
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect limits at infinity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of limits at infinity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning limits at infinity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about limits at infinity

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
- Accurately solves problems involving limits at infinity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Limits at Infinity' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Evaluating Limits Algebraically
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Evaluating Limits Algebraically' AND grade_level_min = 12),
  'Evaluating Limits Algebraically Topic Guide', 'Use algebra to find limits',
  'EVALUATING LIMITS ALGEBRAICALLY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to evaluating limits algebraically
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect evaluating limits algebraically to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of evaluating limits algebraically
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning evaluating limits algebraically
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about evaluating limits algebraically

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
- Accurately solves problems involving evaluating limits algebraically
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Limits Algebraically' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 11
-- ============================================================================

-- Indeterminate Forms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Indeterminate Forms' AND grade_level_min = 12),
  'Indeterminate Forms Topic Guide', 'Recognize 0/0 and other forms',
  'INDETERMINATE FORMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to indeterminate forms
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect indeterminate forms to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of indeterminate forms
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning indeterminate forms
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about indeterminate forms

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
- Accurately solves problems involving indeterminate forms
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Indeterminate Forms' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Continuity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Continuity' AND grade_level_min = 12),
  'Continuity Topic Guide', 'Determine if functions are continuous',
  'CONTINUITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to continuity
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect continuity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of continuity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning continuity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about continuity

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
- Accurately solves problems involving continuity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Continuity' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Types of Discontinuity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Types of Discontinuity' AND grade_level_min = 12),
  'Types of Discontinuity Topic Guide', 'Identify types of discontinuity',
  'TYPES OF DISCONTINUITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to types of discontinuity
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect types of discontinuity to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of types of discontinuity
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning types of discontinuity
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about types of discontinuity

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
- Accurately solves problems involving types of discontinuity
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Discontinuity' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Introduction to Derivatives
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Derivatives' AND grade_level_min = 12),
  'Introduction to Derivatives Topic Guide', 'Preview derivative concept',
  'INTRODUCTION TO DERIVATIVES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to introduction to derivatives
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect introduction to derivatives to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of introduction to derivatives
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning introduction to derivatives
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about introduction to derivatives

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
- Accurately solves problems involving introduction to derivatives
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Derivatives' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Permutations and Combinations Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Permutations and Combinations Review' AND grade_level_min = 12),
  'Permutations and Combinations Review Topic Guide', 'Review counting principles',
  'PERMUTATIONS AND COMBINATIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to permutations and combinations review
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect permutations and combinations review to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of permutations and combinations review
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning permutations and combinations review
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (4 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about permutations and combinations review

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
- Accurately solves problems involving permutations and combinations review
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Permutations and Combinations Review' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Probability Rules
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability Rules' AND grade_level_min = 12),
  'Probability Rules Topic Guide', 'Apply probability rules',
  'PROBABILITY RULES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to probability rules
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect probability rules to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of probability rules
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning probability rules
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about probability rules

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
- Accurately solves problems involving probability rules
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability Rules' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Conditional Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Conditional Probability' AND grade_level_min = 12),
  'Conditional Probability Topic Guide', 'Calculate conditional probability',
  'CONDITIONAL PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Conditional Probability' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Independent and Dependent Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Independent and Dependent Events' AND grade_level_min = 12),
  'Independent and Dependent Events Topic Guide', 'Distinguish and calculate',
  'INDEPENDENT AND DEPENDENT EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to independent and dependent events
2. Apply core techniques to solve problems
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
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Independent and Dependent Events' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Binomial Distribution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Binomial Distribution' AND grade_level_min = 12),
  'Binomial Distribution Topic Guide', 'Apply binomial distribution',
  'BINOMIAL DISTRIBUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Binomial Distribution' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Normal Distribution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Normal Distribution' AND grade_level_min = 12),
  'Normal Distribution Topic Guide', 'Apply normal distribution',
  'NORMAL DISTRIBUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to normal distribution
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect normal distribution to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of normal distribution
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning normal distribution
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (6 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about normal distribution

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
- Accurately solves problems involving normal distribution
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Normal Distribution' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Standard Normal Distribution
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Standard Normal Distribution' AND grade_level_min = 12),
  'Standard Normal Distribution Topic Guide', 'Use z-scores and tables',
  'STANDARD NORMAL DISTRIBUTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Standard Normal Distribution' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Sampling Distributions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sampling Distributions' AND grade_level_min = 12),
  'Sampling Distributions Topic Guide', 'Understand sampling distributions',
  'SAMPLING DISTRIBUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
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
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about sampling distributions

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
- Accurately solves problems involving sampling distributions
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sampling Distributions' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SECTION 12
-- ============================================================================

-- Confidence Intervals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Confidence Intervals' AND grade_level_min = 12),
  'Confidence Intervals Topic Guide', 'Calculate confidence intervals',
  'CONFIDENCE INTERVALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to confidence intervals
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect confidence intervals to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of confidence intervals
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning confidence intervals
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (7 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about confidence intervals

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
- Accurately solves problems involving confidence intervals
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Confidence Intervals' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Hypothesis Testing Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Hypothesis Testing Introduction' AND grade_level_min = 12),
  'Hypothesis Testing Introduction Topic Guide', 'Understand hypothesis testing',
  'HYPOTHESIS TESTING INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 advanced mathematics
- Foundational understanding of related concepts
- Readiness for sophisticated mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to hypothesis testing introduction
2. Apply sophisticated techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect hypothesis testing introduction to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of hypothesis testing introduction
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning hypothesis testing introduction
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (8 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about hypothesis testing introduction

2. DIRECT INSTRUCTION (18 minutes):
   Present core concepts with clear definitions
   Model procedures and problem-solving strategies
   Use multiple representations (visual, numeric, algebraic, verbal)
   Demonstrate worked examples with think-aloud process
   Highlight key properties and relationships

3. GUIDED PRACTICE (15 minutes):
   Work through problems together with gradual release
   Encourage student explanation and justification
   Address misconceptions as they arise
   Provide immediate corrective feedback
   Vary problem types and difficulty

4. INDEPENDENT PRACTICE (10 minutes):
   Students work individually or in pairs
   Apply concepts to varied problem contexts
   Include both procedural and conceptual questions
   Incorporate application and extension problems

DIFFERENTIATION:
For Struggling Learners:
- Provide additional scaffolding and support structures
- Use concrete manipulatives or visual aids
- Break complex problems into smaller steps
- Offer worked examples with annotation
- Allow use of reference materials or formulas sheets

For Advanced Learners:
- Extend to more complex or abstract applications
- Introduce connections to higher-level mathematics
- Provide open-ended investigation tasks
- Encourage multiple solution strategies
- Explore historical or theoretical context

ASSESSMENT INDICATORS:
- Accurately solves problems involving hypothesis testing introduction
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates sophisticated understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Hypothesis Testing Introduction' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

-- Expected Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Expected Value' AND grade_level_min = 12),
  'Expected Value Topic Guide', 'Calculate and interpret expected value',
  'EXPECTED VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge appropriate for Grade 12 standard mathematics
- Foundational understanding of related concepts
- Readiness for core mathematical thinking
- Basic skills from prerequisite units

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand core concepts related to expected value
2. Apply core techniques to solve problems
3. Demonstrate fluency with key procedures and methods
4. Connect expected value to real-world applications

KEY CONCEPTS:
- Primary definition and mathematical meaning of expected value
- Essential properties and relationships
- Key theorems, rules, or formulas applicable to this topic
- Connections to other mathematical concepts
- Real-world contexts and applications

COMMON MISCONCEPTIONS:
- Typical errors students make when learning expected value
- Conceptual misunderstandings that need explicit addressing
- Procedural mistakes to watch for and correct
- Overgeneralizations or incorrect pattern recognition

TEACHING SEQUENCE:
1. HOOK (5 minutes):
   Engage students with a compelling question, problem, or scenario
   Connect to prior knowledge or real-world application
   Create curiosity about expected value

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
- Accurately solves problems involving expected value
- Explains reasoning using appropriate mathematical language
- Applies concepts correctly in varied contexts
- Demonstrates core understanding through explanations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Expected Value' AND grade_level_min = 12)
ON CONFLICT DO NOTHING;

