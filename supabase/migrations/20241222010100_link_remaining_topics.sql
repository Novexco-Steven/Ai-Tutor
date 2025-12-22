-- Migration: Link remaining orphaned topics to appropriate units
-- These topics couldn't be auto-matched because multiple units exist for the subject/grade
-- ============================================================================

-- ============================================================================
-- HISTORY TOPICS
-- ============================================================================

-- Grade 0 History - link to Community & Family History unit
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'History' AND u.grade_level = 0
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Holidays & Traditions' AND grade_level_min = 0 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'History');

-- Grade 1 History
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'History' AND u.grade_level = 1
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Maps & Globes', 'First Nations, Métis & Inuit') AND grade_level_min = 1 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'History');

-- Grade 3 History - Early Exploration topics
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'History' AND u.grade_level = 3
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('New France', 'Early Explorers of Canada', 'Colonial America') AND grade_level_min = 3 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'History');

-- Grade 4 History
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'History' AND u.grade_level = 4
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Westward Expansion', 'Canadian Confederation') AND grade_level_min = 4 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'History');

-- Grade 7 History
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'History' AND u.grade_level = 7
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Indigenous Rights & Reconciliation' AND grade_level_min = 7 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'History');

-- Grade 8 History
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'History' AND u.grade_level = 8
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Quebec & French-English Relations' AND grade_level_min = 8 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'History');

-- Grade 9 History
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'History' AND u.grade_level = 9
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Cold War', 'Charter of Rights & Freedoms') AND grade_level_min = 9 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'History');

-- ============================================================================
-- MATH TOPICS
-- ============================================================================

-- Grade 2 Math - Place Value/Operations
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 2 AND (u.name LIKE '%Place Value%' OR u.name LIKE '%Number%')
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Fact Families', 'Comparing Three-Digit Numbers', 'Adding Three Numbers') AND grade_level_min = 2 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 3 Math - Multi-digit arithmetic
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 3 AND (u.name LIKE '%Addition%' OR u.name LIKE '%Subtraction%' OR u.name LIKE '%Operations%')
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Estimating Differences', 'Subtracting Four-Digit Numbers', 'Adding Four-Digit Numbers',
               'Subtracting Three-Digit Numbers', 'Adding Three-Digit Numbers', 'Mental Math Strategies',
               'Multi-Step Word Problems', 'Addition Properties', 'Estimating Sums')
AND grade_level_min = 3 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 3 Math - Place value topics
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 3 AND u.name LIKE '%Place Value%'
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Ordering Large Numbers', 'Comparing Four-Digit Numbers')
AND grade_level_min = 3 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 3 Math - Measurement
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 3 AND u.name LIKE '%Measurement%'
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Converting Length Units', 'Metric Length Conversions', 'Liquid Volume')
AND grade_level_min = 3 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 4 Math - Fractions
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 4 AND u.name LIKE '%Fraction%'
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Subtracting Mixed Numbers', 'Adding Mixed Numbers')
AND grade_level_min = 4 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 4 Math - Place Value
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 4 AND u.name LIKE '%Place Value%'
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Comparing Large Numbers', 'Ordering Large Numbers', 'Rounding Large Numbers', 'Place Value Relationships', 'Roman Numerals')
AND grade_level_min = 4 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 5 Math - Large Numbers
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 5 AND (u.name LIKE '%Place Value%' OR u.name LIKE '%Number%')
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Numbers to Billions'
AND grade_level_min = 5 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 5 Math - Measurement
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 5 AND u.name LIKE '%Measurement%'
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Metric Length Conversions', 'Customary Length Conversions', 'Customary Capacity Conversions',
               'Metric Capacity Conversions', 'Customary Weight Conversions', 'Metric Mass Conversions', 'Multi-Step Conversion Problems')
AND grade_level_min = 5 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 6 Math - Fractions/Ratios
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 6 AND (u.name LIKE '%Fraction%' OR u.name LIKE '%Ratio%')
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Fraction Division Word Problems', 'Dividing Fractions by Fractions', 'Complex Fractions')
AND grade_level_min = 6 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 6 Math - Integers
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 6 AND u.name LIKE '%Integer%'
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Integers'
AND grade_level_min = 6 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 7-11 Math - Advanced topics (first available unit)
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 7
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Pre-Algebra' AND grade_level_min = 7 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 9
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Geometry' AND grade_level_min = 9 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 10
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Algebra II' AND grade_level_min = 10 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 11
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Pre-Calculus' AND grade_level_min = 11 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- ============================================================================
-- READING TOPICS
-- ============================================================================

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Reading' AND u.grade_level = 0
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Sight Words' AND grade_level_min = 0 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Reading');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Reading' AND u.grade_level = 3
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Main Idea & Details' AND grade_level_min = 3 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Reading');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Reading' AND u.grade_level = 4
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Making Inferences' AND grade_level_min = 4 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Reading');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Reading' AND u.grade_level = 6
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Literary Analysis' AND grade_level_min = 6 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Reading');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Reading' AND u.grade_level = 8
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Authors Purpose' AND grade_level_min = 8 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Reading');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Reading' AND u.grade_level = 11
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Literary Criticism' AND grade_level_min = 11 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Reading');

-- ============================================================================
-- SCIENCE TOPICS
-- ============================================================================

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 0
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Living vs Non-Living' AND grade_level_min = 0 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 1
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Weather & Seasons' AND grade_level_min = 1 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 2
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Simple Machines' AND grade_level_min = 2 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 4
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Human Body Systems', 'The Solar System') AND grade_level_min = 4 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 6
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Force & Motion' AND grade_level_min = 6 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 7
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Electricity & Magnetism', 'Chemistry Basics') AND grade_level_min = 7 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 8
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Cell Biology' AND grade_level_min = 8 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 9
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Genetics' AND grade_level_min = 9 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');

UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Science' AND u.grade_level = 10
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN ('Environmental Science', 'Physics') AND grade_level_min = 10 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Science');
