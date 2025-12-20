-- Migration: Add content_library table for shared caching
-- Run this in your Supabase SQL Editor

-- Content library table (shared cache for lessons/questions across all users)
-- Stores canonical, theme-agnostic content that can be re-themed per user
CREATE TABLE IF NOT EXISTS content_library (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

  -- Content identification (unique per topic/grade/difficulty/type combination)
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE NOT NULL,
  grade_level INTEGER NOT NULL,
  difficulty_level INTEGER NOT NULL CHECK (difficulty_level BETWEEN 1 AND 10),
  content_type TEXT NOT NULL CHECK (content_type IN ('lesson', 'questions')),

  -- Content storage (LessonContent or Question[] as JSONB)
  content JSONB NOT NULL,

  -- Metadata for analytics and versioning
  version INTEGER DEFAULT 1,
  usage_count INTEGER DEFAULT 0,
  avg_rating DECIMAL(3,2),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),

  -- Ensure one version per topic/grade/difficulty/type
  UNIQUE(topic_id, grade_level, difficulty_level, content_type)
);

-- Index for fast lookups
CREATE INDEX IF NOT EXISTS idx_content_library_lookup
  ON content_library(topic_id, grade_level, difficulty_level, content_type);

-- Enable RLS
ALTER TABLE content_library ENABLE ROW LEVEL SECURITY;

-- RLS Policies - Content library is a shared public cache
CREATE POLICY "Anyone can view content library"
  ON content_library FOR SELECT
  TO authenticated
  USING (true);

CREATE POLICY "Anyone can insert to content library"
  ON content_library FOR INSERT
  TO authenticated
  WITH CHECK (true);

CREATE POLICY "Anyone can update content library"
  ON content_library FOR UPDATE
  TO authenticated
  USING (true);

-- Trigger for auto-updating updated_at
CREATE TRIGGER update_content_library_updated_at
  BEFORE UPDATE ON content_library
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Optional: RPC function for atomic usage count increment
CREATE OR REPLACE FUNCTION increment_content_usage(content_id UUID)
RETURNS void AS $$
BEGIN
  UPDATE content_library
  SET usage_count = usage_count + 1
  WHERE id = content_id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Add comment
COMMENT ON TABLE content_library IS 'Shared public library of lessons/questions by grade/topic/difficulty';
