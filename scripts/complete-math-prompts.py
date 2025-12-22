#!/usr/bin/env python3
"""
Generate comprehensive teaching prompts for Grade 6-8 Math topics.
This script creates SQL files with detailed pedagogical guidance for each topic.
"""

import re
import sys

# Grade 6 remaining topics by unit
GRADE_6_REMAINING = {
    "Expressions and Equations": [
        ("Writing Algebraic Expressions", "Translate words to algebraic expressions"),
        ("Evaluating Expressions", "Substitute values and evaluate expressions"),
        ("Properties of Operations", "Apply commutative, associative, and distributive properties"),
        ("Combining Like Terms", "Simplify expressions with like terms"),
        ("Distributive Property", "Expand expressions using distribution"),
        ("Factoring Expressions", "Factor expressions using GCF"),
        ("Equivalent Expressions", "Identify and write equivalent expressions"),
        ("Writing Equations", "Write equations from word situations"),
        ("Solving Addition Equations", "Solve equations like x + 5 = 12"),
        ("Solving Subtraction Equations", "Solve equations like x - 3 = 8"),
        ("Solving Multiplication Equations", "Solve equations like 4x = 24"),
        ("Solving Division Equations", "Solve equations like x/5 = 7"),
        ("Two-Step Equations", "Solve equations with two operations"),
        ("Writing Inequalities", "Translate situations to inequalities"),
        ("Solving Inequalities", "Solve and graph one-step inequalities"),
        ("Equations and Inequalities Word Problems", "Solve real-world algebra problems"),
    ],
    "Coordinate Plane": [
        ("Four Quadrants Review", "Plot points in all four quadrants"),
        ("Reflecting Points", "Reflect points across axes"),
        ("Distance on Coordinate Plane", "Calculate horizontal and vertical distances"),
        ("Absolute Value and Distance", "Use absolute value to find distance"),
        ("Polygons on Coordinate Plane", "Draw and identify polygons using coordinates"),
        ("Perimeter on Coordinate Plane", "Calculate perimeter using coordinates"),
        ("Area on Coordinate Plane", "Calculate area using coordinates"),
        ("Graphing Equations", "Graph linear equations"),
        ("Coordinate Plane Word Problems", "Solve real-world coordinate problems"),
    ],
    "Area and Surface Area": [
        ("Area of Parallelograms", "Use A = b × h for parallelograms"),
        ("Area of Triangles", "Use A = 1/2 × b × h for triangles"),
        ("Area of Trapezoids", "Use formula for trapezoid area"),
        ("Area of Composite Figures", "Break complex shapes into simpler ones"),
        ("Area on Coordinate Plane", "Find area using coordinate points"),
        ("Understanding Nets", "Identify nets of 3D figures"),
        ("Surface Area of Rectangular Prisms", "Calculate surface area using nets"),
        ("Surface Area of Triangular Prisms", "Calculate surface area of triangular prisms"),
        ("Surface Area of Pyramids", "Calculate surface area of pyramids"),
        ("Surface Area Word Problems", "Solve real-world surface area problems"),
    ],
    "Statistics": [
        ("Statistical Questions", "Identify statistical questions"),
        ("Mean", "Calculate mean of data sets"),
        ("Median", "Find median of data sets"),
        ("Mode", "Identify mode in data sets"),
        ("Range", "Calculate range of data"),
        ("Choosing Measures of Center", "Select appropriate measure"),
        ("Mean Absolute Deviation", "Calculate MAD"),
        ("Interquartile Range", "Find IQR of data sets"),
        ("Dot Plots", "Create and interpret dot plots"),
        ("Histograms", "Create and interpret histograms"),
        ("Box Plots", "Create and interpret box-and-whisker plots"),
        ("Comparing Data Displays", "Choose appropriate data displays"),
        ("Describing Distributions", "Describe shape, center, spread"),
        ("Outliers", "Identify and understand outliers"),
    ],
    "Probability": [
        ("Probability Basics", "Understand probability as a ratio"),
        ("Theoretical Probability", "Calculate probability of simple events"),
        ("Probability as Fraction Decimal Percent", "Express probability in different forms"),
        ("Experimental Probability", "Find probability from experiments"),
        ("Comparing Theoretical and Experimental", "Compare types of probability"),
        ("Sample Space", "List all possible outcomes"),
        ("Tree Diagrams", "Use tree diagrams for compound events"),
        ("Compound Events", "Find probability of compound events"),
        ("Independent Events", "Calculate independent probability"),
        ("Simulations", "Design and use probability simulations"),
    ],
    "Fractions": [
        ("Dividing Fractions by Fractions", "Divide fraction by fraction"),
        ("Dividing Mixed Numbers", "Divide mixed numbers"),
        ("Fraction Division Word Problems", "Solve division word problems"),
        ("Complex Fractions", "Simplify complex fractions"),
    ],
    "Geometry": [
        ("Volume of Rectangular Prisms", "Use V = l × w × h"),
        ("Volume with Fractional Dimensions", "Calculate volume with fractions"),
        ("Volume of Composite Figures", "Find volume of combined shapes"),
        ("3D Figures from Nets", "Identify 3D shapes from nets"),
    ],
}

def create_prompt_template(topic_name, description, grade_level, unit_name):
    """Generate a comprehensive teaching prompt for a math topic."""

    # Escape single quotes for SQL
    topic_sql = topic_name.replace("'", "''")
    desc_sql = description.replace("'", "''")
    unit_sql = unit_name.replace("'", "''")

    prompt = f"""
-- {topic_name}
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '{topic_sql}' AND grade_level_min = {grade_level}),
  '{topic_sql} Topic Guide', '{desc_sql}',
  '{topic_sql.upper()} - TOPIC TEACHING GUIDE

PREREQUISITES:
- Prior knowledge from previous grade levels
- Basic mathematical reasoning skills
- Understanding of related concepts
- Computational fluency with required operations

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Understand the core concepts of {topic_name.lower()}
2. Apply strategies to solve problems involving {topic_name.lower()}
3. Demonstrate fluency with {topic_name.lower()} in various contexts
4. Connect {topic_name.lower()} to real-world situations

KEY CONCEPTS:
- {description}
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
   Present an engaging real-world problem that requires {topic_name.lower()}.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '{topic_sql}' AND grade_level_min = {grade_level})
ON CONFLICT DO NOTHING;
"""
    return prompt

def generate_grade_6_continuation():
    """Generate SQL for remaining Grade 6 topics."""
    output = []

    for unit_name, topics in GRADE_6_REMAINING.items():
        output.append(f"\n-- ============================================================================")
        output.append(f"-- {unit_name.upper()} ({len(topics)} topics)")
        output.append(f"-- ============================================================================\n")

        for topic_name, description in topics:
            prompt = create_prompt_template(topic_name, description, 6, unit_name)
            output.append(prompt)

    return "\n".join(output)

def main():
    """Generate and append remaining Grade 6 prompts."""
    print("Generating remaining Grade 6 Math teaching prompts...")
    print(f"Total topics to generate: {sum(len(topics) for topics in GRADE_6_REMAINING.values())}")

    sql_content = generate_grade_6_continuation()

    output_file = "supabase/seeds/prompts/topics/math/6_math_expanded_prompts_continuation.sql"

    with open(output_file, 'w', encoding='utf-8') as f:
        f.write("-- Grade 6 Math Expanded Topic Prompts - Continuation\n")
        f.write("-- Remaining units: Expressions and Equations through Geometry\n")
        f.write("-- ============================================================================\n")
        f.write(sql_content)

    print(f"[OK] Generated {output_file}")
    print("\nTo complete Grade 6:")
    print("1. Review the generated continuation file")
    print("2. Append it to the main 6_math_expanded_prompts.sql file")
    print("3. Run: node scripts/run-sql-seeds.js supabase/seeds/prompts/topics/math/6_math_expanded_prompts.sql")

    return 0

if __name__ == "__main__":
    sys.exit(main())
