-- Migration: Add Custom Topics and Admin Users
-- This enables user-created custom topics with admin review functionality

-- ============================================================================
-- CUSTOM TOPICS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS custom_topics (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

  -- Creator information
  created_by UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,

  -- Topic details (similar to topics table)
  name TEXT NOT NULL,
  description TEXT,
  subject_id UUID REFERENCES subjects(id) ON DELETE SET NULL, -- optional, AI-suggested
  grade_level INTEGER NOT NULL CHECK (grade_level >= 1 AND grade_level <= 12),
  difficulty_level INTEGER NOT NULL CHECK (difficulty_level >= 1 AND difficulty_level <= 10),
  estimated_time INTEGER DEFAULT 30, -- in minutes

  -- AI-generated content
  topic_outline JSONB NOT NULL, -- { sections: [], keyPoints: [], concepts: [] }
  ai_prompt TEXT NOT NULL, -- Original user input

  -- Review workflow
  status TEXT DEFAULT 'draft' CHECK (status IN ('draft', 'published', 'pending_review', 'approved', 'rejected')),
  review_notes TEXT, -- Admin notes
  reviewed_by UUID REFERENCES users(id),
  reviewed_at TIMESTAMPTZ,

  -- Promotion tracking
  promoted_to_topic_id UUID REFERENCES topics(id), -- If promoted to official
  promoted_at TIMESTAMPTZ,

  -- Metadata
  usage_count INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Indexes for custom_topics
CREATE INDEX IF NOT EXISTS idx_custom_topics_created_by ON custom_topics(created_by);
CREATE INDEX IF NOT EXISTS idx_custom_topics_status ON custom_topics(status);
CREATE INDEX IF NOT EXISTS idx_custom_topics_grade_level ON custom_topics(grade_level);

-- ============================================================================
-- ADMIN USERS TABLE
-- ============================================================================

CREATE TABLE IF NOT EXISTS admin_users (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL UNIQUE,
  role TEXT DEFAULT 'moderator' CHECK (role IN ('moderator', 'admin', 'super_admin')),
  granted_by UUID REFERENCES users(id),
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Index for admin_users
CREATE INDEX IF NOT EXISTS idx_admin_users_user_id ON admin_users(user_id);

-- ============================================================================
-- ROW LEVEL SECURITY
-- ============================================================================

-- Enable RLS on custom_topics
ALTER TABLE custom_topics ENABLE ROW LEVEL SECURITY;

-- Users can view their own custom topics
DROP POLICY IF EXISTS "Users can view own custom topics" ON custom_topics;
CREATE POLICY "Users can view own custom topics"
  ON custom_topics FOR SELECT
  USING (auth.uid() = created_by);

-- Users can view published custom topics
DROP POLICY IF EXISTS "Anyone can view published custom topics" ON custom_topics;
CREATE POLICY "Anyone can view published custom topics"
  ON custom_topics FOR SELECT
  TO authenticated
  USING (status = 'published' OR status = 'approved');

-- Users can create their own custom topics
DROP POLICY IF EXISTS "Users can create own custom topics" ON custom_topics;
CREATE POLICY "Users can create own custom topics"
  ON custom_topics FOR INSERT
  TO authenticated
  WITH CHECK (auth.uid() = created_by);

-- Users can update their own custom topics
DROP POLICY IF EXISTS "Users can update own custom topics" ON custom_topics;
CREATE POLICY "Users can update own custom topics"
  ON custom_topics FOR UPDATE
  TO authenticated
  USING (auth.uid() = created_by);

-- Users can delete their own custom topics
DROP POLICY IF EXISTS "Users can delete own custom topics" ON custom_topics;
CREATE POLICY "Users can delete own custom topics"
  ON custom_topics FOR DELETE
  TO authenticated
  USING (auth.uid() = created_by);

-- Enable RLS on admin_users
ALTER TABLE admin_users ENABLE ROW LEVEL SECURITY;

-- Only admins can view admin list
DROP POLICY IF EXISTS "Admins can view admin list" ON admin_users;
CREATE POLICY "Admins can view admin list"
  ON admin_users FOR SELECT
  TO authenticated
  USING (
    EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid())
  );

-- Admin policies for custom_topics (separate from user policies)
DROP POLICY IF EXISTS "Admins can view all custom topics" ON custom_topics;
CREATE POLICY "Admins can view all custom topics"
  ON custom_topics FOR SELECT
  TO authenticated
  USING (
    EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid())
  );

DROP POLICY IF EXISTS "Admins can update any custom topic" ON custom_topics;
CREATE POLICY "Admins can update any custom topic"
  ON custom_topics FOR UPDATE
  TO authenticated
  USING (
    EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid())
  );

-- ============================================================================
-- FUNCTIONS
-- ============================================================================

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_custom_topics_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Trigger for updated_at
DROP TRIGGER IF EXISTS custom_topics_updated_at ON custom_topics;
CREATE TRIGGER custom_topics_updated_at
  BEFORE UPDATE ON custom_topics
  FOR EACH ROW
  EXECUTE FUNCTION update_custom_topics_updated_at();

-- Function to check if user is admin
CREATE OR REPLACE FUNCTION is_admin(user_uuid UUID)
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (SELECT 1 FROM admin_users WHERE user_id = user_uuid);
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to get admin role
CREATE OR REPLACE FUNCTION get_admin_role(user_uuid UUID)
RETURNS TEXT AS $$
DECLARE
  admin_role TEXT;
BEGIN
  SELECT role INTO admin_role FROM admin_users WHERE user_id = user_uuid;
  RETURN admin_role;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;
