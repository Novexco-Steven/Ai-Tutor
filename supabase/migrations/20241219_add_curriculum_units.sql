-- Migration: Add curriculum units table for structured Grade 7 curriculum
-- This creates a hierarchy: Grade -> Subject -> Unit -> Topic -> Lesson

-- ============================================================================
-- CREATE UNITS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS units (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  subject_id UUID REFERENCES subjects(id) ON DELETE CASCADE NOT NULL,
  grade_level INTEGER NOT NULL,
  name TEXT NOT NULL,
  description TEXT,
  order_index INTEGER NOT NULL,
  icon TEXT,
  estimated_total_time INTEGER, -- sum of topic times in minutes
  learning_objectives JSONB DEFAULT '[]'::jsonb,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(subject_id, grade_level, name)
);

-- ============================================================================
-- MODIFY TOPICS TABLE
-- ============================================================================

-- Add unit_id column (nullable for backward compatibility)
ALTER TABLE topics ADD COLUMN IF NOT EXISTS unit_id UUID REFERENCES units(id) ON DELETE SET NULL;

-- ============================================================================
-- INDEXES
-- ============================================================================

CREATE INDEX IF NOT EXISTS idx_units_subject_grade ON units(subject_id, grade_level);
CREATE INDEX IF NOT EXISTS idx_units_grade_level ON units(grade_level);
CREATE INDEX IF NOT EXISTS idx_topics_unit_id ON topics(unit_id);

-- ============================================================================
-- ROW LEVEL SECURITY
-- ============================================================================

ALTER TABLE units ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Anyone can view units"
  ON units FOR SELECT
  TO authenticated
  USING (true);

-- ============================================================================
-- COMMENTS
-- ============================================================================

COMMENT ON TABLE units IS 'Curriculum units that group topics within a subject for a specific grade level';
COMMENT ON COLUMN units.subject_id IS 'The subject this unit belongs to';
COMMENT ON COLUMN units.grade_level IS 'The grade level this unit is designed for';
COMMENT ON COLUMN units.order_index IS 'Order in which units should be presented within a subject/grade';
COMMENT ON COLUMN units.learning_objectives IS 'JSON array of learning objectives for this unit';
COMMENT ON COLUMN topics.unit_id IS 'Optional unit this topic belongs to (null for standalone/AI-suggested topics)';
