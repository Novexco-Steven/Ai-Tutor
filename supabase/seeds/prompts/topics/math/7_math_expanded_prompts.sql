-- Grade 7 Math Expanded Topic Prompts
-- Comprehensive teaching prompts for all Grade {grade_level} Math topics
-- ============================================================================

-- ============================================================================
-- PROPORTIONAL RELATIONSHIPS (8 topics)
-- ============================================================================

-- Identifying Proportional Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Identifying Proportional Relationships' AND grade_level_min = 7),
  'Identifying Proportional Relationships Topic Guide', 'Determine if relationships are proportional',
  'IDENTIFYING PROPORTIONAL RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for identifying proportional relationships
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Determine if relationships are proportional
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
   Engage students with a compelling real-world problem requiring identifying proportional relationships.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Identifying Proportional Relationships' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Proportional Relationships in Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proportional Relationships in Tables' AND grade_level_min = 7),
  'Proportional Relationships in Tables Topic Guide', 'Find proportional relationships in tables',
  'PROPORTIONAL RELATIONSHIPS IN TABLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for proportional relationships in tables
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find proportional relationships in tables
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
   Engage students with a compelling real-world problem requiring proportional relationships in tables.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proportional Relationships in Tables' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Constant of Proportionality
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Constant of Proportionality' AND grade_level_min = 7),
  'Constant of Proportionality Topic Guide', 'Calculate and interpret k',
  'CONSTANT OF PROPORTIONALITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for constant of proportionality
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate and interpret k
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
   Engage students with a compelling real-world problem requiring constant of proportionality.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Constant of Proportionality' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Proportional Relationships in Graphs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proportional Relationships in Graphs' AND grade_level_min = 7),
  'Proportional Relationships in Graphs Topic Guide', 'Graph proportional relationships',
  'PROPORTIONAL RELATIONSHIPS IN GRAPHS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for proportional relationships in graphs
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Graph proportional relationships
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
   Engage students with a compelling real-world problem requiring proportional relationships in graphs.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proportional Relationships in Graphs' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Equations for Proportional Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations for Proportional Relationships' AND grade_level_min = 7),
  'Equations for Proportional Relationships Topic Guide', 'Write y = kx equations',
  'EQUATIONS FOR PROPORTIONAL RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for equations for proportional relationships
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write y = kx equations
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
   Engage students with a compelling real-world problem requiring equations for proportional relationships.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations for Proportional Relationships' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Comparing Proportional Relationships
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Proportional Relationships' AND grade_level_min = 7),
  'Comparing Proportional Relationships Topic Guide', 'Compare different representations',
  'COMPARING PROPORTIONAL RELATIONSHIPS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for comparing proportional relationships
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare different representations
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
   Engage students with a compelling real-world problem requiring comparing proportional relationships.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Proportional Relationships' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Unit Rate as Slope
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Unit Rate as Slope' AND grade_level_min = 7),
  'Unit Rate as Slope Topic Guide', 'Connect unit rate to slope',
  'UNIT RATE AS SLOPE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for unit rate as slope
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Connect unit rate to slope
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
   Engage students with a compelling real-world problem requiring unit rate as slope.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Unit Rate as Slope' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Proportional Relationship Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proportional Relationship Word Problems' AND grade_level_min = 7),
  'Proportional Relationship Word Problems Topic Guide', 'Solve real-world problems',
  'PROPORTIONAL RELATIONSHIP WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for proportional relationship word problems
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
   Engage students with a compelling real-world problem requiring proportional relationship word problems.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proportional Relationship Word Problems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PERCENT PROBLEMS (11 topics)
-- ============================================================================

-- Percent Increase
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Increase' AND grade_level_min = 7),
  'Percent Increase Topic Guide', 'Calculate percent increase',
  'PERCENT INCREASE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for percent increase
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate percent increase
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
   Engage students with a compelling real-world problem requiring percent increase.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Increase' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Percent Decrease
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Decrease' AND grade_level_min = 7),
  'Percent Decrease Topic Guide', 'Calculate percent decrease',
  'PERCENT DECREASE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for percent decrease
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate percent decrease
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
   Engage students with a compelling real-world problem requiring percent decrease.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Decrease' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Percent Error
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Percent Error' AND grade_level_min = 7),
  'Percent Error Topic Guide', 'Calculate percent error',
  'PERCENT ERROR - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for percent error
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate percent error
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
   Engage students with a compelling real-world problem requiring percent error.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Percent Error' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Markup
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Markup' AND grade_level_min = 7),
  'Markup Topic Guide', 'Calculate retail markup',
  'MARKUP - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for markup
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate retail markup
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
   Engage students with a compelling real-world problem requiring markup.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Markup' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Markdown and Discount
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Markdown and Discount' AND grade_level_min = 7),
  'Markdown and Discount Topic Guide', 'Calculate markdowns and discounts',
  'MARKDOWN AND DISCOUNT - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for markdown and discount
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate markdowns and discounts
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
   Engage students with a compelling real-world problem requiring markdown and discount.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Markdown and Discount' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Sales Tax and Total Cost
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sales Tax and Total Cost' AND grade_level_min = 7),
  'Sales Tax and Total Cost Topic Guide', 'Calculate tax and totals',
  'SALES TAX AND TOTAL COST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for sales tax and total cost
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate tax and totals
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
   Engage students with a compelling real-world problem requiring sales tax and total cost.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sales Tax and Total Cost' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Tips and Gratuity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tips and Gratuity' AND grade_level_min = 7),
  'Tips and Gratuity Topic Guide', 'Calculate appropriate tips',
  'TIPS AND GRATUITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for tips and gratuity
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate appropriate tips
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
   Engage students with a compelling real-world problem requiring tips and gratuity.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tips and Gratuity' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Commission
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Commission' AND grade_level_min = 7),
  'Commission Topic Guide', 'Calculate sales commission',
  'COMMISSION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for commission
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate sales commission
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
   Engage students with a compelling real-world problem requiring commission.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Commission' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Simple Interest
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simple Interest' AND grade_level_min = 7),
  'Simple Interest Topic Guide', 'Calculate simple interest',
  'SIMPLE INTEREST - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for simple interest
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate simple interest
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
   Engage students with a compelling real-world problem requiring simple interest.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simple Interest' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Compound Interest Introduction
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Compound Interest Introduction' AND grade_level_min = 7),
  'Compound Interest Introduction Topic Guide', 'Understand compound interest',
  'COMPOUND INTEREST INTRODUCTION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for compound interest introduction
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand compound interest
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
   Engage students with a compelling real-world problem requiring compound interest introduction.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Compound Interest Introduction' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Multi-Step Percent Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multi-Step Percent Problems' AND grade_level_min = 7),
  'Multi-Step Percent Problems Topic Guide', 'Solve complex percent problems',
  'MULTI-STEP PERCENT PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for multi-step percent problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve complex percent problems
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
   Engage students with a compelling real-world problem requiring multi-step percent problems.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multi-Step Percent Problems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- RATIONAL NUMBER OPERATIONS (10 topics)
-- ============================================================================

-- Adding Rational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding Rational Numbers' AND grade_level_min = 7),
  'Adding Rational Numbers Topic Guide', 'Add fractions, decimals, integers',
  'ADDING RATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for adding rational numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Add fractions, decimals, integers
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
   Engage students with a compelling real-world problem requiring adding rational numbers.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding Rational Numbers' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Subtracting Rational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Subtracting Rational Numbers' AND grade_level_min = 7),
  'Subtracting Rational Numbers Topic Guide', 'Subtract rational numbers',
  'SUBTRACTING RATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for subtracting rational numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Subtract rational numbers
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
   Engage students with a compelling real-world problem requiring subtracting rational numbers.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Subtracting Rational Numbers' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Properties of Addition
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Properties of Addition' AND grade_level_min = 7),
  'Properties of Addition Topic Guide', 'Apply commutative and associative properties',
  'PROPERTIES OF ADDITION - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for properties of addition
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply commutative and associative properties
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
   Engage students with a compelling real-world problem requiring properties of addition.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Properties of Addition' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Multiplying Rational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Multiplying Rational Numbers' AND grade_level_min = 7),
  'Multiplying Rational Numbers Topic Guide', 'Multiply positive and negative rationals',
  'MULTIPLYING RATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for multiplying rational numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Multiply positive and negative rationals
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
   Engage students with a compelling real-world problem requiring multiplying rational numbers.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Multiplying Rational Numbers' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Dividing Rational Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dividing Rational Numbers' AND grade_level_min = 7),
  'Dividing Rational Numbers Topic Guide', 'Divide positive and negative rationals',
  'DIVIDING RATIONAL NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for dividing rational numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Divide positive and negative rationals
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
   Engage students with a compelling real-world problem requiring dividing rational numbers.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dividing Rational Numbers' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Converting Rational to Decimal
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converting Rational to Decimal' AND grade_level_min = 7),
  'Converting Rational to Decimal Topic Guide', 'Convert fractions to decimals',
  'CONVERTING RATIONAL TO DECIMAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for converting rational to decimal
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Convert fractions to decimals
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
   Engage students with a compelling real-world problem requiring converting rational to decimal.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converting Rational to Decimal' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Converting Decimal to Rational
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Converting Decimal to Rational' AND grade_level_min = 7),
  'Converting Decimal to Rational Topic Guide', 'Convert decimals to fractions',
  'CONVERTING DECIMAL TO RATIONAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for converting decimal to rational
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Convert decimals to fractions
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
   Engage students with a compelling real-world problem requiring converting decimal to rational.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Converting Decimal to Rational' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Operations with Mixed Numbers
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Operations with Mixed Numbers' AND grade_level_min = 7),
  'Operations with Mixed Numbers Topic Guide', 'Perform operations with mixed numbers',
  'OPERATIONS WITH MIXED NUMBERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for operations with mixed numbers
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Perform operations with mixed numbers
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
   Engage students with a compelling real-world problem requiring operations with mixed numbers.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Operations with Mixed Numbers' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Order of Operations with Rationals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Order of Operations with Rationals' AND grade_level_min = 7),
  'Order of Operations with Rationals Topic Guide', 'Apply order of operations',
  'ORDER OF OPERATIONS WITH RATIONALS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for order of operations with rationals
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Apply order of operations
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
   Engage students with a compelling real-world problem requiring order of operations with rationals.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Order of Operations with Rationals' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Real-World Rational Number Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Real-World Rational Number Problems' AND grade_level_min = 7),
  'Real-World Rational Number Problems Topic Guide', 'Solve practical problems',
  'REAL-WORLD RATIONAL NUMBER PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for real-world rational number problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve practical problems
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
   Engage students with a compelling real-world problem requiring real-world rational number problems.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Real-World Rational Number Problems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- EXPRESSIONS AND EQUATIONS (12 topics)
-- ============================================================================

-- Simplifying Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simplifying Expressions' AND grade_level_min = 7),
  'Simplifying Expressions Topic Guide', 'Combine like terms and simplify',
  'SIMPLIFYING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for simplifying expressions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Combine like terms and simplify
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
   Engage students with a compelling real-world problem requiring simplifying expressions.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simplifying Expressions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Expanding Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Expanding Expressions' AND grade_level_min = 7),
  'Expanding Expressions Topic Guide', 'Use distributive property to expand',
  'EXPANDING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for expanding expressions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use distributive property to expand
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
   Engage students with a compelling real-world problem requiring expanding expressions.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Expanding Expressions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Factoring Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Factoring Expressions' AND grade_level_min = 7),
  'Factoring Expressions Topic Guide', 'Factor using GCF',
  'FACTORING EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for factoring expressions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Factor using GCF
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
   Engage students with a compelling real-world problem requiring factoring expressions.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Factoring Expressions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Adding and Subtracting Linear Expressions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adding and Subtracting Linear Expressions' AND grade_level_min = 7),
  'Adding and Subtracting Linear Expressions Topic Guide', 'Combine linear expressions',
  'ADDING AND SUBTRACTING LINEAR EXPRESSIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for adding and subtracting linear expressions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Combine linear expressions
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
   Engage students with a compelling real-world problem requiring adding and subtracting linear expressions.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adding and Subtracting Linear Expressions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Writing Two-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Two-Step Equations' AND grade_level_min = 7),
  'Writing Two-Step Equations Topic Guide', 'Write equations from situations',
  'WRITING TWO-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for writing two-step equations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write equations from situations
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
   Engage students with a compelling real-world problem requiring writing two-step equations.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Two-Step Equations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Solving Two-Step Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Two-Step Equations' AND grade_level_min = 7),
  'Solving Two-Step Equations Topic Guide', 'Solve ax + b = c equations',
  'SOLVING TWO-STEP EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for solving two-step equations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve ax + b = c equations
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
   Engage students with a compelling real-world problem requiring solving two-step equations.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Two-Step Equations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Equations with Rational Coefficients
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Rational Coefficients' AND grade_level_min = 7),
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Rational Coefficients' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Equations with Variables on Both Sides
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations with Variables on Both Sides' AND grade_level_min = 7),
  'Equations with Variables on Both Sides Topic Guide', 'Solve when variable appears twice',
  'EQUATIONS WITH VARIABLES ON BOTH SIDES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for equations with variables on both sides
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
   Engage students with a compelling real-world problem requiring equations with variables on both sides.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations with Variables on Both Sides' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Writing Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Writing Inequalities' AND grade_level_min = 7),
  'Writing Inequalities Topic Guide', 'Write inequalities from situations',
  'WRITING INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for writing inequalities
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Write inequalities from situations
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
   Engage students with a compelling real-world problem requiring writing inequalities.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Writing Inequalities' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Solving Two-Step Inequalities
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Two-Step Inequalities' AND grade_level_min = 7),
  'Solving Two-Step Inequalities Topic Guide', 'Solve and graph inequalities',
  'SOLVING TWO-STEP INEQUALITIES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for solving two-step inequalities
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve and graph inequalities
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
   Engage students with a compelling real-world problem requiring solving two-step inequalities.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Two-Step Inequalities' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Graphing Inequalities on Number Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Graphing Inequalities on Number Lines' AND grade_level_min = 7),
  'Graphing Inequalities on Number Lines Topic Guide', 'Graph solutions on number lines',
  'GRAPHING INEQUALITIES ON NUMBER LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for graphing inequalities on number lines
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Graph solutions on number lines
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
   Engage students with a compelling real-world problem requiring graphing inequalities on number lines.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Graphing Inequalities on Number Lines' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Modeling with Equations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Modeling with Equations' AND grade_level_min = 7),
  'Modeling with Equations Topic Guide', 'Create and solve equations from scenarios',
  'MODELING WITH EQUATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for modeling with equations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Create and solve equations from scenarios
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
   Engage students with a compelling real-world problem requiring modeling with equations.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Modeling with Equations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- ANGLE RELATIONSHIPS (10 topics)
-- ============================================================================

-- Complementary Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Complementary Angles' AND grade_level_min = 7),
  'Complementary Angles Topic Guide', 'Find complementary angle measures',
  'COMPLEMENTARY ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for complementary angles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find complementary angle measures
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
   Engage students with a compelling real-world problem requiring complementary angles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Complementary Angles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Supplementary Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Supplementary Angles' AND grade_level_min = 7),
  'Supplementary Angles Topic Guide', 'Find supplementary angle measures',
  'SUPPLEMENTARY ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for supplementary angles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find supplementary angle measures
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
   Engage students with a compelling real-world problem requiring supplementary angles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Supplementary Angles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Vertical Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Vertical Angles' AND grade_level_min = 7),
  'Vertical Angles Topic Guide', 'Identify and use vertical angles',
  'VERTICAL ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for vertical angles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify and use vertical angles
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
   Engage students with a compelling real-world problem requiring vertical angles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Vertical Angles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Adjacent Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Adjacent Angles' AND grade_level_min = 7),
  'Adjacent Angles Topic Guide', 'Understand and use adjacent angles',
  'ADJACENT ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for adjacent angles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand and use adjacent angles
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
   Engage students with a compelling real-world problem requiring adjacent angles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Adjacent Angles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Angles in Triangle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angles in Triangle' AND grade_level_min = 7),
  'Angles in Triangle Topic Guide', 'Use 180° triangle sum',
  'ANGLES IN TRIANGLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for angles in triangle
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use 180° triangle sum
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
   Engage students with a compelling real-world problem requiring angles in triangle.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angles in Triangle' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Exterior Angles of Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Exterior Angles of Triangles' AND grade_level_min = 7),
  'Exterior Angles of Triangles Topic Guide', 'Calculate exterior angle measures',
  'EXTERIOR ANGLES OF TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for exterior angles of triangles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate exterior angle measures
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
   Engage students with a compelling real-world problem requiring exterior angles of triangles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Exterior Angles of Triangles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Angles with Parallel Lines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angles with Parallel Lines' AND grade_level_min = 7),
  'Angles with Parallel Lines Topic Guide', 'Find angles with transversals',
  'ANGLES WITH PARALLEL LINES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for angles with parallel lines
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find angles with transversals
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
   Engage students with a compelling real-world problem requiring angles with parallel lines.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angles with Parallel Lines' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Corresponding Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Corresponding Angles' AND grade_level_min = 7),
  'Corresponding Angles Topic Guide', 'Identify corresponding angles',
  'CORRESPONDING ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for corresponding angles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify corresponding angles
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
   Engage students with a compelling real-world problem requiring corresponding angles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Corresponding Angles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Alternate Interior Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Alternate Interior Angles' AND grade_level_min = 7),
  'Alternate Interior Angles Topic Guide', 'Use alternate interior angles',
  'ALTERNATE INTERIOR ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for alternate interior angles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use alternate interior angles
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
   Engage students with a compelling real-world problem requiring alternate interior angles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Alternate Interior Angles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Angle Problem Solving
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angle Problem Solving' AND grade_level_min = 7),
  'Angle Problem Solving Topic Guide', 'Solve multi-step angle problems',
  'ANGLE PROBLEM SOLVING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for angle problem solving
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve multi-step angle problems
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
   Engage students with a compelling real-world problem requiring angle problem solving.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angle Problem Solving' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SCALE DRAWINGS (9 topics)
-- ============================================================================

-- Understanding Scale
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Scale' AND grade_level_min = 7),
  'Understanding Scale Topic Guide', 'Interpret scale ratios',
  'UNDERSTANDING SCALE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for understanding scale
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Interpret scale ratios
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
   Engage students with a compelling real-world problem requiring understanding scale.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Scale' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Reading Scale Drawings
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Reading Scale Drawings' AND grade_level_min = 7),
  'Reading Scale Drawings Topic Guide', 'Find actual dimensions from drawings',
  'READING SCALE DRAWINGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for reading scale drawings
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find actual dimensions from drawings
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
   Engage students with a compelling real-world problem requiring reading scale drawings.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Reading Scale Drawings' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Creating Scale Drawings
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Creating Scale Drawings' AND grade_level_min = 7),
  'Creating Scale Drawings Topic Guide', 'Create scale drawings',
  'CREATING SCALE DRAWINGS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for creating scale drawings
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Create scale drawings
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
   Engage students with a compelling real-world problem requiring creating scale drawings.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Creating Scale Drawings' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Scale Factor
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scale Factor' AND grade_level_min = 7),
  'Scale Factor Topic Guide', 'Calculate and use scale factor',
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
- Calculate and use scale factor
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale Factor' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Scale Factor and Area
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scale Factor and Area' AND grade_level_min = 7),
  'Scale Factor and Area Topic Guide', 'Relate scale factor to area',
  'SCALE FACTOR AND AREA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for scale factor and area
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Relate scale factor to area
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
   Engage students with a compelling real-world problem requiring scale factor and area.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale Factor and Area' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Scale Factor and Volume
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scale Factor and Volume' AND grade_level_min = 7),
  'Scale Factor and Volume Topic Guide', 'Relate scale factor to volume',
  'SCALE FACTOR AND VOLUME - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for scale factor and volume
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Relate scale factor to volume
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
   Engage students with a compelling real-world problem requiring scale factor and volume.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale Factor and Volume' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Map Scales
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Map Scales' AND grade_level_min = 7),
  'Map Scales Topic Guide', 'Calculate distances using map scales',
  'MAP SCALES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for map scales
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate distances using map scales
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
   Engage students with a compelling real-world problem requiring map scales.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Map Scales' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Blueprints and Floor Plans
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Blueprints and Floor Plans' AND grade_level_min = 7),
  'Blueprints and Floor Plans Topic Guide', 'Read and interpret blueprints',
  'BLUEPRINTS AND FLOOR PLANS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for blueprints and floor plans
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Read and interpret blueprints
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
   Engage students with a compelling real-world problem requiring blueprints and floor plans.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Blueprints and Floor Plans' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Scale Drawing Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Scale Drawing Word Problems' AND grade_level_min = 7),
  'Scale Drawing Word Problems Topic Guide', 'Solve real-world scale problems',
  'SCALE DRAWING WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for scale drawing word problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve real-world scale problems
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
   Engage students with a compelling real-world problem requiring scale drawing word problems.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Scale Drawing Word Problems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- CIRCLES (10 topics)
-- ============================================================================

-- Parts of a Circle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parts of a Circle' AND grade_level_min = 7),
  'Parts of a Circle Topic Guide', 'Identify radius, diameter, chord',
  'PARTS OF A CIRCLE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for parts of a circle
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify radius, diameter, chord
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
   Engage students with a compelling real-world problem requiring parts of a circle.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parts of a Circle' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Understanding Pi
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Understanding Pi' AND grade_level_min = 7),
  'Understanding Pi Topic Guide', 'Explore the relationship of C to d',
  'UNDERSTANDING PI - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for understanding pi
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Explore the relationship of C to d
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
   Engage students with a compelling real-world problem requiring understanding pi.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Understanding Pi' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Circumference from Diameter
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circumference from Diameter' AND grade_level_min = 7),
  'Circumference from Diameter Topic Guide', 'Calculate C = πd',
  'CIRCUMFERENCE FROM DIAMETER - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for circumference from diameter
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate C = πd
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
   Engage students with a compelling real-world problem requiring circumference from diameter.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circumference from Diameter' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Circumference from Radius
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circumference from Radius' AND grade_level_min = 7),
  'Circumference from Radius Topic Guide', 'Calculate C = 2πr',
  'CIRCUMFERENCE FROM RADIUS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for circumference from radius
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate C = 2πr
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
   Engage students with a compelling real-world problem requiring circumference from radius.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circumference from Radius' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Finding Diameter from Circumference
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Diameter from Circumference' AND grade_level_min = 7),
  'Finding Diameter from Circumference Topic Guide', 'Solve for diameter given C',
  'FINDING DIAMETER FROM CIRCUMFERENCE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding diameter from circumference
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve for diameter given C
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
   Engage students with a compelling real-world problem requiring finding diameter from circumference.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Diameter from Circumference' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Area of Circles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Area of Circles' AND grade_level_min = 7),
  'Area of Circles Topic Guide', 'Calculate A = πr²',
  'AREA OF CIRCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for area of circles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate A = πr²
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
   Engage students with a compelling real-world problem requiring area of circles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Area of Circles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Finding Radius from Area
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Finding Radius from Area' AND grade_level_min = 7),
  'Finding Radius from Area Topic Guide', 'Solve for radius given area',
  'FINDING RADIUS FROM AREA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for finding radius from area
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve for radius given area
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
   Engage students with a compelling real-world problem requiring finding radius from area.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Finding Radius from Area' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Semicircles and Quarter Circles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Semicircles and Quarter Circles' AND grade_level_min = 7),
  'Semicircles and Quarter Circles Topic Guide', 'Find perimeter and area of partial circles',
  'SEMICIRCLES AND QUARTER CIRCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for semicircles and quarter circles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Find perimeter and area of partial circles
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
   Engage students with a compelling real-world problem requiring semicircles and quarter circles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Semicircles and Quarter Circles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Composite Figures with Circles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composite Figures with Circles' AND grade_level_min = 7),
  'Composite Figures with Circles Topic Guide', 'Calculate area of shapes with circles',
  'COMPOSITE FIGURES WITH CIRCLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for composite figures with circles
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate area of shapes with circles
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
   Engage students with a compelling real-world problem requiring composite figures with circles.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composite Figures with Circles' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Circle Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circle Word Problems' AND grade_level_min = 7),
  'Circle Word Problems Topic Guide', 'Solve real-world circle problems',
  'CIRCLE WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for circle word problems
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Solve real-world circle problems
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
   Engage students with a compelling real-world problem requiring circle word problems.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circle Word Problems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- SURFACE AREA AND VOLUME (12 topics)
-- ============================================================================

-- Cross-Sections of 3D Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Cross-Sections of 3D Figures' AND grade_level_min = 7),
  'Cross-Sections of 3D Figures Topic Guide', 'Identify cross-sections',
  'CROSS-SECTIONS OF 3D FIGURES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for cross-sections of 3d figures
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify cross-sections
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
   Engage students with a compelling real-world problem requiring cross-sections of 3d figures.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Cross-Sections of 3D Figures' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Surface Area of Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Prisms' AND grade_level_min = 7),
  'Surface Area of Prisms Topic Guide', 'Calculate SA using formulas',
  'SURFACE AREA OF PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for surface area of prisms
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate SA using formulas
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
   Engage students with a compelling real-world problem requiring surface area of prisms.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Prisms' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Surface Area of Pyramids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 7),
  'Surface Area of Pyramids Topic Guide', 'Calculate SA of pyramids',
  'SURFACE AREA OF PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for surface area of pyramids
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate SA of pyramids
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
   Engage students with a compelling real-world problem requiring surface area of pyramids.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Pyramids' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Volume of Prisms
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Prisms' AND grade_level_min = 7),
  'Volume of Prisms Topic Guide', 'Calculate V = Bh',
  'VOLUME OF PRISMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for volume of prisms
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate V = Bh
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
   Engage students with a compelling real-world problem requiring volume of prisms.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Prisms' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Volume of Pyramids
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Pyramids' AND grade_level_min = 7),
  'Volume of Pyramids Topic Guide', 'Calculate V = 1/3 Bh',
  'VOLUME OF PYRAMIDS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for volume of pyramids
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate V = 1/3 Bh
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
   Engage students with a compelling real-world problem requiring volume of pyramids.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Pyramids' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Surface Area of Cylinders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Cylinders' AND grade_level_min = 7),
  'Surface Area of Cylinders Topic Guide', 'Calculate SA of cylinders',
  'SURFACE AREA OF CYLINDERS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for surface area of cylinders
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate SA of cylinders
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
   Engage students with a compelling real-world problem requiring surface area of cylinders.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Cylinders' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Volume of Cylinders
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Cylinders' AND grade_level_min = 7),
  'Volume of Cylinders Topic Guide', 'Calculate V = πr²h',
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
- Calculate V = πr²h
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Cylinders' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Surface Area of Cones
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area of Cones' AND grade_level_min = 7),
  'Surface Area of Cones Topic Guide', 'Calculate SA of cones',
  'SURFACE AREA OF CONES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for surface area of cones
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate SA of cones
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
   Engage students with a compelling real-world problem requiring surface area of cones.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area of Cones' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Volume of Cones
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Cones' AND grade_level_min = 7),
  'Volume of Cones Topic Guide', 'Calculate V = 1/3 πr²h',
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
- Calculate V = 1/3 πr²h
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Cones' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Volume of Spheres
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume of Spheres' AND grade_level_min = 7),
  'Volume of Spheres Topic Guide', 'Calculate V = 4/3 πr³',
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
- Calculate V = 4/3 πr³
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume of Spheres' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Composite 3D Figures
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Composite 3D Figures' AND grade_level_min = 7),
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Composite 3D Figures' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- 3D Figure Word Problems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '3D Figure Word Problems' AND grade_level_min = 7),
  '3D Figure Word Problems Topic Guide', 'Solve real-world problems',
  '3D FIGURE WORD PROBLEMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for 3d figure word problems
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
   Engage students with a compelling real-world problem requiring 3d figure word problems.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '3D Figure Word Problems' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- PROBABILITY (11 topics)
-- ============================================================================

-- Probability Review
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability Review' AND grade_level_min = 7),
  'Probability Review Topic Guide', 'Review basic probability concepts',
  'PROBABILITY REVIEW - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for probability review
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Review basic probability concepts
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
   Engage students with a compelling real-world problem requiring probability review.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability Review' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Sample Space
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Sample Space' AND grade_level_min = 7),
  'Sample Space Topic Guide', 'List all possible outcomes',
  'SAMPLE SPACE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for sample space
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- List all possible outcomes
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
   Engage students with a compelling real-world problem requiring sample space.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Sample Space' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Probability of Compound Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Probability of Compound Events' AND grade_level_min = 7),
  'Probability of Compound Events Topic Guide', 'Calculate P(A and B), P(A or B)',
  'PROBABILITY OF COMPOUND EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for probability of compound events
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate P(A and B), P(A or B)
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
   Engage students with a compelling real-world problem requiring probability of compound events.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Probability of Compound Events' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Independent Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Independent Events' AND grade_level_min = 7),
  'Independent Events Topic Guide', 'Calculate probability of independent events',
  'INDEPENDENT EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for independent events
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate probability of independent events
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
   Engage students with a compelling real-world problem requiring independent events.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Independent Events' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Dependent Events
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dependent Events' AND grade_level_min = 7),
  'Dependent Events Topic Guide', 'Calculate probability of dependent events',
  'DEPENDENT EVENTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for dependent events
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate probability of dependent events
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
   Engage students with a compelling real-world problem requiring dependent events.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dependent Events' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Tree Diagrams
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Tree Diagrams' AND grade_level_min = 7),
  'Tree Diagrams Topic Guide', 'Use tree diagrams for compound events',
  'TREE DIAGRAMS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for tree diagrams
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Use tree diagrams for compound events
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
   Engage students with a compelling real-world problem requiring tree diagrams.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Tree Diagrams' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Organized Lists
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Organized Lists' AND grade_level_min = 7),
  'Organized Lists Topic Guide', 'Create systematic lists of outcomes',
  'ORGANIZED LISTS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for organized lists
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Create systematic lists of outcomes
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
   Engage students with a compelling real-world problem requiring organized lists.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Organized Lists' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Two-Way Tables
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 7),
  'Two-Way Tables Topic Guide', 'Use two-way frequency tables',
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
- Use two-way frequency tables
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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Two-Way Tables' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Simulations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Simulations' AND grade_level_min = 7),
  'Simulations Topic Guide', 'Design probability simulations',
  'SIMULATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for simulations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Design probability simulations
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
   Engage students with a compelling real-world problem requiring simulations.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Simulations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Experimental vs Theoretical
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Experimental vs Theoretical' AND grade_level_min = 7),
  'Experimental vs Theoretical Topic Guide', 'Compare types of probability',
  'EXPERIMENTAL VS THEORETICAL - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for experimental vs theoretical
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare types of probability
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
   Engage students with a compelling real-world problem requiring experimental vs theoretical.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Experimental vs Theoretical' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Expected Value
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Expected Value' AND grade_level_min = 7),
  'Expected Value Topic Guide', 'Calculate expected value',
  'EXPECTED VALUE - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for expected value
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Calculate expected value
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
   Engage students with a compelling real-world problem requiring expected value.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Expected Value' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;

-- ============================================================================
-- STATISTICS (10 topics)
-- ============================================================================

-- Populations and Samples
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Populations and Samples' AND grade_level_min = 7),
  'Populations and Samples Topic Guide', 'Distinguish populations from samples',
  'POPULATIONS AND SAMPLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for populations and samples
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Distinguish populations from samples
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
   Engage students with a compelling real-world problem requiring populations and samples.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Populations and Samples' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Random Sampling
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Random Sampling' AND grade_level_min = 7),
  'Random Sampling Topic Guide', 'Understand random sampling methods',
  'RANDOM SAMPLING - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for random sampling
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Understand random sampling methods
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
   Engage students with a compelling real-world problem requiring random sampling.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Random Sampling' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Valid Samples
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Valid Samples' AND grade_level_min = 7),
  'Valid Samples Topic Guide', 'Identify valid representative samples',
  'VALID SAMPLES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for valid samples
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify valid representative samples
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
   Engage students with a compelling real-world problem requiring valid samples.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Valid Samples' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Making Inferences
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Making Inferences' AND grade_level_min = 7),
  'Making Inferences Topic Guide', 'Make inferences from sample data',
  'MAKING INFERENCES - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for making inferences
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Make inferences from sample data
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
   Engage students with a compelling real-world problem requiring making inferences.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Making Inferences' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Comparing Two Populations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Comparing Two Populations' AND grade_level_min = 7),
  'Comparing Two Populations Topic Guide', 'Compare data from two groups',
  'COMPARING TWO POPULATIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for comparing two populations
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare data from two groups
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
   Engage students with a compelling real-world problem requiring comparing two populations.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Comparing Two Populations' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Measures of Center Comparison
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measures of Center Comparison' AND grade_level_min = 7),
  'Measures of Center Comparison Topic Guide', 'Compare means and medians',
  'MEASURES OF CENTER COMPARISON - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for measures of center comparison
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare means and medians
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
   Engage students with a compelling real-world problem requiring measures of center comparison.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measures of Center Comparison' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Measures of Variability
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measures of Variability' AND grade_level_min = 7),
  'Measures of Variability Topic Guide', 'Compare MAD and IQR',
  'MEASURES OF VARIABILITY - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for measures of variability
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Compare MAD and IQR
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
   Engage students with a compelling real-world problem requiring measures of variability.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measures of Variability' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Visual Overlap of Distributions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Visual Overlap of Distributions' AND grade_level_min = 7),
  'Visual Overlap of Distributions Topic Guide', 'Analyze distribution overlap',
  'VISUAL OVERLAP OF DISTRIBUTIONS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for visual overlap of distributions
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Analyze distribution overlap
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
   Engage students with a compelling real-world problem requiring visual overlap of distributions.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Visual Overlap of Distributions' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Drawing Conclusions from Data
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Drawing Conclusions from Data' AND grade_level_min = 7),
  'Drawing Conclusions from Data Topic Guide', 'Make evidence-based conclusions',
  'DRAWING CONCLUSIONS FROM DATA - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for drawing conclusions from data
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Make evidence-based conclusions
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
   Engage students with a compelling real-world problem requiring drawing conclusions from data.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Drawing Conclusions from Data' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;


-- Misleading Statistics
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Misleading Statistics' AND grade_level_min = 7),
  'Misleading Statistics Topic Guide', 'Identify misleading statistics',
  'MISLEADING STATISTICS - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for misleading statistics
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- Identify misleading statistics
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
   Engage students with a compelling real-world problem requiring misleading statistics.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Misleading Statistics' AND grade_level_min = 7)
ON CONFLICT DO NOTHING;
