#!/usr/bin/env python3
"""
Generate comprehensive teaching prompts for Grade 7 and 8 Math topics.
"""

import sys

# Grade 7 topics by unit (103 total)
GRADE_7_UNITS = {
    "Proportional Relationships": [
        ("Identifying Proportional Relationships", "Determine if relationships are proportional"),
        ("Proportional Relationships in Tables", "Find proportional relationships in tables"),
        ("Constant of Proportionality", "Calculate and interpret k"),
        ("Proportional Relationships in Graphs", "Graph proportional relationships"),
        ("Equations for Proportional Relationships", "Write y = kx equations"),
        ("Comparing Proportional Relationships", "Compare different representations"),
        ("Unit Rate as Slope", "Connect unit rate to slope"),
        ("Proportional Relationship Word Problems", "Solve real-world problems"),
    ],
    "Percent Problems": [
        ("Percent Increase", "Calculate percent increase"),
        ("Percent Decrease", "Calculate percent decrease"),
        ("Percent Error", "Calculate percent error"),
        ("Markup", "Calculate retail markup"),
        ("Markdown and Discount", "Calculate markdowns and discounts"),
        ("Sales Tax and Total Cost", "Calculate tax and totals"),
        ("Tips and Gratuity", "Calculate appropriate tips"),
        ("Commission", "Calculate sales commission"),
        ("Simple Interest", "Calculate simple interest"),
        ("Compound Interest Introduction", "Understand compound interest"),
        ("Multi-Step Percent Problems", "Solve complex percent problems"),
    ],
    "Rational Number Operations": [
        ("Adding Rational Numbers", "Add fractions, decimals, integers"),
        ("Subtracting Rational Numbers", "Subtract rational numbers"),
        ("Properties of Addition", "Apply commutative and associative properties"),
        ("Multiplying Rational Numbers", "Multiply positive and negative rationals"),
        ("Dividing Rational Numbers", "Divide positive and negative rationals"),
        ("Converting Rational to Decimal", "Convert fractions to decimals"),
        ("Converting Decimal to Rational", "Convert decimals to fractions"),
        ("Operations with Mixed Numbers", "Perform operations with mixed numbers"),
        ("Order of Operations with Rationals", "Apply order of operations"),
        ("Real-World Rational Number Problems", "Solve practical problems"),
    ],
    "Expressions and Equations": [
        ("Simplifying Expressions", "Combine like terms and simplify"),
        ("Expanding Expressions", "Use distributive property to expand"),
        ("Factoring Expressions", "Factor using GCF"),
        ("Adding and Subtracting Linear Expressions", "Combine linear expressions"),
        ("Writing Two-Step Equations", "Write equations from situations"),
        ("Solving Two-Step Equations", "Solve ax + b = c equations"),
        ("Equations with Rational Coefficients", "Solve equations with fractions/decimals"),
        ("Equations with Variables on Both Sides", "Solve when variable appears twice"),
        ("Writing Inequalities", "Write inequalities from situations"),
        ("Solving Two-Step Inequalities", "Solve and graph inequalities"),
        ("Graphing Inequalities on Number Lines", "Graph solutions on number lines"),
        ("Modeling with Equations", "Create and solve equations from scenarios"),
    ],
    "Angle Relationships": [
        ("Complementary Angles", "Find complementary angle measures"),
        ("Supplementary Angles", "Find supplementary angle measures"),
        ("Vertical Angles", "Identify and use vertical angles"),
        ("Adjacent Angles", "Understand and use adjacent angles"),
        ("Angles in Triangle", "Use 180° triangle sum"),
        ("Exterior Angles of Triangles", "Calculate exterior angle measures"),
        ("Angles with Parallel Lines", "Find angles with transversals"),
        ("Corresponding Angles", "Identify corresponding angles"),
        ("Alternate Interior Angles", "Use alternate interior angles"),
        ("Angle Problem Solving", "Solve multi-step angle problems"),
    ],
    "Scale Drawings": [
        ("Understanding Scale", "Interpret scale ratios"),
        ("Reading Scale Drawings", "Find actual dimensions from drawings"),
        ("Creating Scale Drawings", "Create scale drawings"),
        ("Scale Factor", "Calculate and use scale factor"),
        ("Scale Factor and Area", "Relate scale factor to area"),
        ("Scale Factor and Volume", "Relate scale factor to volume"),
        ("Map Scales", "Calculate distances using map scales"),
        ("Blueprints and Floor Plans", "Read and interpret blueprints"),
        ("Scale Drawing Word Problems", "Solve real-world scale problems"),
    ],
    "Circles": [
        ("Parts of a Circle", "Identify radius, diameter, chord"),
        ("Understanding Pi", "Explore the relationship of C to d"),
        ("Circumference from Diameter", "Calculate C = πd"),
        ("Circumference from Radius", "Calculate C = 2πr"),
        ("Finding Diameter from Circumference", "Solve for diameter given C"),
        ("Area of Circles", "Calculate A = πr²"),
        ("Finding Radius from Area", "Solve for radius given area"),
        ("Semicircles and Quarter Circles", "Find perimeter and area of partial circles"),
        ("Composite Figures with Circles", "Calculate area of shapes with circles"),
        ("Circle Word Problems", "Solve real-world circle problems"),
    ],
    "Surface Area and Volume": [
        ("Cross-Sections of 3D Figures", "Identify cross-sections"),
        ("Surface Area of Prisms", "Calculate SA using formulas"),
        ("Surface Area of Pyramids", "Calculate SA of pyramids"),
        ("Volume of Prisms", "Calculate V = Bh"),
        ("Volume of Pyramids", "Calculate V = 1/3 Bh"),
        ("Surface Area of Cylinders", "Calculate SA of cylinders"),
        ("Volume of Cylinders", "Calculate V = πr²h"),
        ("Surface Area of Cones", "Calculate SA of cones"),
        ("Volume of Cones", "Calculate V = 1/3 πr²h"),
        ("Volume of Spheres", "Calculate V = 4/3 πr³"),
        ("Composite 3D Figures", "Find volume of combined shapes"),
        ("3D Figure Word Problems", "Solve real-world problems"),
    ],
    "Probability": [
        ("Probability Review", "Review basic probability concepts"),
        ("Sample Space", "List all possible outcomes"),
        ("Probability of Compound Events", "Calculate P(A and B), P(A or B)"),
        ("Independent Events", "Calculate probability of independent events"),
        ("Dependent Events", "Calculate probability of dependent events"),
        ("Tree Diagrams", "Use tree diagrams for compound events"),
        ("Organized Lists", "Create systematic lists of outcomes"),
        ("Two-Way Tables", "Use two-way frequency tables"),
        ("Simulations", "Design probability simulations"),
        ("Experimental vs Theoretical", "Compare types of probability"),
        ("Expected Value", "Calculate expected value"),
    ],
    "Statistics": [
        ("Populations and Samples", "Distinguish populations from samples"),
        ("Random Sampling", "Understand random sampling methods"),
        ("Valid Samples", "Identify valid representative samples"),
        ("Making Inferences", "Make inferences from sample data"),
        ("Comparing Two Populations", "Compare data from two groups"),
        ("Measures of Center Comparison", "Compare means and medians"),
        ("Measures of Variability", "Compare MAD and IQR"),
        ("Visual Overlap of Distributions", "Analyze distribution overlap"),
        ("Drawing Conclusions from Data", "Make evidence-based conclusions"),
        ("Misleading Statistics", "Identify misleading statistics"),
    ],
}

# Grade 8 topics by unit (125 total)
GRADE_8_UNITS = {
    "Real Numbers": [
        ("Rational Numbers Review", "Review rational number concepts"),
        ("Irrational Numbers", "Identify and understand irrational numbers"),
        ("Real Number Classification", "Classify numbers as rational or irrational"),
        ("Square Roots", "Find square roots of perfect squares"),
        ("Estimating Square Roots", "Estimate square roots of non-perfect squares"),
        ("Cube Roots", "Find cube roots"),
        ("Comparing Irrational Numbers", "Compare and order irrational numbers"),
        ("Approximating Irrational Numbers", "Approximate using decimals"),
        ("Real Numbers on Number Line", "Plot real numbers on number line"),
        ("Operations with Real Numbers", "Perform operations with real numbers"),
    ],
    "Exponents and Scientific Notation": [
        ("Integer Exponents", "Understand positive and negative exponents"),
        ("Zero Exponent", "Understand why a⁰ = 1"),
        ("Negative Exponents", "Convert between negative exponents and fractions"),
        ("Product Rule", "Multiply expressions with same base"),
        ("Quotient Rule", "Divide expressions with same base"),
        ("Power Rule", "Raise a power to a power"),
        ("Combined Exponent Rules", "Apply multiple exponent rules"),
        ("Scientific Notation", "Write numbers in scientific notation"),
        ("Converting Scientific Notation", "Convert between forms"),
        ("Comparing in Scientific Notation", "Compare numbers in scientific notation"),
        ("Multiplying in Scientific Notation", "Multiply numbers in scientific notation"),
        ("Dividing in Scientific Notation", "Divide numbers in scientific notation"),
        ("Adding in Scientific Notation", "Add numbers in scientific notation"),
        ("Scientific Notation Applications", "Apply to real-world problems"),
    ],
    "Linear Equations": [
        ("One-Step Equations Review", "Review solving one-step equations"),
        ("Two-Step Equations Review", "Review solving two-step equations"),
        ("Multi-Step Equations", "Solve equations with multiple steps"),
        ("Equations with Distributive Property", "Solve equations requiring distribution"),
        ("Variables on Both Sides", "Solve when variable appears twice"),
        ("Equations with Rational Coefficients", "Solve equations with fractions/decimals"),
        ("Special Cases", "Identify no solution and infinite solutions"),
        ("Absolute Value Equations", "Solve simple absolute value equations"),
        ("Linear Inequalities", "Solve multi-step inequalities"),
        ("Compound Inequalities", "Solve and graph compound inequalities"),
        ("Absolute Value Inequalities", "Solve absolute value inequalities"),
        ("Equation Word Problems", "Write and solve equations from situations"),
    ],
    "Systems of Equations": [
        ("Introduction to Systems", "Understand what systems of equations are"),
        ("Graphing Systems", "Solve systems by graphing"),
        ("Types of Solutions", "Identify one solution, no solution, infinite solutions"),
        ("Substitution Method", "Solve systems using substitution"),
        ("Elimination Method Addition", "Solve systems by adding equations"),
        ("Elimination Method Subtraction", "Solve systems by subtracting equations"),
        ("Elimination with Multiplication", "Multiply to eliminate variables"),
        ("Choosing a Method", "Select appropriate solving method"),
        ("Systems Word Problems", "Write and solve systems from situations"),
        ("Systems and Break-Even", "Apply systems to business problems"),
    ],
    "Functions": [
        ("Understanding Relations", "Identify domain and range"),
        ("Definition of Function", "Determine if a relation is a function"),
        ("Vertical Line Test", "Use vertical line test for functions"),
        ("Function Notation", "Use and interpret f(x) notation"),
        ("Evaluating Functions", "Find function values for given inputs"),
        ("Functions from Tables", "Represent functions with tables"),
        ("Functions from Graphs", "Interpret functions from graphs"),
        ("Functions from Equations", "Write function rules as equations"),
        ("Comparing Functions", "Compare functions in different forms"),
        ("Linear vs Non-Linear", "Distinguish linear from non-linear functions"),
        ("Increasing and Decreasing", "Identify where functions increase/decrease"),
        ("Function Applications", "Apply functions to real situations"),
    ],
    "Linear Functions": [
        ("Slope from Graph", "Find slope from a graph"),
        ("Slope from Two Points", "Calculate slope using rise over run"),
        ("Slope from Table", "Find slope from a table of values"),
        ("Slope from Equation", "Identify slope from an equation"),
        ("Interpreting Slope", "Interpret slope as rate of change"),
        ("Y-Intercept", "Find and interpret y-intercept"),
        ("Slope-Intercept Form", "Write equations in y = mx + b"),
        ("Graphing Slope-Intercept", "Graph using slope and intercept"),
        ("Standard Form", "Write and convert to standard form"),
        ("Point-Slope Form", "Write equations in point-slope form"),
        ("Writing Equations from Graphs", "Write equation of a graphed line"),
        ("Writing Equations from Points", "Write equation through two points"),
        ("Parallel Lines", "Identify and write equations of parallel lines"),
        ("Perpendicular Lines", "Identify and write equations of perpendicular lines"),
        ("Linear Function Applications", "Apply linear functions to real situations"),
    ],
    "Transformations": [
        ("Introduction to Transformations", "Understand rigid and non-rigid transformations"),
        ("Translations", "Perform and describe translations"),
        ("Translations on Coordinate Plane", "Translate using coordinate rules"),
        ("Reflections", "Reflect figures over lines"),
        ("Reflections over Axes", "Reflect over x-axis and y-axis"),
        ("Reflections over Other Lines", "Reflect over y = x and other lines"),
        ("Rotations", "Rotate figures around a point"),
        ("Rotations on Coordinate Plane", "Rotate 90°, 180°, 270°"),
        ("Describing Transformations", "Describe single transformations"),
        ("Sequence of Transformations", "Perform multiple transformations"),
        ("Dilations", "Perform dilations with scale factor"),
        ("Dilations on Coordinate Plane", "Dilate using coordinate rules"),
    ],
    "Congruence and Similarity": [
        ("Congruent Figures", "Identify congruent figures"),
        ("Congruence Transformations", "Use transformations to show congruence"),
        ("Angle-Angle Similarity", "Use AA criterion for similarity"),
        ("Similar Triangles", "Identify similar triangles"),
        ("Similarity Transformations", "Use dilations for similarity"),
        ("Scale Factor", "Find and use scale factor"),
        ("Finding Missing Sides", "Use similarity to find missing measurements"),
        ("Similarity and Proportions", "Set up and solve proportions"),
        ("Similarity Word Problems", "Apply similarity to real situations"),
        ("Indirect Measurement", "Use similar triangles for indirect measurement"),
    ],
    "Pythagorean Theorem": [
        ("Understanding the Pythagorean Theorem", "Explore a² + b² = c²"),
        ("Finding the Hypotenuse", "Calculate the longest side"),
        ("Finding a Leg", "Calculate a shorter side"),
        ("Pythagorean Triples", "Identify common Pythagorean triples"),
        ("Converse of Pythagorean Theorem", "Determine if a triangle is right"),
        ("Pythagorean Theorem on Coordinate Plane", "Find distances using theorem"),
        ("3D Pythagorean Theorem", "Apply theorem in three dimensions"),
        ("Pythagorean Theorem Applications", "Solve real-world problems"),
        ("Distance Formula", "Connect to distance formula"),
        ("Pythagorean Theorem Word Problems", "Solve multi-step problems"),
    ],
    "Volume": [
        ("Volume of Cylinders", "Use V = πr²h"),
        ("Finding Height of Cylinder", "Solve for height given volume"),
        ("Finding Radius of Cylinder", "Solve for radius given volume"),
        ("Volume of Cones", "Use V = 1/3 πr²h"),
        ("Comparing Cylinders and Cones", "Understand the relationship"),
        ("Volume of Spheres", "Use V = 4/3 πr³"),
        ("Finding Radius of Sphere", "Solve for radius given volume"),
        ("Volume of Hemispheres", "Calculate half-sphere volume"),
        ("Composite 3D Figures", "Find volume of combined shapes"),
        ("Volume Word Problems", "Solve real-world volume problems"),
    ],
    "Statistics and Probability": [
        ("Scatter Plots", "Create and interpret scatter plots"),
        ("Patterns in Scatter Plots", "Identify positive, negative, no association"),
        ("Linear vs Non-Linear Associations", "Distinguish association types"),
        ("Clusters and Outliers", "Identify clusters and outliers"),
        ("Line of Best Fit", "Draw informal line of best fit"),
        ("Equation of Line of Best Fit", "Write equation for trend line"),
        ("Making Predictions", "Use line of best fit for predictions"),
        ("Two-Way Tables", "Organize categorical data"),
        ("Relative Frequency Tables", "Create relative frequency tables"),
        ("Interpreting Two-Way Tables", "Analyze associations in data"),
    ],
}

def create_prompt(topic_name, description, grade_level):
    """Generate a comprehensive teaching prompt."""
    topic_sql = topic_name.replace("'", "''")
    desc_sql = description.replace("'", "''")

    return f"""
-- {topic_name}
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = '{topic_sql}' AND grade_level_min = {grade_level}),
  '{topic_sql} Topic Guide', '{desc_sql}',
  '{topic_sql.upper()} - TOPIC TEACHING GUIDE

PREREQUISITES:
- Foundational skills from prior grade levels
- Conceptual understanding of related topics
- Computational fluency with necessary operations
- Problem-solving experience with similar concepts

LEARNING OBJECTIVES:
By the end of this topic, students will:
1. Master core concepts and procedures for {topic_name.lower()}
2. Apply multiple strategies to solve problems
3. Demonstrate fluency and accuracy in calculations
4. Connect mathematical ideas to real-world contexts

KEY CONCEPTS:
- {description}
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
   Engage students with a compelling real-world problem requiring {topic_name.lower()}.

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
WHERE EXISTS (SELECT 1 FROM topics WHERE name = '{topic_sql}' AND grade_level_min = {grade_level})
ON CONFLICT DO NOTHING;
"""

def generate_grade_file(grade_level, units_dict, filename):
    """Generate complete SQL file for a grade level."""
    lines = []
    lines.append(f"-- Grade {grade_level} Math Expanded Topic Prompts")
    lines.append("-- Comprehensive teaching prompts for all Grade {grade_level} Math topics")
    lines.append("-- " + "=" * 76)
    lines.append("")

    for unit_name, topics in units_dict.items():
        lines.append("-- " + "=" * 76)
        lines.append(f"-- {unit_name.upper()} ({len(topics)} topics)")
        lines.append("-- " + "=" * 76)

        for topic_name, description in topics:
            lines.append(create_prompt(topic_name, description, grade_level))

    with open(filename, 'w', encoding='utf-8') as f:
        f.write('\n'.join(lines))

    return len([t for topics in units_dict.values() for t in topics])

def main():
    """Generate Grade 7 and 8 prompt files."""
    print("Generating Grade 7 and 8 Math Teaching Prompts...")

    # Grade 7
    grade7_file = "supabase/seeds/prompts/topics/math/7_math_expanded_prompts.sql"
    count7 = generate_grade_file(7, GRADE_7_UNITS, grade7_file)
    print(f"[OK] Generated {grade7_file} with {count7} topics")

    # Grade 8
    grade8_file = "supabase/seeds/prompts/topics/math/8_math_expanded_prompts.sql"
    count8 = generate_grade_file(8, GRADE_8_UNITS, grade8_file)
    print(f"[OK] Generated {grade8_file} with {count8} topics")

    print(f"\nTotal topics generated: {count7 + count8}")
    print("\nNext steps:")
    print("1. Review generated files for accuracy")
    print("2. Run: node scripts/run-sql-seeds.js supabase/seeds/prompts/topics/math/7_math_expanded_prompts.sql")
    print("3. Run: node scripts/run-sql-seeds.js supabase/seeds/prompts/topics/math/8_math_expanded_prompts.sql")

    return 0

if __name__ == "__main__":
    sys.exit(main())
