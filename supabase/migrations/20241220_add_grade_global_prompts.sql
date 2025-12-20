-- ============================================
-- Add Grade Global Prompt Type Migration
-- ============================================
-- This migration adds grade_global prompt type and grade_level column
-- to support grade-level teaching approach prompts
-- ============================================

-- ============================================
-- Step 1: Add grade_level column
-- ============================================
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'prompt_templates' AND column_name = 'grade_level'
  ) THEN
    ALTER TABLE prompt_templates ADD COLUMN grade_level INTEGER;
  END IF;
END $$;

-- ============================================
-- Step 2: Drop and recreate the prompt_type check constraint
-- to include 'grade_global'
-- ============================================

-- First, drop the existing constraint (if it exists)
DO $$
BEGIN
  ALTER TABLE prompt_templates DROP CONSTRAINT IF EXISTS prompt_templates_prompt_type_check;
EXCEPTION
  WHEN undefined_object THEN
    NULL; -- Constraint doesn't exist, continue
END $$;

-- Create new constraint with grade_global included
ALTER TABLE prompt_templates
  ADD CONSTRAINT prompt_templates_prompt_type_check
  CHECK (prompt_type IN (
    'grade_global',              -- NEW: Grade-level teaching approaches (K-12)
    'user_profile',              -- Layer 2: Based on skills/assessment
    'user_learning_preference',  -- Layer 2a: Global learning preferences
    'subject_global',            -- Layer 3: Subject teaching approach
    'subject_location',          -- Layer 4: Regional subject variant
    'unit_global',               -- Layer 5: Unit objectives
    'unit_location',             -- Layer 6: Regional unit variant
    'topic_global',              -- Layer 7: Topic methodology
    'topic_location',            -- Layer 8: Regional topic variant
    'user_customization'         -- Layer 9: User-specific customizations
  ));

-- ============================================
-- Step 3: Add index for grade_level lookups
-- ============================================
CREATE INDEX IF NOT EXISTS idx_prompt_templates_grade_level
  ON prompt_templates(grade_level) WHERE is_active = TRUE AND prompt_type = 'grade_global';

-- ============================================
-- Step 4: Add composite index for grade-based queries
-- ============================================
CREATE INDEX IF NOT EXISTS idx_prompt_templates_grade_scope
  ON prompt_templates(prompt_type, grade_level, subject_id)
  WHERE is_active = TRUE;

-- ============================================
-- Step 5: Add constraint for grade_global prompts
-- ============================================
-- Ensure grade_global prompts have a grade_level set
-- and grade_level is within valid range (0 = Kindergarten, 1-12 = Grades 1-12)
ALTER TABLE prompt_templates
  ADD CONSTRAINT prompt_templates_grade_level_check
  CHECK (
    (prompt_type = 'grade_global' AND grade_level IS NOT NULL AND grade_level >= 0 AND grade_level <= 12)
    OR
    (prompt_type != 'grade_global')
  );

-- ============================================
-- Verification
-- ============================================
DO $$
BEGIN
  RAISE NOTICE 'Migration complete: grade_global prompt type and grade_level column added';
END $$;
