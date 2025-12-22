-- Grade 6 Math Expanded Topic Prompts - Continuation
-- Remaining units: Expressions and Equations through Geometry
-- ============================================================================

-- ============================================================================
-- EXPRESSIONS AND EQUATIONS (16 topics)
-- ============================================================================


-- Writing Algebraic Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Algebraic Expressions' AND grade_level_min = 6),
  'Writing Algebraic Expressions Topic Guide', 'Translate words to algebraic expressions',
  'WRITING ALGEBRAIC EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of writing algebraic expressions
2. Apply strategies to solve problems involving writing algebraic expressions
3. Demonstrate fluency with writing algebraic expressions in various contexts
4. Connect writing algebraic expressions to real-world situations

KEY CONCEPTS:
- Translate words to algebraic expressions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires writing algebraic expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Algebraic Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Evaluating Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Evaluating Expressions' AND grade_level_min = 6),
  'Evaluating Expressions Topic Guide', 'Substitute values and evaluate expressions',
  'EVALUATING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of evaluating expressions
2. Apply strategies to solve problems involving evaluating expressions
3. Demonstrate fluency with evaluating expressions in various contexts
4. Connect evaluating expressions to real-world situations

KEY CONCEPTS:
- Substitute values and evaluate expressions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires evaluating expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Evaluating Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Properties of Operations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Operations' AND grade_level_min = 6),
  'Properties of Operations Topic Guide', 'Apply commutative, associative, and distributive properties',
  'PROPERTIES OF OPERATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of properties of operations
2. Apply strategies to solve problems involving properties of operations
3. Demonstrate fluency with properties of operations in various contexts
4. Connect properties of operations to real-world situations

KEY CONCEPTS:
- Apply commutative, associative, and distributive properties
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires properties of operations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Operations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Combining Like Terms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Combining Like Terms' AND grade_level_min = 6),
  'Combining Like Terms Topic Guide', 'Simplify expressions with like terms',
  'COMBINING LIKE TERMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of combining like terms
2. Apply strategies to solve problems involving combining like terms
3. Demonstrate fluency with combining like terms in various contexts
4. Connect combining like terms to real-world situations

KEY CONCEPTS:
- Simplify expressions with like terms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires combining like terms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Combining Like Terms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Distributive Property
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distributive Property' AND grade_level_min = 6),
  'Distributive Property Topic Guide', 'Expand expressions using distribution',
  'DISTRIBUTIVE PROPERTY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of distributive property
2. Apply strategies to solve problems involving distributive property
3. Demonstrate fluency with distributive property in various contexts
4. Connect distributive property to real-world situations

KEY CONCEPTS:
- Expand expressions using distribution
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires distributive property.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distributive Property' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Factoring Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Expressions' AND grade_level_min = 6),
  'Factoring Expressions Topic Guide', 'Factor expressions using GCF',
  'FACTORING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of factoring expressions
2. Apply strategies to solve problems involving factoring expressions
3. Demonstrate fluency with factoring expressions in various contexts
4. Connect factoring expressions to real-world situations

KEY CONCEPTS:
- Factor expressions using GCF
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires factoring expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Equivalent Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equivalent Expressions' AND grade_level_min = 6),
  'Equivalent Expressions Topic Guide', 'Identify and write equivalent expressions',
  'EQUIVALENT EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of equivalent expressions
2. Apply strategies to solve problems involving equivalent expressions
3. Demonstrate fluency with equivalent expressions in various contexts
4. Connect equivalent expressions to real-world situations

KEY CONCEPTS:
- Identify and write equivalent expressions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires equivalent expressions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equivalent Expressions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Writing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 6),
  'Writing Equations Topic Guide', 'Write equations from word situations',
  'WRITING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of writing equations
2. Apply strategies to solve problems involving writing equations
3. Demonstrate fluency with writing equations in various contexts
4. Connect writing equations to real-world situations

KEY CONCEPTS:
- Write equations from word situations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires writing equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Addition Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Addition Equations' AND grade_level_min = 6),
  'Solving Addition Equations Topic Guide', 'Solve equations like x + 5 = 12',
  'SOLVING ADDITION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving addition equations
2. Apply strategies to solve problems involving solving addition equations
3. Demonstrate fluency with solving addition equations in various contexts
4. Connect solving addition equations to real-world situations

KEY CONCEPTS:
- Solve equations like x + 5 = 12
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving addition equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Addition Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Subtraction Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Subtraction Equations' AND grade_level_min = 6),
  'Solving Subtraction Equations Topic Guide', 'Solve equations like x - 3 = 8',
  'SOLVING SUBTRACTION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving subtraction equations
2. Apply strategies to solve problems involving solving subtraction equations
3. Demonstrate fluency with solving subtraction equations in various contexts
4. Connect solving subtraction equations to real-world situations

KEY CONCEPTS:
- Solve equations like x - 3 = 8
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving subtraction equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Subtraction Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Multiplication Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Multiplication Equations' AND grade_level_min = 6),
  'Solving Multiplication Equations Topic Guide', 'Solve equations like 4x = 24',
  'SOLVING MULTIPLICATION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving multiplication equations
2. Apply strategies to solve problems involving solving multiplication equations
3. Demonstrate fluency with solving multiplication equations in various contexts
4. Connect solving multiplication equations to real-world situations

KEY CONCEPTS:
- Solve equations like 4x = 24
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving multiplication equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Multiplication Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Division Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Division Equations' AND grade_level_min = 6),
  'Solving Division Equations Topic Guide', 'Solve equations like x/5 = 7',
  'SOLVING DIVISION EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving division equations
2. Apply strategies to solve problems involving solving division equations
3. Demonstrate fluency with solving division equations in various contexts
4. Connect solving division equations to real-world situations

KEY CONCEPTS:
- Solve equations like x/5 = 7
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving division equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Division Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Two-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Step Equations' AND grade_level_min = 6),
  'Two-Step Equations Topic Guide', 'Solve equations with two operations',
  'TWO-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of two-step equations
2. Apply strategies to solve problems involving two-step equations
3. Demonstrate fluency with two-step equations in various contexts
4. Connect two-step equations to real-world situations

KEY CONCEPTS:
- Solve equations with two operations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires two-step equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Step Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Writing Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Inequalities' AND grade_level_min = 6),
  'Writing Inequalities Topic Guide', 'Translate situations to inequalities',
  'WRITING INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of writing inequalities
2. Apply strategies to solve problems involving writing inequalities
3. Demonstrate fluency with writing inequalities in various contexts
4. Connect writing inequalities to real-world situations

KEY CONCEPTS:
- Translate situations to inequalities
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires writing inequalities.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Inequalities' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Solving Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Inequalities' AND grade_level_min = 6),
  'Solving Inequalities Topic Guide', 'Solve and graph one-step inequalities',
  'SOLVING INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of solving inequalities
2. Apply strategies to solve problems involving solving inequalities
3. Demonstrate fluency with solving inequalities in various contexts
4. Connect solving inequalities to real-world situations

KEY CONCEPTS:
- Solve and graph one-step inequalities
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires solving inequalities.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Inequalities' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Equations and Inequalities Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations and Inequalities Word Problems' AND grade_level_min = 6),
  'Equations and Inequalities Word Problems Topic Guide', 'Solve real-world algebra problems',
  'EQUATIONS AND INEQUALITIES WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of equations and inequalities word problems
2. Apply strategies to solve problems involving equations and inequalities word problems
3. Demonstrate fluency with equations and inequalities word problems in various contexts
4. Connect equations and inequalities word problems to real-world situations

KEY CONCEPTS:
- Solve real-world algebra problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires equations and inequalities word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations and Inequalities Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- COORDINATE PLANE (9 topics)
-- ============================================================================


-- Four Quadrants Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Four Quadrants Review' AND grade_level_min = 6),
  'Four Quadrants Review Topic Guide', 'Plot points in all four quadrants',
  'FOUR QUADRANTS REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of four quadrants review
2. Apply strategies to solve problems involving four quadrants review
3. Demonstrate fluency with four quadrants review in various contexts
4. Connect four quadrants review to real-world situations

KEY CONCEPTS:
- Plot points in all four quadrants
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires four quadrants review.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Four Quadrants Review' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Reflecting Points
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reflecting Points' AND grade_level_min = 6),
  'Reflecting Points Topic Guide', 'Reflect points across axes',
  'REFLECTING POINTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of reflecting points
2. Apply strategies to solve problems involving reflecting points
3. Demonstrate fluency with reflecting points in various contexts
4. Connect reflecting points to real-world situations

KEY CONCEPTS:
- Reflect points across axes
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires reflecting points.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reflecting Points' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Distance on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Distance on Coordinate Plane' AND grade_level_min = 6),
  'Distance on Coordinate Plane Topic Guide', 'Calculate horizontal and vertical distances',
  'DISTANCE ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of distance on coordinate plane
2. Apply strategies to solve problems involving distance on coordinate plane
3. Demonstrate fluency with distance on coordinate plane in various contexts
4. Connect distance on coordinate plane to real-world situations

KEY CONCEPTS:
- Calculate horizontal and vertical distances
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires distance on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Distance on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Absolute Value and Distance
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Absolute Value and Distance' AND grade_level_min = 6),
  'Absolute Value and Distance Topic Guide', 'Use absolute value to find distance',
  'ABSOLUTE VALUE AND DISTANCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of absolute value and distance
2. Apply strategies to solve problems involving absolute value and distance
3. Demonstrate fluency with absolute value and distance in various contexts
4. Connect absolute value and distance to real-world situations

KEY CONCEPTS:
- Use absolute value to find distance
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires absolute value and distance.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Absolute Value and Distance' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Polygons on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Polygons on Coordinate Plane' AND grade_level_min = 6),
  'Polygons on Coordinate Plane Topic Guide', 'Draw and identify polygons using coordinates',
  'POLYGONS ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of polygons on coordinate plane
2. Apply strategies to solve problems involving polygons on coordinate plane
3. Demonstrate fluency with polygons on coordinate plane in various contexts
4. Connect polygons on coordinate plane to real-world situations

KEY CONCEPTS:
- Draw and identify polygons using coordinates
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires polygons on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Polygons on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Perimeter on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Perimeter on Coordinate Plane' AND grade_level_min = 6),
  'Perimeter on Coordinate Plane Topic Guide', 'Calculate perimeter using coordinates',
  'PERIMETER ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of perimeter on coordinate plane
2. Apply strategies to solve problems involving perimeter on coordinate plane
3. Demonstrate fluency with perimeter on coordinate plane in various contexts
4. Connect perimeter on coordinate plane to real-world situations

KEY CONCEPTS:
- Calculate perimeter using coordinates
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires perimeter on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Perimeter on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6),
  'Area on Coordinate Plane Topic Guide', 'Calculate area using coordinates',
  'AREA ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area on coordinate plane
2. Apply strategies to solve problems involving area on coordinate plane
3. Demonstrate fluency with area on coordinate plane in various contexts
4. Connect area on coordinate plane to real-world situations

KEY CONCEPTS:
- Calculate area using coordinates
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Graphing Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Equations' AND grade_level_min = 6),
  'Graphing Equations Topic Guide', 'Graph linear equations',
  'GRAPHING EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of graphing equations
2. Apply strategies to solve problems involving graphing equations
3. Demonstrate fluency with graphing equations in various contexts
4. Connect graphing equations to real-world situations

KEY CONCEPTS:
- Graph linear equations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires graphing equations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Equations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Coordinate Plane Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Coordinate Plane Word Problems' AND grade_level_min = 6),
  'Coordinate Plane Word Problems Topic Guide', 'Solve real-world coordinate problems',
  'COORDINATE PLANE WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of coordinate plane word problems
2. Apply strategies to solve problems involving coordinate plane word problems
3. Demonstrate fluency with coordinate plane word problems in various contexts
4. Connect coordinate plane word problems to real-world situations

KEY CONCEPTS:
- Solve real-world coordinate problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires coordinate plane word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Coordinate Plane Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- AREA AND SURFACE AREA (10 topics)
-- ============================================================================


-- Area of Parallelograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Parallelograms' AND grade_level_min = 6),
  'Area of Parallelograms Topic Guide', 'Use A = b × h for parallelograms',
  'AREA OF PARALLELOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of parallelograms
2. Apply strategies to solve problems involving area of parallelograms
3. Demonstrate fluency with area of parallelograms in various contexts
4. Connect area of parallelograms to real-world situations

KEY CONCEPTS:
- Use A = b × h for parallelograms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of parallelograms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Parallelograms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area of Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 6),
  'Area of Triangles Topic Guide', 'Use A = 1/2 × b × h for triangles',
  'AREA OF TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of triangles
2. Apply strategies to solve problems involving area of triangles
3. Demonstrate fluency with area of triangles in various contexts
4. Connect area of triangles to real-world situations

KEY CONCEPTS:
- Use A = 1/2 × b × h for triangles
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of triangles.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Triangles' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area of Trapezoids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Trapezoids' AND grade_level_min = 6),
  'Area of Trapezoids Topic Guide', 'Use formula for trapezoid area',
  'AREA OF TRAPEZOIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of trapezoids
2. Apply strategies to solve problems involving area of trapezoids
3. Demonstrate fluency with area of trapezoids in various contexts
4. Connect area of trapezoids to real-world situations

KEY CONCEPTS:
- Use formula for trapezoid area
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of trapezoids.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Trapezoids' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area of Composite Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Composite Figures' AND grade_level_min = 6),
  'Area of Composite Figures Topic Guide', 'Break complex shapes into simpler ones',
  'AREA OF COMPOSITE FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area of composite figures
2. Apply strategies to solve problems involving area of composite figures
3. Demonstrate fluency with area of composite figures in various contexts
4. Connect area of composite figures to real-world situations

KEY CONCEPTS:
- Break complex shapes into simpler ones
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area of composite figures.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Composite Figures' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Area on Coordinate Plane
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6),
  'Area on Coordinate Plane Topic Guide', 'Find area using coordinate points',
  'AREA ON COORDINATE PLANE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of area on coordinate plane
2. Apply strategies to solve problems involving area on coordinate plane
3. Demonstrate fluency with area on coordinate plane in various contexts
4. Connect area on coordinate plane to real-world situations

KEY CONCEPTS:
- Find area using coordinate points
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires area on coordinate plane.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area on Coordinate Plane' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Understanding Nets
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Nets' AND grade_level_min = 6),
  'Understanding Nets Topic Guide', 'Identify nets of 3D figures',
  'UNDERSTANDING NETS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of understanding nets
2. Apply strategies to solve problems involving understanding nets
3. Demonstrate fluency with understanding nets in various contexts
4. Connect understanding nets to real-world situations

KEY CONCEPTS:
- Identify nets of 3D figures
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires understanding nets.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Nets' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area of Rectangular Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Rectangular Prisms' AND grade_level_min = 6),
  'Surface Area of Rectangular Prisms Topic Guide', 'Calculate surface area using nets',
  'SURFACE AREA OF RECTANGULAR PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area of rectangular prisms
2. Apply strategies to solve problems involving surface area of rectangular prisms
3. Demonstrate fluency with surface area of rectangular prisms in various contexts
4. Connect surface area of rectangular prisms to real-world situations

KEY CONCEPTS:
- Calculate surface area using nets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area of rectangular prisms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Rectangular Prisms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area of Triangular Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Triangular Prisms' AND grade_level_min = 6),
  'Surface Area of Triangular Prisms Topic Guide', 'Calculate surface area of triangular prisms',
  'SURFACE AREA OF TRIANGULAR PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area of triangular prisms
2. Apply strategies to solve problems involving surface area of triangular prisms
3. Demonstrate fluency with surface area of triangular prisms in various contexts
4. Connect surface area of triangular prisms to real-world situations

KEY CONCEPTS:
- Calculate surface area of triangular prisms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area of triangular prisms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Triangular Prisms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area of Pyramids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 6),
  'Surface Area of Pyramids Topic Guide', 'Calculate surface area of pyramids',
  'SURFACE AREA OF PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area of pyramids
2. Apply strategies to solve problems involving surface area of pyramids
3. Demonstrate fluency with surface area of pyramids in various contexts
4. Connect surface area of pyramids to real-world situations

KEY CONCEPTS:
- Calculate surface area of pyramids
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area of pyramids.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Surface Area Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area Word Problems' AND grade_level_min = 6),
  'Surface Area Word Problems Topic Guide', 'Solve real-world surface area problems',
  'SURFACE AREA WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of surface area word problems
2. Apply strategies to solve problems involving surface area word problems
3. Demonstrate fluency with surface area word problems in various contexts
4. Connect surface area word problems to real-world situations

KEY CONCEPTS:
- Solve real-world surface area problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires surface area word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- STATISTICS (14 topics)
-- ============================================================================


-- Statistical Questions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Statistical Questions' AND grade_level_min = 6),
  'Statistical Questions Topic Guide', 'Identify statistical questions',
  'STATISTICAL QUESTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of statistical questions
2. Apply strategies to solve problems involving statistical questions
3. Demonstrate fluency with statistical questions in various contexts
4. Connect statistical questions to real-world situations

KEY CONCEPTS:
- Identify statistical questions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires statistical questions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Statistical Questions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Mean
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mean' AND grade_level_min = 6),
  'Mean Topic Guide', 'Calculate mean of data sets',
  'MEAN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of mean
2. Apply strategies to solve problems involving mean
3. Demonstrate fluency with mean in various contexts
4. Connect mean to real-world situations

KEY CONCEPTS:
- Calculate mean of data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires mean.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mean' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Median
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Median' AND grade_level_min = 6),
  'Median Topic Guide', 'Find median of data sets',
  'MEDIAN - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of median
2. Apply strategies to solve problems involving median
3. Demonstrate fluency with median in various contexts
4. Connect median to real-world situations

KEY CONCEPTS:
- Find median of data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires median.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Median' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Mode
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mode' AND grade_level_min = 6),
  'Mode Topic Guide', 'Identify mode in data sets',
  'MODE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of mode
2. Apply strategies to solve problems involving mode
3. Demonstrate fluency with mode in various contexts
4. Connect mode to real-world situations

KEY CONCEPTS:
- Identify mode in data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires mode.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mode' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Range
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Range' AND grade_level_min = 6),
  'Range Topic Guide', 'Calculate range of data',
  'RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of range
2. Apply strategies to solve problems involving range
3. Demonstrate fluency with range in various contexts
4. Connect range to real-world situations

KEY CONCEPTS:
- Calculate range of data
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires range.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Range' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Choosing Measures of Center
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Choosing Measures of Center' AND grade_level_min = 6),
  'Choosing Measures of Center Topic Guide', 'Select appropriate measure',
  'CHOOSING MEASURES OF CENTER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of choosing measures of center
2. Apply strategies to solve problems involving choosing measures of center
3. Demonstrate fluency with choosing measures of center in various contexts
4. Connect choosing measures of center to real-world situations

KEY CONCEPTS:
- Select appropriate measure
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires choosing measures of center.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Choosing Measures of Center' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Mean Absolute Deviation
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Mean Absolute Deviation' AND grade_level_min = 6),
  'Mean Absolute Deviation Topic Guide', 'Calculate MAD',
  'MEAN ABSOLUTE DEVIATION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of mean absolute deviation
2. Apply strategies to solve problems involving mean absolute deviation
3. Demonstrate fluency with mean absolute deviation in various contexts
4. Connect mean absolute deviation to real-world situations

KEY CONCEPTS:
- Calculate MAD
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires mean absolute deviation.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Mean Absolute Deviation' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Interquartile Range
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Interquartile Range' AND grade_level_min = 6),
  'Interquartile Range Topic Guide', 'Find IQR of data sets',
  'INTERQUARTILE RANGE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of interquartile range
2. Apply strategies to solve problems involving interquartile range
3. Demonstrate fluency with interquartile range in various contexts
4. Connect interquartile range to real-world situations

KEY CONCEPTS:
- Find IQR of data sets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires interquartile range.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Interquartile Range' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Dot Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dot Plots' AND grade_level_min = 6),
  'Dot Plots Topic Guide', 'Create and interpret dot plots',
  'DOT PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of dot plots
2. Apply strategies to solve problems involving dot plots
3. Demonstrate fluency with dot plots in various contexts
4. Connect dot plots to real-world situations

KEY CONCEPTS:
- Create and interpret dot plots
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires dot plots.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dot Plots' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Histograms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Histograms' AND grade_level_min = 6),
  'Histograms Topic Guide', 'Create and interpret histograms',
  'HISTOGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of histograms
2. Apply strategies to solve problems involving histograms
3. Demonstrate fluency with histograms in various contexts
4. Connect histograms to real-world situations

KEY CONCEPTS:
- Create and interpret histograms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires histograms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Histograms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Box Plots
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Box Plots' AND grade_level_min = 6),
  'Box Plots Topic Guide', 'Create and interpret box-and-whisker plots',
  'BOX PLOTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of box plots
2. Apply strategies to solve problems involving box plots
3. Demonstrate fluency with box plots in various contexts
4. Connect box plots to real-world situations

KEY CONCEPTS:
- Create and interpret box-and-whisker plots
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires box plots.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Box Plots' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Comparing Data Displays
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Data Displays' AND grade_level_min = 6),
  'Comparing Data Displays Topic Guide', 'Choose appropriate data displays',
  'COMPARING DATA DISPLAYS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of comparing data displays
2. Apply strategies to solve problems involving comparing data displays
3. Demonstrate fluency with comparing data displays in various contexts
4. Connect comparing data displays to real-world situations

KEY CONCEPTS:
- Choose appropriate data displays
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires comparing data displays.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Data Displays' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Describing Distributions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Describing Distributions' AND grade_level_min = 6),
  'Describing Distributions Topic Guide', 'Describe shape, center, spread',
  'DESCRIBING DISTRIBUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of describing distributions
2. Apply strategies to solve problems involving describing distributions
3. Demonstrate fluency with describing distributions in various contexts
4. Connect describing distributions to real-world situations

KEY CONCEPTS:
- Describe shape, center, spread
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires describing distributions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Describing Distributions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Outliers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Outliers' AND grade_level_min = 6),
  'Outliers Topic Guide', 'Identify and understand outliers',
  'OUTLIERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of outliers
2. Apply strategies to solve problems involving outliers
3. Demonstrate fluency with outliers in various contexts
4. Connect outliers to real-world situations

KEY CONCEPTS:
- Identify and understand outliers
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires outliers.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Outliers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- PROBABILITY (10 topics)
-- ============================================================================


-- Probability Basics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability Basics' AND grade_level_min = 6),
  'Probability Basics Topic Guide', 'Understand probability as a ratio',
  'PROBABILITY BASICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of probability basics
2. Apply strategies to solve problems involving probability basics
3. Demonstrate fluency with probability basics in various contexts
4. Connect probability basics to real-world situations

KEY CONCEPTS:
- Understand probability as a ratio
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires probability basics.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability Basics' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Theoretical Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Theoretical Probability' AND grade_level_min = 6),
  'Theoretical Probability Topic Guide', 'Calculate probability of simple events',
  'THEORETICAL PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of theoretical probability
2. Apply strategies to solve problems involving theoretical probability
3. Demonstrate fluency with theoretical probability in various contexts
4. Connect theoretical probability to real-world situations

KEY CONCEPTS:
- Calculate probability of simple events
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires theoretical probability.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Theoretical Probability' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Probability as Fraction Decimal Percent
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability as Fraction Decimal Percent' AND grade_level_min = 6),
  'Probability as Fraction Decimal Percent Topic Guide', 'Express probability in different forms',
  'PROBABILITY AS FRACTION DECIMAL PERCENT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of probability as fraction decimal percent
2. Apply strategies to solve problems involving probability as fraction decimal percent
3. Demonstrate fluency with probability as fraction decimal percent in various contexts
4. Connect probability as fraction decimal percent to real-world situations

KEY CONCEPTS:
- Express probability in different forms
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires probability as fraction decimal percent.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability as Fraction Decimal Percent' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Experimental Probability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Experimental Probability' AND grade_level_min = 6),
  'Experimental Probability Topic Guide', 'Find probability from experiments',
  'EXPERIMENTAL PROBABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of experimental probability
2. Apply strategies to solve problems involving experimental probability
3. Demonstrate fluency with experimental probability in various contexts
4. Connect experimental probability to real-world situations

KEY CONCEPTS:
- Find probability from experiments
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires experimental probability.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Experimental Probability' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Comparing Theoretical and Experimental
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Theoretical and Experimental' AND grade_level_min = 6),
  'Comparing Theoretical and Experimental Topic Guide', 'Compare types of probability',
  'COMPARING THEORETICAL AND EXPERIMENTAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of comparing theoretical and experimental
2. Apply strategies to solve problems involving comparing theoretical and experimental
3. Demonstrate fluency with comparing theoretical and experimental in various contexts
4. Connect comparing theoretical and experimental to real-world situations

KEY CONCEPTS:
- Compare types of probability
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires comparing theoretical and experimental.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Theoretical and Experimental' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Sample Space
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sample Space' AND grade_level_min = 6),
  'Sample Space Topic Guide', 'List all possible outcomes',
  'SAMPLE SPACE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of sample space
2. Apply strategies to solve problems involving sample space
3. Demonstrate fluency with sample space in various contexts
4. Connect sample space to real-world situations

KEY CONCEPTS:
- List all possible outcomes
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires sample space.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sample Space' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Tree Diagrams
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tree Diagrams' AND grade_level_min = 6),
  'Tree Diagrams Topic Guide', 'Use tree diagrams for compound events',
  'TREE DIAGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of tree diagrams
2. Apply strategies to solve problems involving tree diagrams
3. Demonstrate fluency with tree diagrams in various contexts
4. Connect tree diagrams to real-world situations

KEY CONCEPTS:
- Use tree diagrams for compound events
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires tree diagrams.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tree Diagrams' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Compound Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Events' AND grade_level_min = 6),
  'Compound Events Topic Guide', 'Find probability of compound events',
  'COMPOUND EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of compound events
2. Apply strategies to solve problems involving compound events
3. Demonstrate fluency with compound events in various contexts
4. Connect compound events to real-world situations

KEY CONCEPTS:
- Find probability of compound events
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires compound events.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Events' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Independent Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Independent Events' AND grade_level_min = 6),
  'Independent Events Topic Guide', 'Calculate independent probability',
  'INDEPENDENT EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of independent events
2. Apply strategies to solve problems involving independent events
3. Demonstrate fluency with independent events in various contexts
4. Connect independent events to real-world situations

KEY CONCEPTS:
- Calculate independent probability
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires independent events.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Independent Events' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Simulations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simulations' AND grade_level_min = 6),
  'Simulations Topic Guide', 'Design and use probability simulations',
  'SIMULATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of simulations
2. Apply strategies to solve problems involving simulations
3. Demonstrate fluency with simulations in various contexts
4. Connect simulations to real-world situations

KEY CONCEPTS:
- Design and use probability simulations
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires simulations.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simulations' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- FRACTIONS (4 topics)
-- ============================================================================


-- Dividing Fractions by Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Fractions by Fractions' AND grade_level_min = 6),
  'Dividing Fractions by Fractions Topic Guide', 'Divide fraction by fraction',
  'DIVIDING FRACTIONS BY FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of dividing fractions by fractions
2. Apply strategies to solve problems involving dividing fractions by fractions
3. Demonstrate fluency with dividing fractions by fractions in various contexts
4. Connect dividing fractions by fractions to real-world situations

KEY CONCEPTS:
- Divide fraction by fraction
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires dividing fractions by fractions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Fractions by Fractions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Dividing Mixed Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Mixed Numbers' AND grade_level_min = 6),
  'Dividing Mixed Numbers Topic Guide', 'Divide mixed numbers',
  'DIVIDING MIXED NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of dividing mixed numbers
2. Apply strategies to solve problems involving dividing mixed numbers
3. Demonstrate fluency with dividing mixed numbers in various contexts
4. Connect dividing mixed numbers to real-world situations

KEY CONCEPTS:
- Divide mixed numbers
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires dividing mixed numbers.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Mixed Numbers' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Fraction Division Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Fraction Division Word Problems' AND grade_level_min = 6),
  'Fraction Division Word Problems Topic Guide', 'Solve division word problems',
  'FRACTION DIVISION WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of fraction division word problems
2. Apply strategies to solve problems involving fraction division word problems
3. Demonstrate fluency with fraction division word problems in various contexts
4. Connect fraction division word problems to real-world situations

KEY CONCEPTS:
- Solve division word problems
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires fraction division word problems.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Fraction Division Word Problems' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Complex Fractions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complex Fractions' AND grade_level_min = 6),
  'Complex Fractions Topic Guide', 'Simplify complex fractions',
  'COMPLEX FRACTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of complex fractions
2. Apply strategies to solve problems involving complex fractions
3. Demonstrate fluency with complex fractions in various contexts
4. Connect complex fractions to real-world situations

KEY CONCEPTS:
- Simplify complex fractions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires complex fractions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complex Fractions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- ============================================================================
-- GEOMETRY (4 topics)
-- ============================================================================


-- Volume of Rectangular Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Rectangular Prisms' AND grade_level_min = 6),
  'Volume of Rectangular Prisms Topic Guide', 'Use V = l × w × h',
  'VOLUME OF RECTANGULAR PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of volume of rectangular prisms
2. Apply strategies to solve problems involving volume of rectangular prisms
3. Demonstrate fluency with volume of rectangular prisms in various contexts
4. Connect volume of rectangular prisms to real-world situations

KEY CONCEPTS:
- Use V = l × w × h
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires volume of rectangular prisms.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Rectangular Prisms' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Volume with Fractional Dimensions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume with Fractional Dimensions' AND grade_level_min = 6),
  'Volume with Fractional Dimensions Topic Guide', 'Calculate volume with fractions',
  'VOLUME WITH FRACTIONAL DIMENSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of volume with fractional dimensions
2. Apply strategies to solve problems involving volume with fractional dimensions
3. Demonstrate fluency with volume with fractional dimensions in various contexts
4. Connect volume with fractional dimensions to real-world situations

KEY CONCEPTS:
- Calculate volume with fractions
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires volume with fractional dimensions.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume with Fractional Dimensions' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- Volume of Composite Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Composite Figures' AND grade_level_min = 6),
  'Volume of Composite Figures Topic Guide', 'Find volume of combined shapes',
  'VOLUME OF COMPOSITE FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of volume of composite figures
2. Apply strategies to solve problems involving volume of composite figures
3. Demonstrate fluency with volume of composite figures in various contexts
4. Connect volume of composite figures to real-world situations

KEY CONCEPTS:
- Find volume of combined shapes
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires volume of composite figures.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Composite Figures' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;


-- 3D Figures from Nets
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '3D Figures from Nets' AND grade_level_min = 6),
  '3D Figures from Nets Topic Guide', 'Identify 3D shapes from nets',
  '3D FIGURES FROM NETS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of 3d figures from nets
2. Apply strategies to solve problems involving 3d figures from nets
3. Demonstrate fluency with 3d figures from nets in various contexts
4. Connect 3d figures from nets to real-world situations

KEY CONCEPTS:
- Identify 3D shapes from nets
- Visual models and representations enhance understanding
- Multiple solution strategies are available
- Connections to prior learning strengthen retention
- Real-world applications demonstrate relevance

COMMON MISCONCEPTIONS:
- Confusing this topic with related but distinct concepts
- Applying procedures without understanding
- Not checking work for reasonableness
- Overlooking special cases or exceptions

TEACHING SEQUENCE:
1. HOOK (3 minutes):
   Present an engaging real-world problem that requires 3d figures from nets.

2. DIRECT INSTRUCTION (10 minutes):
   Model the concept using visual representations and clear examples.
   Demonstrate step-by-step procedures.
   Think aloud to make reasoning visible.
   Connect to previously learned concepts.

3. GUIDED PRACTICE (12 minutes):
   Work through problems together with student input.
   Use multiple representations (visual, numerical, symbolic).
   Address common errors as they arise.
   Encourage students to explain their thinking.

4. INDEPENDENT PRACTICE (10 minutes):
   Students solve varied problems independently.
   Apply concepts to new situations.
   Begin homework or extended practice.

DIFFERENTIATION:
For Struggling Learners:
- Provide visual aids and manipulatives
- Break tasks into smaller, manageable steps
- Offer additional practice with simpler problems
- Use peer tutoring and small group instruction

For Advanced Learners:
- Provide extension problems with greater complexity
- Encourage exploration of patterns and generalizations
- Introduce related advanced concepts
- Challenge with open-ended problem-solving tasks

ASSESSMENT INDICATORS:
- Accurately applies concepts and procedures
- Explains reasoning clearly and logically
- Solves problems efficiently and accurately
- Demonstrates understanding through multiple representations', 50
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '3D Figures from Nets' AND grade_level_min = 6)
ON CONFLICT DO NOTHING;
