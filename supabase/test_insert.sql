-- Test single topic insert for Grade 11 Math
-- Run this in Supabase SQL Editor to debug

-- First check if the unit exists
SELECT id, name, grade_level
FROM units
WHERE name = 'Polynomial and Rational Functions' AND grade_level = 11;

-- Check subject
SELECT id, name FROM subjects WHERE name = 'Math';

-- Now try the insert with explicit values
INSERT INTO topics (subject_id, unit_id, name, description, grade_level_min, grade_level_max, difficulty_level, order_index, estimated_time)
VALUES (
  (SELECT id FROM subjects WHERE name = 'Math'),
  (SELECT id FROM units WHERE name = 'Polynomial and Rational Functions' AND grade_level = 11),
  'TEST - Polynomial Operations',
  'Testing insert',
  11, 11, 3, 1, 35
);

-- Check if it was inserted
SELECT * FROM topics WHERE name LIKE 'TEST%';
