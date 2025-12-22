-- Grade 8 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade {grade_level} Math topics
-- ============================================================================

-- ============================================================================
-- REAL NUMBERS (10 topics)
-- ============================================================================

-- Rational Numbers Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rational Numbers Review' AND grade_level_min = 8),
  'Rational Numbers Review Topic Guide', 'Review rational number concepts',
  'RATIONAL NUMBERS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for rational numbers review
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Review rational number concepts
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring rational numbers review.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rational Numbers Review' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Irrational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Irrational Numbers' AND grade_level_min = 8),
  'Irrational Numbers Topic Guide', 'Identify and understand irrational numbers',
  'IRRATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for irrational numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify and understand irrational numbers
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring irrational numbers.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Irrational Numbers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Real Number Classification
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Real Number Classification' AND grade_level_min = 8),
  'Real Number Classification Topic Guide', 'Classify numbers as rational or irrational',
  'REAL NUMBER CLASSIFICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for real number classification
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Classify numbers as rational or irrational
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring real number classification.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Real Number Classification' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Square Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Square Roots' AND grade_level_min = 8),
  'Square Roots Topic Guide', 'Find square roots of perfect squares',
  'SQUARE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for square roots
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find square roots of perfect squares
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring square roots.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Square Roots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Estimating Square Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Estimating Square Roots' AND grade_level_min = 8),
  'Estimating Square Roots Topic Guide', 'Estimate square roots of non-perfect squares',
  'ESTIMATING SQUARE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for estimating square roots
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Estimate square roots of non-perfect squares
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring estimating square roots.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Estimating Square Roots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Cube Roots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Cube Roots' AND grade_level_min = 8),
  'Cube Roots Topic Guide', 'Find cube roots',
  'CUBE ROOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for cube roots
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find cube roots
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring cube roots.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cube Roots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Comparing Irrational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Irrational Numbers' AND grade_level_min = 8),
  'Comparing Irrational Numbers Topic Guide', 'Compare and order irrational numbers',
  'COMPARING IRRATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for comparing irrational numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare and order irrational numbers
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring comparing irrational numbers.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Irrational Numbers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Approximating Irrational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Approximating Irrational Numbers' AND grade_level_min = 8),
  'Approximating Irrational Numbers Topic Guide', 'Approximate using decimals',
  'APPROXIMATING IRRATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for approximating irrational numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Approximate using decimals
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring approximating irrational numbers.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Approximating Irrational Numbers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Real Numbers on Number Line
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Real Numbers on Number Line' AND grade_level_min = 8),
  'Real Numbers on Number Line Topic Guide', 'Plot real numbers on number line',
  'REAL NUMBERS ON NUMBER LINE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for real numbers on number line
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Plot real numbers on number line
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring real numbers on number line.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Real Numbers on Number Line' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Operations with Real Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Operations with Real Numbers' AND grade_level_min = 8),
  'Operations with Real Numbers Topic Guide', 'Perform operations with real numbers',
  'OPERATIONS WITH REAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for operations with real numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Perform operations with real numbers
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring operations with real numbers.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Operations with Real Numbers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPONENTS AND SCIENTIFIC NOTATION (14 topics)
-- ============================================================================

-- Integer Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Integer Exponents' AND grade_level_min = 8),
  'Integer Exponents Topic Guide', 'Understand positive and negative exponents',
  'INTEGER EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for integer exponents
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand positive and negative exponents
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring integer exponents.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Integer Exponents' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Zero Exponent
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Zero Exponent' AND grade_level_min = 8),
  'Zero Exponent Topic Guide', 'Understand why a⁰ = 1',
  'ZERO EXPONENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for zero exponent
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand why a⁰ = 1
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring zero exponent.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Zero Exponent' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Negative Exponents
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Negative Exponents' AND grade_level_min = 8),
  'Negative Exponents Topic Guide', 'Convert between negative exponents and fractions',
  'NEGATIVE EXPONENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for negative exponents
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Convert between negative exponents and fractions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring negative exponents.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Negative Exponents' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Product Rule
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Product Rule' AND grade_level_min = 8),
  'Product Rule Topic Guide', 'Multiply expressions with same base',
  'PRODUCT RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for product rule
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Multiply expressions with same base
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring product rule.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Product Rule' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Quotient Rule
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Quotient Rule' AND grade_level_min = 8),
  'Quotient Rule Topic Guide', 'Divide expressions with same base',
  'QUOTIENT RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for quotient rule
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Divide expressions with same base
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring quotient rule.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Quotient Rule' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Power Rule
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Power Rule' AND grade_level_min = 8),
  'Power Rule Topic Guide', 'Raise a power to a power',
  'POWER RULE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for power rule
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Raise a power to a power
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring power rule.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Power Rule' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Combined Exponent Rules
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combined Exponent Rules' AND grade_level_min = 8),
  'Combined Exponent Rules Topic Guide', 'Apply multiple exponent rules',
  'COMBINED EXPONENT RULES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for combined exponent rules
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply multiple exponent rules
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring combined exponent rules.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combined Exponent Rules' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scientific Notation' AND grade_level_min = 8),
  'Scientific Notation Topic Guide', 'Write numbers in scientific notation',
  'SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for scientific notation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write numbers in scientific notation
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring scientific notation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Converting Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converting Scientific Notation' AND grade_level_min = 8),
  'Converting Scientific Notation Topic Guide', 'Convert between forms',
  'CONVERTING SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for converting scientific notation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Convert between forms
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring converting scientific notation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converting Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Comparing in Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing in Scientific Notation' AND grade_level_min = 8),
  'Comparing in Scientific Notation Topic Guide', 'Compare numbers in scientific notation',
  'COMPARING IN SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for comparing in scientific notation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare numbers in scientific notation
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring comparing in scientific notation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing in Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Multiplying in Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying in Scientific Notation' AND grade_level_min = 8),
  'Multiplying in Scientific Notation Topic Guide', 'Multiply numbers in scientific notation',
  'MULTIPLYING IN SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for multiplying in scientific notation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Multiply numbers in scientific notation
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring multiplying in scientific notation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying in Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Dividing in Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing in Scientific Notation' AND grade_level_min = 8),
  'Dividing in Scientific Notation Topic Guide', 'Divide numbers in scientific notation',
  'DIVIDING IN SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for dividing in scientific notation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Divide numbers in scientific notation
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring dividing in scientific notation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing in Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Adding in Scientific Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding in Scientific Notation' AND grade_level_min = 8),
  'Adding in Scientific Notation Topic Guide', 'Add numbers in scientific notation',
  'ADDING IN SCIENTIFIC NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for adding in scientific notation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Add numbers in scientific notation
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring adding in scientific notation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding in Scientific Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Scientific Notation Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scientific Notation Applications' AND grade_level_min = 8),
  'Scientific Notation Applications Topic Guide', 'Apply to real-world problems',
  'SCIENTIFIC NOTATION APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for scientific notation applications
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply to real-world problems
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring scientific notation applications.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scientific Notation Applications' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LINEAR EQUATIONS (12 topics)
-- ============================================================================

-- One-Step Equations Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'One-Step Equations Review' AND grade_level_min = 8),
  'One-Step Equations Review Topic Guide', 'Review solving one-step equations',
  'ONE-STEP EQUATIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for one-step equations review
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Review solving one-step equations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring one-step equations review.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'One-Step Equations Review' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Two-Step Equations Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Step Equations Review' AND grade_level_min = 8),
  'Two-Step Equations Review Topic Guide', 'Review solving two-step equations',
  'TWO-STEP EQUATIONS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for two-step equations review
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Review solving two-step equations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring two-step equations review.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Step Equations Review' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Multi-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multi-Step Equations' AND grade_level_min = 8),
  'Multi-Step Equations Topic Guide', 'Solve equations with multiple steps',
  'MULTI-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for multi-step equations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve equations with multiple steps
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring multi-step equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multi-Step Equations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Equations with Distributive Property
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Distributive Property' AND grade_level_min = 8),
  'Equations with Distributive Property Topic Guide', 'Solve equations requiring distribution',
  'EQUATIONS WITH DISTRIBUTIVE PROPERTY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for equations with distributive property
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve equations requiring distribution
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring equations with distributive property.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Distributive Property' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Variables on Both Sides
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Variables on Both Sides' AND grade_level_min = 8),
  'Variables on Both Sides Topic Guide', 'Solve when variable appears twice',
  'VARIABLES ON BOTH SIDES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for variables on both sides
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve when variable appears twice
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring variables on both sides.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Variables on Both Sides' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Equations with Rational Coefficients
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Rational Coefficients' AND grade_level_min = 8),
  'Equations with Rational Coefficients Topic Guide', 'Solve equations with fractions/decimals',
  'EQUATIONS WITH RATIONAL COEFFICIENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for equations with rational coefficients
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve equations with fractions/decimals
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring equations with rational coefficients.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Rational Coefficients' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Special Cases
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Special Cases' AND grade_level_min = 8),
  'Special Cases Topic Guide', 'Identify no solution and infinite solutions',
  'SPECIAL CASES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for special cases
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify no solution and infinite solutions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring special cases.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Cases' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Absolute Value Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Equations' AND grade_level_min = 8),
  'Absolute Value Equations Topic Guide', 'Solve simple absolute value equations',
  'ABSOLUTE VALUE EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for absolute value equations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve simple absolute value equations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring absolute value equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Equations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Linear Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Inequalities' AND grade_level_min = 8),
  'Linear Inequalities Topic Guide', 'Solve multi-step inequalities',
  'LINEAR INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for linear inequalities
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve multi-step inequalities
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring linear inequalities.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Inequalities' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Compound Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Inequalities' AND grade_level_min = 8),
  'Compound Inequalities Topic Guide', 'Solve and graph compound inequalities',
  'COMPOUND INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for compound inequalities
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve and graph compound inequalities
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring compound inequalities.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Inequalities' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Absolute Value Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 8),
  'Absolute Value Inequalities Topic Guide', 'Solve absolute value inequalities',
  'ABSOLUTE VALUE INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for absolute value inequalities
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve absolute value inequalities
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring absolute value inequalities.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value Inequalities' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Equation Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equation Word Problems' AND grade_level_min = 8),
  'Equation Word Problems Topic Guide', 'Write and solve equations from situations',
  'EQUATION WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for equation word problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write and solve equations from situations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring equation word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equation Word Problems' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SYSTEMS OF EQUATIONS (10 topics)
-- ============================================================================

-- Introduction to Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Systems' AND grade_level_min = 8),
  'Introduction to Systems Topic Guide', 'Understand what systems of equations are',
  'INTRODUCTION TO SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for introduction to systems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand what systems of equations are
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring introduction to systems.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Systems' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Graphing Systems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Systems' AND grade_level_min = 8),
  'Graphing Systems Topic Guide', 'Solve systems by graphing',
  'GRAPHING SYSTEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for graphing systems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve systems by graphing
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring graphing systems.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Systems' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Types of Solutions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Types of Solutions' AND grade_level_min = 8),
  'Types of Solutions Topic Guide', 'Identify one solution, no solution, infinite solutions',
  'TYPES OF SOLUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for types of solutions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify one solution, no solution, infinite solutions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring types of solutions.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Types of Solutions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Substitution Method
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Substitution Method' AND grade_level_min = 8),
  'Substitution Method Topic Guide', 'Solve systems using substitution',
  'SUBSTITUTION METHOD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for substitution method
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve systems using substitution
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring substitution method.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Substitution Method' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Elimination Method Addition
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Elimination Method Addition' AND grade_level_min = 8),
  'Elimination Method Addition Topic Guide', 'Solve systems by adding equations',
  'ELIMINATION METHOD ADDITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for elimination method addition
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve systems by adding equations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring elimination method addition.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elimination Method Addition' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Elimination Method Subtraction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Elimination Method Subtraction' AND grade_level_min = 8),
  'Elimination Method Subtraction Topic Guide', 'Solve systems by subtracting equations',
  'ELIMINATION METHOD SUBTRACTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for elimination method subtraction
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve systems by subtracting equations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring elimination method subtraction.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elimination Method Subtraction' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Elimination with Multiplication
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Elimination with Multiplication' AND grade_level_min = 8),
  'Elimination with Multiplication Topic Guide', 'Multiply to eliminate variables',
  'ELIMINATION WITH MULTIPLICATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for elimination with multiplication
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Multiply to eliminate variables
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring elimination with multiplication.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Elimination with Multiplication' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Choosing a Method
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Choosing a Method' AND grade_level_min = 8),
  'Choosing a Method Topic Guide', 'Select appropriate solving method',
  'CHOOSING A METHOD - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for choosing a method
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Select appropriate solving method
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring choosing a method.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Choosing a Method' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Systems Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems Word Problems' AND grade_level_min = 8),
  'Systems Word Problems Topic Guide', 'Write and solve systems from situations',
  'SYSTEMS WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for systems word problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write and solve systems from situations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring systems word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems Word Problems' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Systems and Break-Even
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Systems and Break-Even' AND grade_level_min = 8),
  'Systems and Break-Even Topic Guide', 'Apply systems to business problems',
  'SYSTEMS AND BREAK-EVEN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for systems and break-even
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply systems to business problems
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring systems and break-even.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Systems and Break-Even' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- FUNCTIONS (12 topics)
-- ============================================================================

-- Understanding Relations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Relations' AND grade_level_min = 8),
  'Understanding Relations Topic Guide', 'Identify domain and range',
  'UNDERSTANDING RELATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for understanding relations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify domain and range
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring understanding relations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Relations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Definition of Function
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Definition of Function' AND grade_level_min = 8),
  'Definition of Function Topic Guide', 'Determine if a relation is a function',
  'DEFINITION OF FUNCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for definition of function
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Determine if a relation is a function
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring definition of function.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Definition of Function' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Vertical Line Test
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vertical Line Test' AND grade_level_min = 8),
  'Vertical Line Test Topic Guide', 'Use vertical line test for functions',
  'VERTICAL LINE TEST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for vertical line test
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use vertical line test for functions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring vertical line test.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vertical Line Test' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Function Notation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Notation' AND grade_level_min = 8),
  'Function Notation Topic Guide', 'Use and interpret f(x) notation',
  'FUNCTION NOTATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for function notation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use and interpret f(x) notation
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring function notation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Notation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Evaluating Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Evaluating Functions' AND grade_level_min = 8),
  'Evaluating Functions Topic Guide', 'Find function values for given inputs',
  'EVALUATING FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for evaluating functions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find function values for given inputs
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring evaluating functions.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Functions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Functions from Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Functions from Tables' AND grade_level_min = 8),
  'Functions from Tables Topic Guide', 'Represent functions with tables',
  'FUNCTIONS FROM TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for functions from tables
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Represent functions with tables
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring functions from tables.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Functions from Tables' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Functions from Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Functions from Graphs' AND grade_level_min = 8),
  'Functions from Graphs Topic Guide', 'Interpret functions from graphs',
  'FUNCTIONS FROM GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for functions from graphs
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Interpret functions from graphs
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring functions from graphs.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Functions from Graphs' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Functions from Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Functions from Equations' AND grade_level_min = 8),
  'Functions from Equations Topic Guide', 'Write function rules as equations',
  'FUNCTIONS FROM EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for functions from equations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write function rules as equations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring functions from equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Functions from Equations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Comparing Functions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Functions' AND grade_level_min = 8),
  'Comparing Functions Topic Guide', 'Compare functions in different forms',
  'COMPARING FUNCTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for comparing functions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare functions in different forms
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring comparing functions.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Functions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Linear vs Non-Linear
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear vs Non-Linear' AND grade_level_min = 8),
  'Linear vs Non-Linear Topic Guide', 'Distinguish linear from non-linear functions',
  'LINEAR VS NON-LINEAR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for linear vs non-linear
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Distinguish linear from non-linear functions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring linear vs non-linear.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear vs Non-Linear' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Increasing and Decreasing
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Increasing and Decreasing' AND grade_level_min = 8),
  'Increasing and Decreasing Topic Guide', 'Identify where functions increase/decrease',
  'INCREASING AND DECREASING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for increasing and decreasing
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify where functions increase/decrease
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring increasing and decreasing.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Increasing and Decreasing' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Function Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Function Applications' AND grade_level_min = 8),
  'Function Applications Topic Guide', 'Apply functions to real situations',
  'FUNCTION APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for function applications
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply functions to real situations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring function applications.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Function Applications' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- LINEAR FUNCTIONS (15 topics)
-- ============================================================================

-- Slope from Graph
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope from Graph' AND grade_level_min = 8),
  'Slope from Graph Topic Guide', 'Find slope from a graph',
  'SLOPE FROM GRAPH - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for slope from graph
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find slope from a graph
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring slope from graph.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope from Graph' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Slope from Two Points
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope from Two Points' AND grade_level_min = 8),
  'Slope from Two Points Topic Guide', 'Calculate slope using rise over run',
  'SLOPE FROM TWO POINTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for slope from two points
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate slope using rise over run
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring slope from two points.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope from Two Points' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Slope from Table
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope from Table' AND grade_level_min = 8),
  'Slope from Table Topic Guide', 'Find slope from a table of values',
  'SLOPE FROM TABLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for slope from table
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find slope from a table of values
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring slope from table.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope from Table' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Slope from Equation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope from Equation' AND grade_level_min = 8),
  'Slope from Equation Topic Guide', 'Identify slope from an equation',
  'SLOPE FROM EQUATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for slope from equation
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify slope from an equation
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring slope from equation.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope from Equation' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Interpreting Slope
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Interpreting Slope' AND grade_level_min = 8),
  'Interpreting Slope Topic Guide', 'Interpret slope as rate of change',
  'INTERPRETING SLOPE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for interpreting slope
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Interpret slope as rate of change
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring interpreting slope.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interpreting Slope' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Y-Intercept
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Y-Intercept' AND grade_level_min = 8),
  'Y-Intercept Topic Guide', 'Find and interpret y-intercept',
  'Y-INTERCEPT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for y-intercept
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find and interpret y-intercept
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring y-intercept.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Y-Intercept' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Slope-Intercept Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Slope-Intercept Form' AND grade_level_min = 8),
  'Slope-Intercept Form Topic Guide', 'Write equations in y = mx + b',
  'SLOPE-INTERCEPT FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for slope-intercept form
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write equations in y = mx + b
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring slope-intercept form.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Slope-Intercept Form' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Graphing Slope-Intercept
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Slope-Intercept' AND grade_level_min = 8),
  'Graphing Slope-Intercept Topic Guide', 'Graph using slope and intercept',
  'GRAPHING SLOPE-INTERCEPT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for graphing slope-intercept
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Graph using slope and intercept
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring graphing slope-intercept.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Slope-Intercept' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Standard Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Standard Form' AND grade_level_min = 8),
  'Standard Form Topic Guide', 'Write and convert to standard form',
  'STANDARD FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for standard form
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write and convert to standard form
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring standard form.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Standard Form' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Point-Slope Form
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Point-Slope Form' AND grade_level_min = 8),
  'Point-Slope Form Topic Guide', 'Write equations in point-slope form',
  'POINT-SLOPE FORM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for point-slope form
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write equations in point-slope form
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring point-slope form.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Point-Slope Form' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Writing Equations from Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Equations from Graphs' AND grade_level_min = 8),
  'Writing Equations from Graphs Topic Guide', 'Write equation of a graphed line',
  'WRITING EQUATIONS FROM GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for writing equations from graphs
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write equation of a graphed line
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring writing equations from graphs.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Equations from Graphs' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Writing Equations from Points
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Equations from Points' AND grade_level_min = 8),
  'Writing Equations from Points Topic Guide', 'Write equation through two points',
  'WRITING EQUATIONS FROM POINTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for writing equations from points
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write equation through two points
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring writing equations from points.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Equations from Points' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Parallel Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parallel Lines' AND grade_level_min = 8),
  'Parallel Lines Topic Guide', 'Identify and write equations of parallel lines',
  'PARALLEL LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for parallel lines
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify and write equations of parallel lines
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring parallel lines.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel Lines' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Perpendicular Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perpendicular Lines' AND grade_level_min = 8),
  'Perpendicular Lines Topic Guide', 'Identify and write equations of perpendicular lines',
  'PERPENDICULAR LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for perpendicular lines
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify and write equations of perpendicular lines
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring perpendicular lines.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perpendicular Lines' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Linear Function Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear Function Applications' AND grade_level_min = 8),
  'Linear Function Applications Topic Guide', 'Apply linear functions to real situations',
  'LINEAR FUNCTION APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for linear function applications
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply linear functions to real situations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring linear function applications.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear Function Applications' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- TRANSFORMATIONS (12 topics)
-- ============================================================================

-- Introduction to Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Transformations' AND grade_level_min = 8),
  'Introduction to Transformations Topic Guide', 'Understand rigid and non-rigid transformations',
  'INTRODUCTION TO TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for introduction to transformations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand rigid and non-rigid transformations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring introduction to transformations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Transformations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Translations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Translations' AND grade_level_min = 8),
  'Translations Topic Guide', 'Perform and describe translations',
  'TRANSLATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for translations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Perform and describe translations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring translations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Translations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Translations on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Translations on Coordinate Plane' AND grade_level_min = 8),
  'Translations on Coordinate Plane Topic Guide', 'Translate using coordinate rules',
  'TRANSLATIONS ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for translations on coordinate plane
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Translate using coordinate rules
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring translations on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Translations on Coordinate Plane' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Reflections
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reflections' AND grade_level_min = 8),
  'Reflections Topic Guide', 'Reflect figures over lines',
  'REFLECTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for reflections
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Reflect figures over lines
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring reflections.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reflections' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Reflections over Axes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reflections over Axes' AND grade_level_min = 8),
  'Reflections over Axes Topic Guide', 'Reflect over x-axis and y-axis',
  'REFLECTIONS OVER AXES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for reflections over axes
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Reflect over x-axis and y-axis
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring reflections over axes.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reflections over Axes' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Reflections over Other Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reflections over Other Lines' AND grade_level_min = 8),
  'Reflections over Other Lines Topic Guide', 'Reflect over y = x and other lines',
  'REFLECTIONS OVER OTHER LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for reflections over other lines
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Reflect over y = x and other lines
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring reflections over other lines.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reflections over Other Lines' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Rotations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rotations' AND grade_level_min = 8),
  'Rotations Topic Guide', 'Rotate figures around a point',
  'ROTATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for rotations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Rotate figures around a point
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring rotations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rotations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Rotations on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Rotations on Coordinate Plane' AND grade_level_min = 8),
  'Rotations on Coordinate Plane Topic Guide', 'Rotate 90°, 180°, 270°',
  'ROTATIONS ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for rotations on coordinate plane
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Rotate 90°, 180°, 270°
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring rotations on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Rotations on Coordinate Plane' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Describing Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Describing Transformations' AND grade_level_min = 8),
  'Describing Transformations Topic Guide', 'Describe single transformations',
  'DESCRIBING TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for describing transformations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Describe single transformations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring describing transformations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Describing Transformations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Sequence of Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sequence of Transformations' AND grade_level_min = 8),
  'Sequence of Transformations Topic Guide', 'Perform multiple transformations',
  'SEQUENCE OF TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for sequence of transformations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Perform multiple transformations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring sequence of transformations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sequence of Transformations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Dilations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dilations' AND grade_level_min = 8),
  'Dilations Topic Guide', 'Perform dilations with scale factor',
  'DILATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for dilations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Perform dilations with scale factor
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring dilations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dilations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Dilations on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dilations on Coordinate Plane' AND grade_level_min = 8),
  'Dilations on Coordinate Plane Topic Guide', 'Dilate using coordinate rules',
  'DILATIONS ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for dilations on coordinate plane
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Dilate using coordinate rules
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring dilations on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dilations on Coordinate Plane' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CONGRUENCE AND SIMILARITY (10 topics)
-- ============================================================================

-- Congruent Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Congruent Figures' AND grade_level_min = 8),
  'Congruent Figures Topic Guide', 'Identify congruent figures',
  'CONGRUENT FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for congruent figures
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify congruent figures
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring congruent figures.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Congruent Figures' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Congruence Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Congruence Transformations' AND grade_level_min = 8),
  'Congruence Transformations Topic Guide', 'Use transformations to show congruence',
  'CONGRUENCE TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for congruence transformations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use transformations to show congruence
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring congruence transformations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Congruence Transformations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Angle-Angle Similarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle-Angle Similarity' AND grade_level_min = 8),
  'Angle-Angle Similarity Topic Guide', 'Use AA criterion for similarity',
  'ANGLE-ANGLE SIMILARITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for angle-angle similarity
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use AA criterion for similarity
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring angle-angle similarity.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle-Angle Similarity' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Similar Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similar Triangles' AND grade_level_min = 8),
  'Similar Triangles Topic Guide', 'Identify similar triangles',
  'SIMILAR TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for similar triangles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify similar triangles
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring similar triangles.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similar Triangles' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Similarity Transformations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similarity Transformations' AND grade_level_min = 8),
  'Similarity Transformations Topic Guide', 'Use dilations for similarity',
  'SIMILARITY TRANSFORMATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for similarity transformations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use dilations for similarity
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring similarity transformations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similarity Transformations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Scale Factor
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scale Factor' AND grade_level_min = 8),
  'Scale Factor Topic Guide', 'Find and use scale factor',
  'SCALE FACTOR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for scale factor
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find and use scale factor
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring scale factor.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale Factor' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Finding Missing Sides
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Missing Sides' AND grade_level_min = 8),
  'Finding Missing Sides Topic Guide', 'Use similarity to find missing measurements',
  'FINDING MISSING SIDES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding missing sides
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use similarity to find missing measurements
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring finding missing sides.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Missing Sides' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Similarity and Proportions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similarity and Proportions' AND grade_level_min = 8),
  'Similarity and Proportions Topic Guide', 'Set up and solve proportions',
  'SIMILARITY AND PROPORTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for similarity and proportions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Set up and solve proportions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring similarity and proportions.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similarity and Proportions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Similarity Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similarity Word Problems' AND grade_level_min = 8),
  'Similarity Word Problems Topic Guide', 'Apply similarity to real situations',
  'SIMILARITY WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for similarity word problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply similarity to real situations
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring similarity word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similarity Word Problems' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Indirect Measurement
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Indirect Measurement' AND grade_level_min = 8),
  'Indirect Measurement Topic Guide', 'Use similar triangles for indirect measurement',
  'INDIRECT MEASUREMENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for indirect measurement
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use similar triangles for indirect measurement
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring indirect measurement.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Indirect Measurement' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PYTHAGOREAN THEOREM (10 topics)
-- ============================================================================

-- Understanding the Pythagorean Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding the Pythagorean Theorem' AND grade_level_min = 8),
  'Understanding the Pythagorean Theorem Topic Guide', 'Explore a² + b² = c²',
  'UNDERSTANDING THE PYTHAGOREAN THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for understanding the pythagorean theorem
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Explore a² + b² = c²
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring understanding the pythagorean theorem.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding the Pythagorean Theorem' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Finding the Hypotenuse
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding the Hypotenuse' AND grade_level_min = 8),
  'Finding the Hypotenuse Topic Guide', 'Calculate the longest side',
  'FINDING THE HYPOTENUSE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding the hypotenuse
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate the longest side
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring finding the hypotenuse.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding the Hypotenuse' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Finding a Leg
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding a Leg' AND grade_level_min = 8),
  'Finding a Leg Topic Guide', 'Calculate a shorter side',
  'FINDING A LEG - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding a leg
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate a shorter side
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring finding a leg.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding a Leg' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Pythagorean Triples
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Triples' AND grade_level_min = 8),
  'Pythagorean Triples Topic Guide', 'Identify common Pythagorean triples',
  'PYTHAGOREAN TRIPLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for pythagorean triples
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify common Pythagorean triples
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring pythagorean triples.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Triples' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Converse of Pythagorean Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converse of Pythagorean Theorem' AND grade_level_min = 8),
  'Converse of Pythagorean Theorem Topic Guide', 'Determine if a triangle is right',
  'CONVERSE OF PYTHAGOREAN THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for converse of pythagorean theorem
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Determine if a triangle is right
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring converse of pythagorean theorem.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converse of Pythagorean Theorem' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Pythagorean Theorem on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem on Coordinate Plane' AND grade_level_min = 8),
  'Pythagorean Theorem on Coordinate Plane Topic Guide', 'Find distances using theorem',
  'PYTHAGOREAN THEOREM ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for pythagorean theorem on coordinate plane
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find distances using theorem
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring pythagorean theorem on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem on Coordinate Plane' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- 3D Pythagorean Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '3D Pythagorean Theorem' AND grade_level_min = 8),
  '3D Pythagorean Theorem Topic Guide', 'Apply theorem in three dimensions',
  '3D PYTHAGOREAN THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for 3d pythagorean theorem
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply theorem in three dimensions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring 3d pythagorean theorem.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '3D Pythagorean Theorem' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Pythagorean Theorem Applications
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem Applications' AND grade_level_min = 8),
  'Pythagorean Theorem Applications Topic Guide', 'Solve real-world problems',
  'PYTHAGOREAN THEOREM APPLICATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for pythagorean theorem applications
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve real-world problems
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring pythagorean theorem applications.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem Applications' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Distance Formula
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distance Formula' AND grade_level_min = 8),
  'Distance Formula Topic Guide', 'Connect to distance formula',
  'DISTANCE FORMULA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for distance formula
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Connect to distance formula
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring distance formula.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distance Formula' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Pythagorean Theorem Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem Word Problems' AND grade_level_min = 8),
  'Pythagorean Theorem Word Problems Topic Guide', 'Solve multi-step problems',
  'PYTHAGOREAN THEOREM WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for pythagorean theorem word problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve multi-step problems
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring pythagorean theorem word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem Word Problems' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- VOLUME (10 topics)
-- ============================================================================

-- Volume of Cylinders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Cylinders' AND grade_level_min = 8),
  'Volume of Cylinders Topic Guide', 'Use V = πr²h',
  'VOLUME OF CYLINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for volume of cylinders
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use V = πr²h
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring volume of cylinders.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Cylinders' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Finding Height of Cylinder
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Height of Cylinder' AND grade_level_min = 8),
  'Finding Height of Cylinder Topic Guide', 'Solve for height given volume',
  'FINDING HEIGHT OF CYLINDER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding height of cylinder
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve for height given volume
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring finding height of cylinder.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Height of Cylinder' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Finding Radius of Cylinder
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Radius of Cylinder' AND grade_level_min = 8),
  'Finding Radius of Cylinder Topic Guide', 'Solve for radius given volume',
  'FINDING RADIUS OF CYLINDER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding radius of cylinder
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve for radius given volume
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring finding radius of cylinder.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Radius of Cylinder' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Volume of Cones
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Cones' AND grade_level_min = 8),
  'Volume of Cones Topic Guide', 'Use V = 1/3 πr²h',
  'VOLUME OF CONES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for volume of cones
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use V = 1/3 πr²h
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring volume of cones.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Cones' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Comparing Cylinders and Cones
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Cylinders and Cones' AND grade_level_min = 8),
  'Comparing Cylinders and Cones Topic Guide', 'Understand the relationship',
  'COMPARING CYLINDERS AND CONES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for comparing cylinders and cones
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand the relationship
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring comparing cylinders and cones.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Cylinders and Cones' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Volume of Spheres
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Spheres' AND grade_level_min = 8),
  'Volume of Spheres Topic Guide', 'Use V = 4/3 πr³',
  'VOLUME OF SPHERES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for volume of spheres
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use V = 4/3 πr³
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring volume of spheres.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Spheres' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Finding Radius of Sphere
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Radius of Sphere' AND grade_level_min = 8),
  'Finding Radius of Sphere Topic Guide', 'Solve for radius given volume',
  'FINDING RADIUS OF SPHERE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding radius of sphere
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve for radius given volume
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring finding radius of sphere.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Radius of Sphere' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Volume of Hemispheres
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Hemispheres' AND grade_level_min = 8),
  'Volume of Hemispheres Topic Guide', 'Calculate half-sphere volume',
  'VOLUME OF HEMISPHERES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for volume of hemispheres
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate half-sphere volume
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring volume of hemispheres.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Hemispheres' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Composite 3D Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composite 3D Figures' AND grade_level_min = 8),
  'Composite 3D Figures Topic Guide', 'Find volume of combined shapes',
  'COMPOSITE 3D FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for composite 3d figures
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find volume of combined shapes
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring composite 3d figures.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composite 3D Figures' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Volume Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume Word Problems' AND grade_level_min = 8),
  'Volume Word Problems Topic Guide', 'Solve real-world volume problems',
  'VOLUME WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for volume word problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve real-world volume problems
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring volume word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume Word Problems' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- STATISTICS AND PROBABILITY (10 topics)
-- ============================================================================

-- Scatter Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scatter Plots' AND grade_level_min = 8),
  'Scatter Plots Topic Guide', 'Create and interpret scatter plots',
  'SCATTER PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for scatter plots
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Create and interpret scatter plots
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring scatter plots.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scatter Plots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Patterns in Scatter Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Patterns in Scatter Plots' AND grade_level_min = 8),
  'Patterns in Scatter Plots Topic Guide', 'Identify positive, negative, no association',
  'PATTERNS IN SCATTER PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for patterns in scatter plots
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify positive, negative, no association
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring patterns in scatter plots.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Patterns in Scatter Plots' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Linear vs Non-Linear Associations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Linear vs Non-Linear Associations' AND grade_level_min = 8),
  'Linear vs Non-Linear Associations Topic Guide', 'Distinguish association types',
  'LINEAR VS NON-LINEAR ASSOCIATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for linear vs non-linear associations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Distinguish association types
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring linear vs non-linear associations.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Linear vs Non-Linear Associations' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Clusters and Outliers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Clusters and Outliers' AND grade_level_min = 8),
  'Clusters and Outliers Topic Guide', 'Identify clusters and outliers',
  'CLUSTERS AND OUTLIERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for clusters and outliers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify clusters and outliers
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring clusters and outliers.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Clusters and Outliers' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Line of Best Fit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Line of Best Fit' AND grade_level_min = 8),
  'Line of Best Fit Topic Guide', 'Draw informal line of best fit',
  'LINE OF BEST FIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for line of best fit
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Draw informal line of best fit
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring line of best fit.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Line of Best Fit' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Equation of Line of Best Fit
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equation of Line of Best Fit' AND grade_level_min = 8),
  'Equation of Line of Best Fit Topic Guide', 'Write equation for trend line',
  'EQUATION OF LINE OF BEST FIT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for equation of line of best fit
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write equation for trend line
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring equation of line of best fit.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equation of Line of Best Fit' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Making Predictions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Making Predictions' AND grade_level_min = 8),
  'Making Predictions Topic Guide', 'Use line of best fit for predictions',
  'MAKING PREDICTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for making predictions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use line of best fit for predictions
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring making predictions.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Predictions' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Two-Way Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 8),
  'Two-Way Tables Topic Guide', 'Organize categorical data',
  'TWO-WAY TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for two-way tables
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Organize categorical data
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring two-way tables.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Relative Frequency Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Relative Frequency Tables' AND grade_level_min = 8),
  'Relative Frequency Tables Topic Guide', 'Create relative frequency tables',
  'RELATIVE FREQUENCY TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for relative frequency tables
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Create relative frequency tables
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring relative frequency tables.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Relative Frequency Tables' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;


-- Interpreting Two-Way Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Interpreting Two-Way Tables' AND grade_level_min = 8),
  'Interpreting Two-Way Tables Topic Guide', 'Analyze associations in data',
  'INTERPRETING TWO-WAY TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for interpreting two-way tables
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Analyze associations in data
- Conceptual understanding supports procedural fluency
- Multiple representations deepen comprehension
- Real-world applications build relevance
- Connections to prior learning strengthen retention

COMMON MISCONCEPTIONS:
- Applying procedures without conceptual understanding
- Confusing related but distinct mathematical ideas
- Making computational or procedural errors
- Not verifying answers for reasonableness

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Engage students with a compelling real-world problem requiring interpreting two-way tables.

2. DIRECT INSTRUCTION (10 minutes):
   Model concepts using clear visual representations.
   Demonstrate procedures step-by-step with explanations.
   Make mathematical thinking visible through think-alouds.
   Connect new learning to previously mastered concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through varied problems collaboratively.
   Encourage student explanations and justifications.
   Use multiple representations (visual, numerical, algebraic).
   Address misconceptions and errors as they arise.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve problems with increasing complexity.
   Apply concepts in new and varied contexts.
   Begin extended practice or homework assignments.

DIFFERENTIATION:
For Struggling Learners:
- Provide concrete manipulatives and visual models
- Break complex tasks into smaller, sequential steps
- Offer additional guided practice with simpler problems
- Use scaffolded instruction and small group support

For Advanced Learners:
- Present challenging extension problems
- Encourage pattern recognition and generalization
- Introduce connections to advanced mathematical topics
- Provide opportunities for creative problem-solving

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Demonstrates understanding through clear explanations
- Solves problems efficiently with appropriate strategies
- Shows work that reflects mathematical reasoning', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interpreting Two-Way Tables' AND grade_level_min = 8)
ON CONFLICT DO NOTHING;
