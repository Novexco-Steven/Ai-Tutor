-- Migration: Add parent_children table for parent-child relationships
-- Run this in your Supabase SQL Editor

-- Parent-child relationship table
-- Links parent users to their children (student accounts)
CREATE TABLE IF NOT EXISTS parent_children (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

  -- Parent user ID (must be a registered user)
  parent_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,

  -- Child user ID (the student being monitored)
  child_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,

  -- Relationship type (for future flexibility)
  relationship TEXT DEFAULT 'parent' CHECK (relationship IN ('parent', 'guardian', 'teacher')),

  -- Parental controls
  daily_time_limit INTEGER DEFAULT 60, -- minutes per day
  allowed_subjects UUID[] DEFAULT NULL, -- NULL means all subjects allowed
  content_restrictions JSONB DEFAULT '{}', -- Future: age restrictions, topic blocks, etc.

  -- Notification preferences
  notify_on_completion BOOLEAN DEFAULT true,
  notify_on_low_score BOOLEAN DEFAULT true,
  low_score_threshold INTEGER DEFAULT 60, -- percentage
  weekly_summary_email BOOLEAN DEFAULT true,

  -- Status and timestamps
  status TEXT DEFAULT 'active' CHECK (status IN ('active', 'pending', 'revoked')),
  invited_at TIMESTAMPTZ DEFAULT NOW(),
  accepted_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),

  -- Ensure a parent can only link to a child once
  UNIQUE(parent_id, child_id),

  -- Prevent self-linking
  CONSTRAINT no_self_link CHECK (parent_id != child_id)
);

-- Indexes for efficient queries
CREATE INDEX IF NOT EXISTS idx_parent_children_parent
  ON parent_children(parent_id) WHERE status = 'active';

CREATE INDEX IF NOT EXISTS idx_parent_children_child
  ON parent_children(child_id) WHERE status = 'active';

-- Enable RLS
ALTER TABLE parent_children ENABLE ROW LEVEL SECURITY;

-- RLS Policies

-- Parents can view their own children relationships
CREATE POLICY "Parents can view their children"
  ON parent_children FOR SELECT
  TO authenticated
  USING (parent_id = auth.uid());

-- Children can view who their parents are
CREATE POLICY "Children can view their parents"
  ON parent_children FOR SELECT
  TO authenticated
  USING (child_id = auth.uid());

-- Only parents can create relationships (invite children)
CREATE POLICY "Parents can invite children"
  ON parent_children FOR INSERT
  TO authenticated
  WITH CHECK (parent_id = auth.uid());

-- Parents can update their relationship settings
CREATE POLICY "Parents can update their settings"
  ON parent_children FOR UPDATE
  TO authenticated
  USING (parent_id = auth.uid());

-- Parents can delete (revoke) relationships
CREATE POLICY "Parents can revoke access"
  ON parent_children FOR DELETE
  TO authenticated
  USING (parent_id = auth.uid());

-- Trigger for auto-updating updated_at
CREATE TRIGGER update_parent_children_updated_at
  BEFORE UPDATE ON parent_children
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- Add user_type column to users table if it doesn't exist
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'users' AND column_name = 'user_type'
  ) THEN
    ALTER TABLE users ADD COLUMN user_type TEXT DEFAULT 'student'
      CHECK (user_type IN ('student', 'parent', 'teacher', 'admin'));
  END IF;
END $$;

-- Create index on user_type for filtering
CREATE INDEX IF NOT EXISTS idx_users_type ON users(user_type);

-- Function to get all children for a parent with their progress summaries
CREATE OR REPLACE FUNCTION get_children_for_parent(p_parent_id UUID)
RETURNS TABLE (
  child_id UUID,
  child_name TEXT,
  child_email TEXT,
  child_avatar JSONB,
  relationship TEXT,
  daily_time_limit INTEGER,
  status TEXT,
  total_xp INTEGER,
  current_level INTEGER,
  current_streak INTEGER,
  lessons_completed BIGINT,
  quizzes_passed BIGINT,
  avg_score NUMERIC
) AS $$
BEGIN
  RETURN QUERY
  SELECT
    u.id as child_id,
    u.name as child_name,
    u.email as child_email,
    u.avatar as child_avatar,
    pc.relationship,
    pc.daily_time_limit,
    pc.status,
    COALESCE(g.xp, 0) as total_xp,
    COALESCE(g.level, 1) as current_level,
    COALESCE(g.current_streak, 0) as current_streak,
    COALESCE(g.total_lessons_completed, 0) as lessons_completed,
    COALESCE(g.total_quizzes_passed, 0) as quizzes_passed,
    COALESCE(
      (SELECT AVG(qr.is_correct::int) * 100
       FROM question_responses qr
       WHERE qr.user_id = u.id
       AND qr.created_at > NOW() - INTERVAL '30 days'),
      0
    ) as avg_score
  FROM parent_children pc
  JOIN users u ON pc.child_id = u.id
  LEFT JOIN gamification_data g ON g.user_id = u.id
  WHERE pc.parent_id = p_parent_id
  AND pc.status = 'active';
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function to link a child by email (invitation flow)
CREATE OR REPLACE FUNCTION invite_child_by_email(
  p_parent_id UUID,
  p_child_email TEXT,
  p_relationship TEXT DEFAULT 'parent'
)
RETURNS UUID AS $$
DECLARE
  v_child_id UUID;
  v_link_id UUID;
BEGIN
  -- Find child by email
  SELECT id INTO v_child_id FROM users WHERE email = p_child_email;

  IF v_child_id IS NULL THEN
    RAISE EXCEPTION 'No user found with email %', p_child_email;
  END IF;

  IF v_child_id = p_parent_id THEN
    RAISE EXCEPTION 'Cannot link yourself as a child';
  END IF;

  -- Create the relationship
  INSERT INTO parent_children (parent_id, child_id, relationship, status)
  VALUES (p_parent_id, v_child_id, p_relationship, 'pending')
  ON CONFLICT (parent_id, child_id) DO UPDATE
    SET status = 'pending', invited_at = NOW()
  RETURNING id INTO v_link_id;

  RETURN v_link_id;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function for child to accept parent invitation
CREATE OR REPLACE FUNCTION accept_parent_invitation(p_child_id UUID, p_link_id UUID)
RETURNS BOOLEAN AS $$
BEGIN
  UPDATE parent_children
  SET status = 'active', accepted_at = NOW()
  WHERE id = p_link_id
  AND child_id = p_child_id
  AND status = 'pending';

  RETURN FOUND;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Add comments
COMMENT ON TABLE parent_children IS 'Parent-child relationships for parental monitoring';
COMMENT ON FUNCTION get_children_for_parent IS 'Get all children and their progress for a parent';
COMMENT ON FUNCTION invite_child_by_email IS 'Invite a child by their email address';
COMMENT ON FUNCTION accept_parent_invitation IS 'Child accepts a parent invitation';
