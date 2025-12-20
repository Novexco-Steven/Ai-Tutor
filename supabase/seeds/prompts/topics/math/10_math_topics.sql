-- Grade 10 Math Topic Prompts (Geometry)
-- Comprehensive teaching guides for each Grade 10 Math topic

-- ============================================================================
-- UNIT: Foundations of Geometry
-- ============================================================================

-- Topic: Points, Lines, and Planes
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Points, Lines, and Planes' AND grade_level_min = 10),
  'Points, Lines, and Planes Topic Guide', 'Basic geometric terms and notation',
  'POINTS, LINES, AND PLANES - TOPIC TEACHING GUIDE

PREREQUISITES: Understanding of basic shapes, coordinate graphing, vocabulary for describing position and direction.

LEARNING OBJECTIVES: Define and identify points, lines, rays, segments, and planes. Use proper geometric notation. Understand collinear and coplanar relationships. Identify intersections of geometric figures.

KEY CONCEPTS: 1) Point has location but no dimension (named with capital letter). 2) Line extends infinitely in both directions (named by two points or lowercase letter). 3) Ray has one endpoint and extends infinitely in one direction. 4) Segment has two endpoints. 5) Plane is flat surface extending infinitely in all directions. 6) Collinear points lie on the same line; coplanar points lie on the same plane.

COMMON MISCONCEPTIONS: Thinking lines have ends, confusing rays and segments, believing planes have boundaries, not understanding that notation order matters for rays.

TEACHING SEQUENCE: Hook with real-world examples (laser beams as rays, floor as plane). Define each term with physical models. Practice proper notation extensively. Explore relationships between figures.

DIFFERENTIATION: Struggling learners use physical models; advanced learners explore axioms and undefined terms.

VOCABULARY: Point, line, ray, segment, plane, collinear, coplanar, intersection, notation.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Points, Lines, and Planes' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Measuring Segments and Angles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Measuring Segments and Angles' AND grade_level_min = 10),
  'Measuring Segments and Angles Topic Guide', 'Using rulers and protractors, angle types',
  'MEASURING SEGMENTS AND ANGLES - TOPIC TEACHING GUIDE

PREREQUISITES: Number line understanding, basic measurement skills, understanding of whole and decimal numbers.

LEARNING OBJECTIVES: Measure segments using rulers. Measure angles using protractors. Apply segment and angle addition postulates. Classify angles by measure.

KEY CONCEPTS: 1) Segment addition: If B is between A and C, then AB + BC = AC. 2) Angle addition: If ray BD is interior to angle ABC, then m∠ABD + m∠DBC = m∠ABC. 3) Angle classifications: acute (<90°), right (90°), obtuse (>90°, <180°), straight (180°). 4) Congruent segments have equal length; congruent angles have equal measure.

COMMON MISCONCEPTIONS: Confusing segment length with endpoint coordinates, reading protractors from wrong scale, thinking larger angles need larger rays.

TEACHING SEQUENCE: Practice measurement skills first. Introduce addition postulates with diagrams. Classify angles systematically. Apply to algebraic problems.

DIFFERENTIATION: Struggling learners use larger diagrams and practice measurement; advanced learners prove addition postulates.

VOCABULARY: Segment, angle, acute, right, obtuse, straight, congruent, midpoint, bisector.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Measuring Segments and Angles' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Inductive and Deductive Reasoning
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Inductive and Deductive Reasoning' AND grade_level_min = 10),
  'Inductive and Deductive Reasoning Topic Guide', 'Making conjectures and logical arguments',
  'INDUCTIVE AND DEDUCTIVE REASONING - TOPIC TEACHING GUIDE

PREREQUISITES: Pattern recognition, logical thinking skills, basic geometry vocabulary.

LEARNING OBJECTIVES: Distinguish between inductive and deductive reasoning. Make and test conjectures. Use counterexamples to disprove statements. Apply conditional statements and their converses.

KEY CONCEPTS: 1) Inductive reasoning: observing patterns to make conjectures. 2) Deductive reasoning: using facts, definitions, and logic to reach conclusions. 3) Counterexample: one case that disproves a conjecture. 4) Conditional statements: If-then form (hypothesis and conclusion). 5) Converse: switching hypothesis and conclusion (may not be true).

COMMON MISCONCEPTIONS: Thinking inductive reasoning proves statements, believing converse is always true, not recognizing that one counterexample disproves a statement.

TEACHING SEQUENCE: Start with pattern activities (inductive). Introduce formal logic (deductive). Practice identifying and writing conditionals. Find counterexamples for false statements.

DIFFERENTIATION: Struggling learners work with concrete examples; advanced learners explore biconditionals and logic chains.

VOCABULARY: Inductive, deductive, conjecture, counterexample, conditional, hypothesis, conclusion, converse, inverse, contrapositive.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Inductive and Deductive Reasoning' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Introduction to Proofs
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Introduction to Proofs' AND grade_level_min = 10),
  'Introduction to Proofs Topic Guide', 'Two-column and paragraph proofs',
  'INTRODUCTION TO PROOFS - TOPIC TEACHING GUIDE

PREREQUISITES: Inductive and deductive reasoning, algebraic properties, geometric definitions and postulates.

LEARNING OBJECTIVES: Write two-column proofs. Understand proof structure (given, prove, statements, reasons). Apply algebraic and geometric properties as reasons. Write paragraph proofs.

KEY CONCEPTS: 1) A proof is a logical argument showing why a statement is true. 2) Two-column format: statements on left, reasons on right. 3) Reasons can be: given, definitions, postulates, theorems, or properties. 4) Each step must follow logically from previous steps. 5) Paragraph proofs express the same logic in sentence form.

COMMON MISCONCEPTIONS: Thinking proofs must be memorized, skipping steps, using circular reasoning, not connecting statements to reasons properly.

TEACHING SEQUENCE: Start with algebraic proofs (familiar properties). Introduce two-column format. Build to geometric proofs gradually. Show paragraph as alternative format.

DIFFERENTIATION: Struggling learners use proof templates; advanced learners create original proofs for new situations.

VOCABULARY: Proof, statement, reason, given, prove, theorem, postulate, definition, QED.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Introduction to Proofs' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Parallel Lines and Transversals
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parallel Lines and Transversals' AND grade_level_min = 10),
  'Parallel Lines and Transversals Topic Guide', 'Angle relationships with parallel lines',
  'PARALLEL LINES AND TRANSVERSALS - TOPIC TEACHING GUIDE

PREREQUISITES: Angle measurement, supplementary and complementary angles, basic algebraic equation solving.

LEARNING OBJECTIVES: Identify angle pairs formed by transversals. Apply properties of parallel lines cut by transversal. Find unknown angle measures. Use angle relationships to solve problems.

KEY CONCEPTS: 1) Transversal crosses two or more lines. 2) Corresponding angles are congruent (parallel lines). 3) Alternate interior angles are congruent. 4) Alternate exterior angles are congruent. 5) Same-side interior angles are supplementary. 6) These properties ONLY apply when lines are parallel.

COMMON MISCONCEPTIONS: Applying parallel line properties to non-parallel lines, confusing angle pair names, not recognizing transversals in complex figures.

TEACHING SEQUENCE: Identify angle pairs with color-coding. State properties as if-then statements. Practice finding angles numerically then algebraically.

DIFFERENTIATION: Struggling learners use colored diagrams; advanced learners prove the angle relationships.

VOCABULARY: Parallel, transversal, corresponding angles, alternate interior, alternate exterior, same-side interior, congruent, supplementary.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parallel Lines and Transversals' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Proving Lines Parallel
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Proving Lines Parallel' AND grade_level_min = 10),
  'Proving Lines Parallel Topic Guide', 'Using angle relationships to prove parallelism',
  'PROVING LINES PARALLEL - TOPIC TEACHING GUIDE

PREREQUISITES: Parallel lines and transversals, angle relationships, writing proofs.

LEARNING OBJECTIVES: Apply converses of parallel line theorems. Prove lines are parallel using angle relationships. Use parallel line proofs in constructions. Connect to real-world applications.

KEY CONCEPTS: 1) Converse of corresponding angles: if corresponding angles are congruent, lines are parallel. 2) Similar converses for alternate interior, alternate exterior, and same-side interior. 3) These converses let us PROVE parallelism from angle information. 4) Construction of parallel lines uses these principles.

COMMON MISCONCEPTIONS: Confusing theorems with their converses, not recognizing which direction to prove, assuming lines are parallel without proof.

TEACHING SEQUENCE: Review angle relationships. Introduce converses as proving tools. Practice identifying what needs to be proven. Write formal proofs.

DIFFERENTIATION: Struggling learners use flowchart proofs; advanced learners tackle multi-step proofs with auxiliary lines.

VOCABULARY: Converse, prove, parallel, transversal, corresponding, alternate, supplementary.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Proving Lines Parallel' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Triangle Congruence
-- ============================================================================

-- Topic: Classifying Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Classifying Triangles' AND grade_level_min = 10),
  'Classifying Triangles Topic Guide', 'By sides and angles',
  'CLASSIFYING TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES: Angle measurement, understanding of side lengths, basic triangle properties.

LEARNING OBJECTIVES: Classify triangles by sides (scalene, isosceles, equilateral). Classify triangles by angles (acute, right, obtuse). Apply both classifications simultaneously. Use classification properties in problem-solving.

KEY CONCEPTS: 1) By sides: scalene (no equal sides), isosceles (at least two equal), equilateral (all equal). 2) By angles: acute (all <90°), right (one 90°), obtuse (one >90°). 3) Equilateral triangles are also equiangular (all 60°). 4) A triangle can be classified both ways (e.g., acute isosceles).

COMMON MISCONCEPTIONS: Thinking isosceles must have exactly two equal sides, believing right triangles can''t be isosceles.

TEACHING SEQUENCE: Classify by sides first. Classify by angles separately. Combine classifications. Apply to coordinate geometry.

DIFFERENTIATION: Struggling learners sort physical triangles; advanced learners explore classifications in non-Euclidean geometry.

VOCABULARY: Scalene, isosceles, equilateral, acute, right, obtuse, equiangular, classify.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Classifying Triangles' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Triangle Sum Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Triangle Sum Theorem' AND grade_level_min = 10),
  'Triangle Sum Theorem Topic Guide', 'Interior and exterior angle relationships',
  'TRIANGLE SUM THEOREM - TOPIC TEACHING GUIDE

PREREQUISITES: Angle measurement, parallel lines and transversals, algebraic equation solving.

LEARNING OBJECTIVES: Understand that interior angles of a triangle sum to 180°. Find missing angle measures. Apply the exterior angle theorem. Prove the triangle sum theorem.

KEY CONCEPTS: 1) Interior angles of any triangle sum to 180°. 2) Exterior angle equals sum of two remote interior angles. 3) Each exterior angle is supplementary to its adjacent interior angle. 4) Proof uses parallel line properties.

COMMON MISCONCEPTIONS: Thinking theorem only applies to specific triangles, confusing interior and exterior angles, adding exterior angle incorrectly.

TEACHING SEQUENCE: Demonstrate with physical models. State and prove the theorem. Practice finding missing angles. Introduce exterior angle theorem.

DIFFERENTIATION: Struggling learners tear corners to show 180°; advanced learners prove using coordinate methods.

VOCABULARY: Triangle sum theorem, interior angle, exterior angle, remote interior angles, supplementary.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Triangle Sum Theorem' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: SSS and SAS Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'SSS and SAS Congruence' AND grade_level_min = 10),
  'SSS and SAS Congruence Topic Guide', 'Proving congruence with sides and angles',
  'SSS AND SAS CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES: Congruent segments and angles, triangle classification, writing proofs.

LEARNING OBJECTIVES: Apply SSS (Side-Side-Side) congruence. Apply SAS (Side-Angle-Side) congruence. Write proofs using these criteria. Identify which criterion to use.

KEY CONCEPTS: 1) SSS: If three sides of one triangle are congruent to three sides of another, triangles are congruent. 2) SAS: If two sides and the INCLUDED angle are congruent, triangles are congruent. 3) The angle MUST be between the two sides for SAS. 4) These are postulates (accepted without proof).

COMMON MISCONCEPTIONS: Using SAS when angle is not included (that''s SSA which doesn''t work), not marking diagrams properly.

TEACHING SEQUENCE: Discover criteria with manipulatives. Formalize as postulates. Practice identifying congruent parts. Write proofs using criteria.

DIFFERENTIATION: Struggling learners use construction to verify; advanced learners explore why SSA fails.

VOCABULARY: SSS, SAS, congruent, postulate, included angle, corresponding parts.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'SSS and SAS Congruence' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: ASA and AAS Congruence
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'ASA and AAS Congruence' AND grade_level_min = 10),
  'ASA and AAS Congruence Topic Guide', 'Additional triangle congruence criteria',
  'ASA AND AAS CONGRUENCE - TOPIC TEACHING GUIDE

PREREQUISITES: SSS and SAS congruence, triangle sum theorem, proof writing.

LEARNING OBJECTIVES: Apply ASA (Angle-Side-Angle) congruence. Apply AAS (Angle-Angle-Side) congruence. Choose appropriate criteria for proofs. Understand why AAA doesn''t prove congruence.

KEY CONCEPTS: 1) ASA: Two angles and the INCLUDED side congruent means triangles congruent. 2) AAS: Two angles and a NON-included side congruent means triangles congruent. 3) AAA only proves similarity, not congruence. 4) HL (Hypotenuse-Leg) works for right triangles only.

COMMON MISCONCEPTIONS: Thinking AAA proves congruence, confusing which side for ASA vs AAS.

TEACHING SEQUENCE: Review prior criteria. Introduce ASA and AAS with constructions. Compare all criteria. Practice choosing the right one.

DIFFERENTIATION: Struggling learners make flowcharts for choosing criteria; advanced learners prove these theorems.

VOCABULARY: ASA, AAS, AAA, HL, included side, non-included side, similarity.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'ASA and AAS Congruence' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: CPCTC
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'CPCTC' AND grade_level_min = 10),
  'CPCTC Topic Guide', 'Corresponding Parts of Congruent Triangles',
  'CPCTC - TOPIC TEACHING GUIDE

PREREQUISITES: Triangle congruence criteria (SSS, SAS, ASA, AAS), proof writing skills.

LEARNING OBJECTIVES: Understand CPCTC as a proof tool. Apply CPCTC after proving triangles congruent. Use CPCTC to prove segments or angles congruent. Write complete proofs using congruence then CPCTC.

KEY CONCEPTS: 1) CPCTC: Corresponding Parts of Congruent Triangles are Congruent. 2) First prove triangles congruent, THEN use CPCTC. 3) CPCTC is not a congruence criterion - it''s what we USE after proving congruence. 4) Identifies which parts correspond based on congruence statement.

COMMON MISCONCEPTIONS: Using CPCTC as a reason for triangle congruence, not identifying corresponding parts correctly.

TEACHING SEQUENCE: Review triangle congruence. Explain CPCTC as the "payoff." Practice two-step proofs: prove congruence, then apply CPCTC.

DIFFERENTIATION: Struggling learners color-code corresponding parts; advanced learners tackle complex multi-triangle proofs.

VOCABULARY: CPCTC, corresponding parts, congruent triangles, proof, corresponding vertices.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'CPCTC' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Isosceles and Equilateral Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Isosceles and Equilateral Triangles' AND grade_level_min = 10),
  'Isosceles and Equilateral Triangles Topic Guide', 'Special triangle properties',
  'ISOSCELES AND EQUILATERAL TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES: Triangle classification, triangle congruence, CPCTC.

LEARNING OBJECTIVES: Apply the Isosceles Triangle Theorem. Apply the converse. Understand equilateral triangle properties. Find missing measures in special triangles.

KEY CONCEPTS: 1) Isosceles Triangle Theorem: If two sides congruent, then base angles congruent. 2) Converse: If two angles congruent, then opposite sides congruent. 3) Equilateral triangles have all sides and all angles (60° each) congruent. 4) The altitude to the base bisects the vertex angle and the base.

COMMON MISCONCEPTIONS: Confusing theorem with converse, not recognizing when triangle is isosceles.

TEACHING SEQUENCE: Discover properties through construction. State and prove theorems. Apply to find missing measures.

DIFFERENTIATION: Struggling learners fold paper triangles; advanced learners prove theorems multiple ways.

VOCABULARY: Isosceles, equilateral, base angles, vertex angle, legs, base, altitude, perpendicular bisector.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Isosceles and Equilateral Triangles' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Triangle Inequality
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Triangle Inequality' AND grade_level_min = 10),
  'Triangle Inequality Topic Guide', 'Relationships between sides and angles',
  'TRIANGLE INEQUALITY - TOPIC TEACHING GUIDE

PREREQUISITES: Understanding triangles, comparing quantities, basic inequalities.

LEARNING OBJECTIVES: Apply the Triangle Inequality Theorem. Determine if three lengths can form a triangle. Order sides and angles in a triangle. Find possible ranges for third side.

KEY CONCEPTS: 1) Triangle Inequality: The sum of any two sides must be greater than the third side. 2) Must check all three combinations. 3) Longer side is opposite larger angle. 4) Given two sides a and b, third side c must satisfy |a-b| < c < a+b.

COMMON MISCONCEPTIONS: Only checking one inequality pair, not recognizing the side-angle relationship.

TEACHING SEQUENCE: Discover with straws or sticks. Formalize the theorem. Practice determining validity of lengths. Connect sides to angles.

DIFFERENTIATION: Struggling learners use physical models; advanced learners explore in other spaces.

VOCABULARY: Triangle inequality, valid triangle, opposite side, opposite angle, range.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Triangle Inequality' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Similarity
-- ============================================================================

-- Topic: Ratios and Proportions
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Ratios and Proportions' AND grade_level_min = 10),
  'Ratios and Proportions Topic Guide', 'Solving proportions and using ratios',
  'RATIOS AND PROPORTIONS (GEOMETRY) - TOPIC TEACHING GUIDE

PREREQUISITES: Fraction operations, solving equations, understanding ratios.

LEARNING OBJECTIVES: Write and simplify ratios. Solve proportions using cross-multiplication. Apply proportions to geometric figures. Use extended ratios.

KEY CONCEPTS: 1) Ratio compares two quantities. 2) Proportion states two ratios are equal. 3) Cross-products of a proportion are equal. 4) Extended ratios compare three or more quantities (a:b:c). 5) Geometric mean: x is the geometric mean of a and b if a/x = x/b.

COMMON MISCONCEPTIONS: Setting up proportions with mismatched units, cross-multiplying when not appropriate.

TEACHING SEQUENCE: Review ratios and proportions. Apply to geometric contexts. Introduce geometric mean. Solve complex proportion problems.

DIFFERENTIATION: Struggling learners use ratio tables; advanced learners explore golden ratio.

VOCABULARY: Ratio, proportion, cross-multiply, geometric mean, scale factor, means, extremes.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Ratios and Proportions' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Similar Polygons
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similar Polygons' AND grade_level_min = 10),
  'Similar Polygons Topic Guide', 'Properties of similar figures',
  'SIMILAR POLYGONS - TOPIC TEACHING GUIDE

PREREQUISITES: Ratios and proportions, congruence concepts, polygon properties.

LEARNING OBJECTIVES: Identify similar polygons. Find scale factors between similar figures. Set up and solve proportions for missing measures. Understand perimeter and area ratios.

KEY CONCEPTS: 1) Similar polygons: same shape, proportional sides, congruent corresponding angles. 2) Scale factor k: ratio of corresponding sides. 3) Perimeters have ratio k; areas have ratio k². 4) Statement order indicates correspondence: ABCD ~ EFGH means A↔E, B↔F, etc.

COMMON MISCONCEPTIONS: Thinking similar means congruent, applying area ratio when should use side ratio.

TEACHING SEQUENCE: Define similarity through examples. Practice finding scale factors. Solve proportion problems. Explore perimeter and area relationships.

DIFFERENTIATION: Struggling learners use grid enlargements; advanced learners prove perimeter/area relationships.

VOCABULARY: Similar, scale factor, proportion, corresponding sides, corresponding angles, perimeter ratio, area ratio.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similar Polygons' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: AA Similarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'AA Similarity' AND grade_level_min = 10),
  'AA Similarity Topic Guide', 'Proving triangles similar using angles',
  'AA SIMILARITY - TOPIC TEACHING GUIDE

PREREQUISITES: Similar polygons, angle relationships, triangle properties.

LEARNING OBJECTIVES: Apply AA (Angle-Angle) Similarity Postulate. Prove triangles are similar using two pairs of congruent angles. Set up proportions from similar triangles. Solve problems using AA similarity.

KEY CONCEPTS: 1) AA Similarity: If two angles of one triangle are congruent to two angles of another, the triangles are similar. 2) Only need two angles (third is automatic due to triangle sum). 3) After proving similarity, corresponding sides are proportional. 4) Order of similarity statement shows correspondence.

COMMON MISCONCEPTIONS: Thinking you need to show all three angles, confusing with AAA for congruence.

TEACHING SEQUENCE: Introduce AA through exploration. Compare to congruence criteria. Practice identifying similar triangles. Set up and solve proportions.

DIFFERENTIATION: Struggling learners use angle measures to verify; advanced learners prove AA using transformations.

VOCABULARY: AA Similarity, similar triangles, corresponding angles, proportion, scale factor.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'AA Similarity' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: SSS and SAS Similarity
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'SSS and SAS Similarity' AND grade_level_min = 10),
  'SSS and SAS Similarity Topic Guide', 'Additional similarity criteria',
  'SSS AND SAS SIMILARITY - TOPIC TEACHING GUIDE

PREREQUISITES: AA Similarity, ratios and proportions, triangle congruence criteria.

LEARNING OBJECTIVES: Apply SSS Similarity (three pairs of proportional sides). Apply SAS Similarity (two proportional sides with included congruent angle). Choose appropriate similarity criterion. Write similarity proofs.

KEY CONCEPTS: 1) SSS~: If all three pairs of sides are proportional, triangles are similar. 2) SAS~: If two pairs of sides are proportional AND the included angles are congruent, triangles are similar. 3) Note distinction from congruence: proportional sides, not congruent. 4) SSA does not work for similarity either.

COMMON MISCONCEPTIONS: Confusing with congruence criteria, using SAS~ when angle is not included.

TEACHING SEQUENCE: Review similarity criteria. Introduce SSS~ and SAS~. Practice identifying which to use. Write proofs using all three criteria.

DIFFERENTIATION: Struggling learners compare to congruence criteria; advanced learners explore when criteria fail.

VOCABULARY: SSS Similarity, SAS Similarity, proportional sides, included angle, similarity criteria.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'SSS and SAS Similarity' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Dilations
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Dilations' AND grade_level_min = 10),
  'Dilations Topic Guide', 'Scale factors and dilations',
  'DILATIONS - TOPIC TEACHING GUIDE

PREREQUISITES: Similar figures, coordinate graphing, transformations basics.

LEARNING OBJECTIVES: Perform dilations with given center and scale factor. Identify properties preserved by dilations. Apply dilations to coordinate plane. Connect dilations to similarity.

KEY CONCEPTS: 1) Dilation is a transformation that changes size but not shape. 2) Scale factor k > 1: enlargement; 0 < k < 1: reduction. 3) Center of dilation: fixed point from which scaling occurs. 4) Dilations preserve angle measures but not distances. 5) Coordinate rule from origin: (x, y) → (kx, ky).

COMMON MISCONCEPTIONS: Thinking center of dilation must be at origin, confusing dilation with translation.

TEACHING SEQUENCE: Demonstrate dilations with center at origin. Explore other centers. Practice with coordinates. Connect to similarity.

DIFFERENTIATION: Struggling learners use grid paper; advanced learners explore center effects mathematically.

VOCABULARY: Dilation, scale factor, center of dilation, enlargement, reduction, similar, pre-image, image.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Dilations' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Similarity in Right Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Similarity in Right Triangles' AND grade_level_min = 10),
  'Similarity in Right Triangles Topic Guide', 'Geometric mean relationships',
  'SIMILARITY IN RIGHT TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES: Similar triangles, proportions, right triangle properties, Pythagorean theorem.

LEARNING OBJECTIVES: Understand how altitude to hypotenuse creates similar triangles. Apply geometric mean relationships. Find missing lengths in right triangles. Prove the relationships using similarity.

KEY CONCEPTS: 1) Altitude to hypotenuse creates three similar triangles. 2) Geometric mean altitude theorem: altitude = √(segment1 × segment2). 3) Geometric mean leg theorem: leg = √(whole hypotenuse × adjacent segment). 4) These provide alternative methods to Pythagorean theorem.

COMMON MISCONCEPTIONS: Confusing which segments form geometric means, not recognizing the three similar triangles.

TEACHING SEQUENCE: Draw and label the altitude configuration. Identify the three similar triangles. Derive geometric mean relationships. Practice applications.

DIFFERENTIATION: Struggling learners redraw the triangles separately; advanced learners prove relationships formally.

VOCABULARY: Altitude to hypotenuse, geometric mean, similar triangles, projection, adjacent segment.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Similarity in Right Triangles' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Right Triangles and Trigonometry
-- ============================================================================

-- Topic: Pythagorean Theorem
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem' AND grade_level_min = 10),
  'Pythagorean Theorem Topic Guide', 'Applications and proofs of a² + b² = c²',
  'PYTHAGOREAN THEOREM (GEOMETRY) - TOPIC TEACHING GUIDE

PREREQUISITES: Right triangle identification, square roots, algebraic equation solving.

LEARNING OBJECTIVES: Apply the Pythagorean theorem to find missing sides. Prove the Pythagorean theorem using various methods. Apply to real-world and coordinate geometry problems. Recognize Pythagorean triples.

KEY CONCEPTS: 1) In right triangle: a² + b² = c² where c is hypotenuse. 2) Multiple proofs exist (similarity, rearrangement, algebraic). 3) Common triples: (3,4,5), (5,12,13), (8,15,17), (7,24,25). 4) Any multiple of a triple is also a triple.

COMMON MISCONCEPTIONS: Applying to non-right triangles, using a leg as hypotenuse.

TEACHING SEQUENCE: Review theorem from Grade 8. Explore proofs. Apply to complex problems. Connect to distance formula.

DIFFERENTIATION: Struggling learners practice identification; advanced learners explore multiple proofs.

VOCABULARY: Pythagorean theorem, hypotenuse, legs, Pythagorean triple, proof.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Pythagorean Theorem Converse
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Pythagorean Theorem Converse' AND grade_level_min = 10),
  'Pythagorean Theorem Converse Topic Guide', 'Determining right triangles',
  'PYTHAGOREAN THEOREM CONVERSE - TOPIC TEACHING GUIDE

PREREQUISITES: Pythagorean theorem, classifying triangles, understanding converse statements.

LEARNING OBJECTIVES: Use converse to determine if triangle is right. Classify triangles as acute, right, or obtuse using side lengths. Apply to real-world situations.

KEY CONCEPTS: 1) Converse: If a² + b² = c², then triangle is right. 2) If a² + b² > c², triangle is acute. 3) If a² + b² < c², triangle is obtuse. 4) c must be the longest side.

COMMON MISCONCEPTIONS: Not using longest side as c, confusing acute/obtuse conditions.

TEACHING SEQUENCE: Introduce converse concept. Derive classification conditions. Practice with numerical examples. Apply to verify constructions.

DIFFERENTIATION: Struggling learners use always-longest-as-c rule; advanced learners prove the converse.

VOCABULARY: Converse, acute triangle, right triangle, obtuse triangle, classify.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Pythagorean Theorem Converse' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Special Right Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Special Right Triangles' AND grade_level_min = 10),
  'Special Right Triangles Topic Guide', '45-45-90 and 30-60-90 triangles',
  'SPECIAL RIGHT TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES: Pythagorean theorem, simplifying radicals, isosceles triangles, equilateral triangles.

LEARNING OBJECTIVES: Apply 45-45-90 triangle ratios (1:1:√2). Apply 30-60-90 triangle ratios (1:√3:2). Find missing sides without Pythagorean theorem. Derive the ratios.

KEY CONCEPTS: 1) 45-45-90: legs are equal; hypotenuse = leg × √2. 2) 30-60-90: short leg : long leg : hypotenuse = 1 : √3 : 2. 3) Short leg is opposite 30°; long leg is opposite 60°. 4) These come from isosceles right and half-equilateral triangles.

COMMON MISCONCEPTIONS: Mixing up which side gets √3 in 30-60-90, applying ratios incorrectly.

TEACHING SEQUENCE: Derive 45-45-90 from isosceles right triangle. Derive 30-60-90 from equilateral triangle. Practice with variables. Apply to real problems.

DIFFERENTIATION: Struggling learners memorize with mnemonics; advanced learners derive from Pythagorean theorem.

VOCABULARY: Special right triangles, 45-45-90, 30-60-90, ratio, isosceles right triangle.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Special Right Triangles' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Trigonometric Ratios
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Trigonometric Ratios' AND grade_level_min = 10),
  'Trigonometric Ratios Topic Guide', 'Sine, cosine, and tangent',
  'TRIGONOMETRIC RATIOS - TOPIC TEACHING GUIDE

PREREQUISITES: Right triangle identification, ratios and proportions, special right triangles.

LEARNING OBJECTIVES: Define sine, cosine, and tangent ratios. Calculate trig ratios for given triangles. Use calculator for trig values. Understand that ratios depend only on angle measure.

KEY CONCEPTS: 1) sin θ = opposite/hypotenuse. 2) cos θ = adjacent/hypotenuse. 3) tan θ = opposite/adjacent (also sin/cos). 4) SOHCAHTOA mnemonic. 5) Trig ratios are constant for a given angle regardless of triangle size. 6) Complementary angles: sin θ = cos(90°-θ).

COMMON MISCONCEPTIONS: Confusing opposite and adjacent, forgetting which side is hypotenuse.

TEACHING SEQUENCE: Define ratios in context of right triangle. Practice identifying sides relative to reference angle. Calculate ratios. Use calculators for non-special angles.

DIFFERENTIATION: Struggling learners always label sides; advanced learners explore unit circle connection.

VOCABULARY: Sine, cosine, tangent, opposite, adjacent, hypotenuse, trigonometric ratio, SOHCAHTOA.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Trigonometric Ratios' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Solving Right Triangles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Solving Right Triangles' AND grade_level_min = 10),
  'Solving Right Triangles Topic Guide', 'Finding missing sides and angles',
  'SOLVING RIGHT TRIANGLES - TOPIC TEACHING GUIDE

PREREQUISITES: Trigonometric ratios, inverse trig functions, Pythagorean theorem.

LEARNING OBJECTIVES: Find missing sides using trig ratios. Find missing angles using inverse trig functions. Solve triangles completely (all sides and angles). Choose appropriate method for given information.

KEY CONCEPTS: 1) To find side: set up ratio, solve for unknown. 2) To find angle: use inverse trig (sin⁻¹, cos⁻¹, tan⁻¹). 3) "Solve the triangle" means find all missing parts. 4) Always check that angles sum to 180° and Pythagorean theorem holds.

COMMON MISCONCEPTIONS: Using wrong ratio, confusing sin and sin⁻¹, not using inverse for angles.

TEACHING SEQUENCE: Review trig ratios. Introduce inverse trig functions. Practice finding sides, then angles. Solve complete triangles.

DIFFERENTIATION: Struggling learners use decision flowcharts; advanced learners explore multiple solution paths.

VOCABULARY: Solve a triangle, inverse sine, inverse cosine, inverse tangent, reference angle.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Solving Right Triangles' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Angles of Elevation and Depression
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Angles of Elevation and Depression' AND grade_level_min = 10),
  'Angles of Elevation and Depression Topic Guide', 'Real-world trig applications',
  'ANGLES OF ELEVATION AND DEPRESSION - TOPIC TEACHING GUIDE

PREREQUISITES: Solving right triangles, trigonometric ratios, alternate interior angles.

LEARNING OBJECTIVES: Define and identify angles of elevation and depression. Set up right triangles from word problems. Solve real-world problems using trigonometry. Draw and label diagrams correctly.

KEY CONCEPTS: 1) Angle of elevation: angle up from horizontal. 2) Angle of depression: angle down from horizontal. 3) Angle of elevation = angle of depression (alternate interior angles). 4) Always draw a diagram first. 5) Horizontal reference is crucial.

COMMON MISCONCEPTIONS: Confusing elevation and depression, measuring from wrong reference, not recognizing alternate interior angles.

TEACHING SEQUENCE: Define terms with clear diagrams. Practice identifying in scenarios. Set up and solve problems. Progress from simple to multi-step.

DIFFERENTIATION: Struggling learners use templates for diagrams; advanced learners tackle multi-observer problems.

VOCABULARY: Angle of elevation, angle of depression, horizontal, line of sight, observer.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Angles of Elevation and Depression' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Law of Sines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Law of Sines' AND grade_level_min = 10),
  'Law of Sines Topic Guide', 'Solving oblique triangles',
  'LAW OF SINES - TOPIC TEACHING GUIDE

PREREQUISITES: Trigonometric ratios, solving right triangles, understanding of non-right triangles.

LEARNING OBJECTIVES: State and apply the Law of Sines. Solve triangles given AAS or ASA. Recognize the ambiguous case (SSA). Apply to real-world problems.

KEY CONCEPTS: 1) Law of Sines: a/sin A = b/sin B = c/sin C. 2) Use when you know AAS, ASA, or SSA. 3) Ambiguous case (SSA): may have 0, 1, or 2 solutions. 4) For ambiguous case, check if second solution is valid.

COMMON MISCONCEPTIONS: Applying Law of Sines when Law of Cosines is needed, missing second solution in ambiguous case.

TEACHING SEQUENCE: Derive from right triangles. Practice with AAS and ASA. Explore ambiguous case. Apply to real problems.

DIFFERENTIATION: Struggling learners start with non-ambiguous cases; advanced learners explore the geometry of ambiguity.

VOCABULARY: Law of Sines, oblique triangle, ambiguous case, AAS, ASA, SSA.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Law of Sines' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Law of Cosines
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Law of Cosines' AND grade_level_min = 10),
  'Law of Cosines Topic Guide', 'Solving oblique triangles when SSS or SAS',
  'LAW OF COSINES - TOPIC TEACHING GUIDE

PREREQUISITES: Law of Sines, Pythagorean theorem, solving equations with square roots.

LEARNING OBJECTIVES: State and apply the Law of Cosines. Solve triangles given SAS or SSS. Choose between Law of Sines and Law of Cosines. Verify with Pythagorean theorem for right triangles.

KEY CONCEPTS: 1) Law of Cosines: c² = a² + b² - 2ab·cos C. 2) Use when you know SAS or SSS. 3) Generalizes Pythagorean theorem (when C = 90°, cos C = 0). 4) For SSS, solve for an angle first, then use Law of Sines.

COMMON MISCONCEPTIONS: Using wrong formula arrangement, forgetting -2ab·cos C term, not recognizing when to use it.

TEACHING SEQUENCE: Derive as generalization of Pythagorean theorem. Practice with SAS. Practice with SSS. Combine with Law of Sines.

DIFFERENTIATION: Struggling learners follow decision trees; advanced learners derive both forms.

VOCABULARY: Law of Cosines, oblique triangle, SSS, SAS, generalization.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Law of Cosines' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- ============================================================================
-- UNIT: Circles and Measurement
-- ============================================================================

-- Topic: Parts of a Circle
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Parts of a Circle' AND grade_level_min = 10),
  'Parts of a Circle Topic Guide', 'Chords, secants, tangents, arcs',
  'PARTS OF A CIRCLE - TOPIC TEACHING GUIDE

PREREQUISITES: Basic circle concepts (radius, diameter), line and segment concepts.

LEARNING OBJECTIVES: Define and identify parts of circles. Distinguish between chords, secants, and tangents. Understand arcs and their relationships to central angles. Apply terminology in problem-solving.

KEY CONCEPTS: 1) Chord: segment with both endpoints on circle. 2) Secant: line intersecting circle at two points. 3) Tangent: line touching circle at exactly one point (point of tangency). 4) Arc: portion of circle between two points. 5) Central angle: vertex at center. 6) Minor arc < 180°; major arc > 180°.

COMMON MISCONCEPTIONS: Confusing chord and secant, not recognizing tangent properties, arc naming conventions.

TEACHING SEQUENCE: Review radius and diameter. Define new terms with diagrams. Practice identification. Introduce arc notation.

DIFFERENTIATION: Struggling learners use manipulatives; advanced learners explore relationships between parts.

VOCABULARY: Chord, secant, tangent, arc, central angle, minor arc, major arc, semicircle.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Parts of a Circle' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Circle Theorems
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Circle Theorems' AND grade_level_min = 10),
  'Circle Theorems Topic Guide', 'Inscribed angles, central angles, chords',
  'CIRCLE THEOREMS - TOPIC TEACHING GUIDE

PREREQUISITES: Parts of a circle, central angles, arcs, angle relationships.

LEARNING OBJECTIVES: Apply inscribed angle theorem (half the central angle). Apply theorems about chords, tangents, and secants. Solve problems using circle theorems. Prove circle theorems.

KEY CONCEPTS: 1) Inscribed angle = ½ intercepted arc. 2) Inscribed angles intercepting same arc are congruent. 3) Inscribed angle in semicircle = 90°. 4) Tangent perpendicular to radius at point of tangency. 5) Chord relationships involve perpendicular bisectors.

COMMON MISCONCEPTIONS: Confusing inscribed and central angles, forgetting the "half" relationship.

TEACHING SEQUENCE: Discover inscribed angle relationship. State and apply theorems. Practice with numerical problems. Write proofs.

DIFFERENTIATION: Struggling learners use measurement to verify; advanced learners prove theorems.

VOCABULARY: Inscribed angle, central angle, intercepted arc, tangent-radius, chord, perpendicular bisector.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Circle Theorems' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Arc Length and Sector Area
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Arc Length and Sector Area' AND grade_level_min = 10),
  'Arc Length and Sector Area Topic Guide', 'Calculating parts of circles',
  'ARC LENGTH AND SECTOR AREA - TOPIC TEACHING GUIDE

PREREQUISITES: Circumference and area of circles, central angles, proportional reasoning.

LEARNING OBJECTIVES: Calculate arc length. Calculate sector area. Apply to real-world problems. Work with radians (introduction).

KEY CONCEPTS: 1) Arc length = (θ/360°) × 2πr = (θ/360°) × C. 2) Sector area = (θ/360°) × πr². 3) Arc length is a portion of circumference. 4) Sector area is a portion of circle area. 5) Radians: θ/360° = θᵣₐₐ/2π.

COMMON MISCONCEPTIONS: Confusing arc length with arc measure, using diameter instead of radius.

TEACHING SEQUENCE: Connect to circumference and area formulas. Derive as proportions. Practice calculations. Introduce radians.

DIFFERENTIATION: Struggling learners use visual proportions; advanced learners work fluently with radians.

VOCABULARY: Arc length, sector, central angle, proportion, radian.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Arc Length and Sector Area' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Equations of Circles
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Equations of Circles' AND grade_level_min = 10),
  'Equations of Circles Topic Guide', 'Standard form and graphing circles',
  'EQUATIONS OF CIRCLES - TOPIC TEACHING GUIDE

PREREQUISITES: Distance formula, completing the square, coordinate plane graphing.

LEARNING OBJECTIVES: Write equations in standard form (x-h)² + (y-k)² = r². Identify center and radius from equation. Graph circles from equations. Convert general form to standard form.

KEY CONCEPTS: 1) Standard form: (x-h)² + (y-k)² = r². 2) Center is (h, k); radius is r. 3) General form: x² + y² + Dx + Ey + F = 0. 4) Complete the square to convert general to standard. 5) Circle comes from distance formula applied to all points equidistant from center.

COMMON MISCONCEPTIONS: Sign errors in center coordinates, forgetting to take square root for radius.

TEACHING SEQUENCE: Derive from distance formula. Practice writing equations. Graph circles. Complete the square for general form.

DIFFERENTIATION: Struggling learners focus on standard form; advanced learners explore intersections with lines.

VOCABULARY: Standard form, general form, center, radius, completing the square.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Equations of Circles' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Surface Area (Geometry)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Surface Area' AND grade_level_min = 10),
  'Surface Area Topic Guide', 'Prisms, cylinders, pyramids, cones, spheres',
  'SURFACE AREA (GEOMETRY) - TOPIC TEACHING GUIDE

PREREQUISITES: Area of 2D shapes, nets of 3D shapes, circumference of circles.

LEARNING OBJECTIVES: Calculate surface area of prisms and cylinders. Calculate surface area of pyramids and cones. Calculate surface area of spheres. Apply to composite solids.

KEY CONCEPTS: 1) Surface area = sum of all face areas. 2) Prism: 2(base) + (lateral faces). 3) Cylinder: 2πr² + 2πrh. 4) Pyramid: base + (triangular lateral faces). 5) Cone: πr² + πrs (s = slant height). 6) Sphere: 4πr².

COMMON MISCONCEPTIONS: Confusing slant height and height, forgetting to include base in surface area.

TEACHING SEQUENCE: Review area formulas. Use nets to visualize surface area. Derive and apply formulas. Work with composite solids.

DIFFERENTIATION: Struggling learners unfold nets; advanced learners optimize surface area.

VOCABULARY: Surface area, lateral area, base, slant height, net.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Surface Area' AND grade_level_min = 10) ON CONFLICT DO NOTHING;

-- Topic: Volume (Geometry)
INSERT INTO prompt_templates (prompt_type, subject_id, topic_id, name, description, prompt_content, priority)
SELECT 'topic_global', (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM topics WHERE name = 'Volume' AND grade_level_min = 10),
  'Volume Topic Guide', 'Volume formulas for 3D shapes',
  'VOLUME (GEOMETRY) - TOPIC TEACHING GUIDE

PREREQUISITES: Area of 2D shapes, understanding of 3D space, working with π.

LEARNING OBJECTIVES: Calculate volume of prisms and cylinders. Calculate volume of pyramids and cones. Calculate volume of spheres. Apply to composite solids and real problems.

KEY CONCEPTS: 1) Prism: V = Bh (base area × height). 2) Cylinder: V = πr²h. 3) Pyramid: V = ⅓Bh. 4) Cone: V = ⅓πr²h. 5) Sphere: V = 4/3πr³. 6) Pyramids/cones are ⅓ of corresponding prisms/cylinders.

COMMON MISCONCEPTIONS: Forgetting the ⅓ factor, confusing radius and diameter, using wrong height.

TEACHING SEQUENCE: Review prism and cylinder volume. Demonstrate pyramid/cone relationship. Introduce sphere formula. Apply to composite and real-world solids.

DIFFERENTIATION: Struggling learners use physical models; advanced learners derive formulas using calculus concepts.

VOCABULARY: Volume, prism, cylinder, pyramid, cone, sphere, base area, height.', 90
FROM dual WHERE EXISTS (SELECT 1 FROM topics WHERE name = 'Volume' AND grade_level_min = 10) ON CONFLICT DO NOTHING;
