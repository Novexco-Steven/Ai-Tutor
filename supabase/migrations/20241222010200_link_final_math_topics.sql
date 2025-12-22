-- Migration: Link final remaining Math topics
-- ============================================================================

-- Grade 3 Math - All these fit in Number Operations
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 3
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN (
  'Ordering Large Numbers', 'Adding Three-Digit Numbers', 'Subtracting Three-Digit Numbers',
  'Adding Four-Digit Numbers', 'Subtracting Four-Digit Numbers', 'Estimating Sums',
  'Estimating Differences', 'Addition Properties', 'Mental Math Strategies',
  'Multi-Step Word Problems', 'Comparing Four-Digit Numbers'
)
AND grade_level_min = 3 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 4 Math - Place Value topics
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 4
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name IN (
  'Roman Numerals', 'Place Value Relationships', 'Comparing Large Numbers',
  'Ordering Large Numbers', 'Rounding Large Numbers'
)
AND grade_level_min = 4 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');

-- Grade 6 Math - Integers (fall back to first available unit)
UPDATE topics SET unit_id = (
  SELECT u.id FROM units u
  JOIN subjects s ON u.subject_id = s.id
  WHERE s.name = 'Math' AND u.grade_level = 6
  ORDER BY u.order_index
  LIMIT 1
)
WHERE name = 'Integers'
AND grade_level_min = 6 AND unit_id IS NULL
AND subject_id = (SELECT id FROM subjects WHERE name = 'Math');
