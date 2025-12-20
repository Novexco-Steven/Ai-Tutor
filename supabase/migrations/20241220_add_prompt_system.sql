-- ============================================
-- Additive Prompt System Migration
-- ============================================
-- This migration adds tables for a layered, database-driven
-- AI prompt system with version history and user customization.
-- ============================================

-- Enable UUID extension if not already enabled
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================
-- Admin Users Table
-- ============================================
CREATE TABLE IF NOT EXISTS admin_users (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL UNIQUE,
  role TEXT NOT NULL DEFAULT 'admin' CHECK (role IN ('admin', 'super_admin')),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================
-- Prompt Templates Table
-- Stores all prompt templates across all layers
-- ============================================
CREATE TABLE IF NOT EXISTS prompt_templates (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),

  -- Type identification (the layer this prompt belongs to)
  prompt_type TEXT NOT NULL CHECK (prompt_type IN (
    'user_profile',              -- Layer 1: Based on skills/assessment
    'user_learning_preference',  -- Layer 1a: Global learning preferences
    'subject_global',            -- Layer 2: Subject teaching approach
    'subject_location',          -- Layer 3: Regional subject variant
    'unit_global',               -- Layer 4: Unit objectives
    'unit_location',             -- Layer 5: Regional unit variant
    'topic_global',              -- Layer 6: Topic methodology
    'topic_location',            -- Layer 7: Regional topic variant
    'user_customization'         -- Layer 8: User-specific customizations
  )),

  -- Scope references (nullable based on prompt_type)
  subject_id UUID REFERENCES subjects(id) ON DELETE CASCADE,
  unit_id UUID REFERENCES units(id) ON DELETE CASCADE,
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,

  -- Location scope (for location variants)
  country_code TEXT,              -- ISO 3166-1 alpha-2 (e.g., 'US', 'CA', 'GB')
  province_state TEXT,            -- Province/State code (e.g., 'CA', 'ON', 'TX')

  -- Prompt content
  name TEXT NOT NULL,
  description TEXT,
  prompt_content TEXT NOT NULL,

  -- Override sections (JSON map of section_id -> override_content)
  -- Allows specific prompts to override sections from parent layers
  -- Format: {"section_name": "override content"}
  override_sections JSONB DEFAULT '{}'::jsonb,

  -- Metadata
  is_active BOOLEAN DEFAULT TRUE,
  priority INTEGER DEFAULT 0,     -- Higher = more specific/preferred
  created_by UUID REFERENCES users(id),
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================
-- Prompt Versions Table
-- Full version history with rollback capability
-- ============================================
CREATE TABLE IF NOT EXISTS prompt_versions (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  prompt_template_id UUID REFERENCES prompt_templates(id) ON DELETE CASCADE NOT NULL,

  -- Version tracking
  version_number INTEGER NOT NULL,

  -- Snapshot of content at this version
  prompt_content TEXT NOT NULL,
  override_sections JSONB DEFAULT '{}'::jsonb,

  -- Change tracking
  change_summary TEXT,
  changed_by UUID REFERENCES users(id),
  changed_at TIMESTAMPTZ DEFAULT NOW(),

  -- Current version flag
  is_current BOOLEAN DEFAULT FALSE,

  -- Rollback reference (if this version was created via rollback)
  rolled_back_from UUID REFERENCES prompt_versions(id),

  UNIQUE(prompt_template_id, version_number)
);

-- ============================================
-- Learning Preferences Table
-- User's global learning preferences
-- ============================================
CREATE TABLE IF NOT EXISTS learning_preferences (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL UNIQUE,

  -- Preferred teacher persona (references TEACHER_PERSONAS in prompts.ts)
  preferred_teacher_persona TEXT,

  -- Preferred teaching method (references TEACHING_METHODS in prompts.ts)
  preferred_teaching_method TEXT,

  -- Preferred feedback method (references FEEDBACK_METHODS in prompts.ts)
  preferred_feedback_method TEXT,

  -- Learning style from profile
  learning_style TEXT CHECK (learning_style IN ('visual', 'auditory', 'reading', 'kinesthetic')),

  -- Custom preferences (extensible JSONB)
  -- Structure:
  -- {
  --   "explanation_detail": "thorough" | "concise",
  --   "example_quantity": "many" | "few",
  --   "encouragement_level": "high" | "moderate" | "minimal",
  --   "challenge_preference": "struggle_first" | "guided",
  --   "pace_preference": "fast" | "moderate" | "slow"
  -- }
  custom_preferences JSONB DEFAULT '{}'::jsonb,

  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================
-- User Prompt Customizations Table
-- User's unit/topic specific customizations (Layer 8)
-- ============================================
CREATE TABLE IF NOT EXISTS user_prompt_customizations (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,

  -- Scope (at least one should be set for meaningful customization)
  subject_id UUID REFERENCES subjects(id) ON DELETE CASCADE,
  unit_id UUID REFERENCES units(id) ON DELETE CASCADE,
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE,

  -- Customization content
  custom_instructions TEXT,       -- User's additional instructions
  focus_areas TEXT[],             -- Specific concepts to emphasize
  avoid_topics TEXT[],            -- Topics/approaches to avoid
  custom_examples TEXT[],         -- User-provided example contexts

  -- Metadata
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),

  -- Ensure one customization per scope per user
  UNIQUE NULLS NOT DISTINCT (user_id, subject_id, unit_id, topic_id)
);

-- ============================================
-- Location Metadata Table
-- Reference data for supported locations
-- ============================================
CREATE TABLE IF NOT EXISTS location_metadata (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  country_code TEXT NOT NULL,
  province_state TEXT,
  display_name TEXT NOT NULL,
  curriculum_standard TEXT,       -- e.g., 'Common Core', 'Ontario Curriculum', 'UK National'
  language_variant TEXT,          -- e.g., 'en-US', 'en-GB', 'en-CA'
  cultural_context JSONB DEFAULT '{}'::jsonb,
  is_active BOOLEAN DEFAULT TRUE,

  UNIQUE(country_code, province_state)
);

-- ============================================
-- Indexes for Performance
-- ============================================

-- Prompt templates indexes
CREATE INDEX IF NOT EXISTS idx_prompt_templates_type
  ON prompt_templates(prompt_type) WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_prompt_templates_subject
  ON prompt_templates(subject_id) WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_prompt_templates_unit
  ON prompt_templates(unit_id) WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_prompt_templates_topic
  ON prompt_templates(topic_id) WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_prompt_templates_location
  ON prompt_templates(country_code, province_state) WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_prompt_templates_user
  ON prompt_templates(user_id) WHERE is_active = TRUE;

-- Composite index for common query pattern
CREATE INDEX IF NOT EXISTS idx_prompt_templates_scope
  ON prompt_templates(prompt_type, subject_id, unit_id, topic_id, country_code, province_state)
  WHERE is_active = TRUE;

-- Version history indexes
CREATE INDEX IF NOT EXISTS idx_prompt_versions_template
  ON prompt_versions(prompt_template_id);

CREATE INDEX IF NOT EXISTS idx_prompt_versions_current
  ON prompt_versions(prompt_template_id) WHERE is_current = TRUE;

-- User customizations indexes
CREATE INDEX IF NOT EXISTS idx_user_customizations_user
  ON user_prompt_customizations(user_id) WHERE is_active = TRUE;

CREATE INDEX IF NOT EXISTS idx_user_customizations_scope
  ON user_prompt_customizations(user_id, subject_id, unit_id, topic_id)
  WHERE is_active = TRUE;

-- Learning preferences index
CREATE INDEX IF NOT EXISTS idx_learning_preferences_user
  ON learning_preferences(user_id);

-- Admin users index
CREATE INDEX IF NOT EXISTS idx_admin_users_user
  ON admin_users(user_id);

-- ============================================
-- Row Level Security Policies
-- ============================================

-- Enable RLS on all tables
ALTER TABLE admin_users ENABLE ROW LEVEL SECURITY;
ALTER TABLE prompt_templates ENABLE ROW LEVEL SECURITY;
ALTER TABLE prompt_versions ENABLE ROW LEVEL SECURITY;
ALTER TABLE learning_preferences ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_prompt_customizations ENABLE ROW LEVEL SECURITY;
ALTER TABLE location_metadata ENABLE ROW LEVEL SECURITY;

-- Admin users policies
CREATE POLICY "Admins can view all admin users"
  ON admin_users FOR SELECT
  TO authenticated
  USING (
    EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid())
  );

CREATE POLICY "Super admins can manage admin users"
  ON admin_users FOR ALL
  TO authenticated
  USING (
    EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid() AND role = 'super_admin')
  );

-- Prompt templates policies
CREATE POLICY "Anyone can view active global prompts"
  ON prompt_templates FOR SELECT
  TO authenticated
  USING (
    is_active = TRUE AND (
      user_id IS NULL OR           -- Global prompts visible to all
      user_id = auth.uid()         -- User's own customizations
    )
  );

CREATE POLICY "Admins can manage global prompts"
  ON prompt_templates FOR ALL
  TO authenticated
  USING (
    -- Admins can manage all global prompts (where user_id is NULL)
    (EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid()) AND prompt_templates.user_id IS NULL)
    OR
    -- Users can manage their own user_customization prompts
    (prompt_type = 'user_customization' AND prompt_templates.user_id = auth.uid())
  );

-- Prompt versions policies
CREATE POLICY "Anyone can view versions of visible prompts"
  ON prompt_versions FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM prompt_templates pt
      WHERE pt.id = prompt_versions.prompt_template_id
      AND pt.is_active = TRUE
      AND (pt.user_id IS NULL OR pt.user_id = auth.uid())
    )
  );

CREATE POLICY "Admins can manage prompt versions"
  ON prompt_versions FOR ALL
  TO authenticated
  USING (
    EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid())
    OR EXISTS (
      SELECT 1 FROM prompt_templates pt
      WHERE pt.id = prompt_versions.prompt_template_id
      AND pt.prompt_type = 'user_customization'
      AND pt.user_id = auth.uid()
    )
  );

-- Learning preferences policies
CREATE POLICY "Users can view own preferences"
  ON learning_preferences FOR SELECT
  TO authenticated
  USING (user_id = auth.uid());

CREATE POLICY "Users can manage own preferences"
  ON learning_preferences FOR ALL
  TO authenticated
  USING (user_id = auth.uid());

-- User customizations policies
CREATE POLICY "Users can view own customizations"
  ON user_prompt_customizations FOR SELECT
  TO authenticated
  USING (user_id = auth.uid());

CREATE POLICY "Users can manage own customizations"
  ON user_prompt_customizations FOR ALL
  TO authenticated
  USING (user_id = auth.uid());

-- Location metadata policies (read-only for authenticated users)
CREATE POLICY "Anyone can view active locations"
  ON location_metadata FOR SELECT
  TO authenticated
  USING (is_active = TRUE);

CREATE POLICY "Only admins can manage locations"
  ON location_metadata FOR ALL
  TO authenticated
  USING (
    EXISTS (SELECT 1 FROM admin_users WHERE user_id = auth.uid())
  );

-- ============================================
-- Trigger for updated_at
-- ============================================
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply trigger to all tables with updated_at
CREATE TRIGGER update_admin_users_updated_at
  BEFORE UPDATE ON admin_users
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_prompt_templates_updated_at
  BEFORE UPDATE ON prompt_templates
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_learning_preferences_updated_at
  BEFORE UPDATE ON learning_preferences
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_user_prompt_customizations_updated_at
  BEFORE UPDATE ON user_prompt_customizations
  FOR EACH ROW EXECUTE FUNCTION update_updated_at_column();

-- ============================================
-- Trigger for auto-versioning prompt templates
-- ============================================
CREATE OR REPLACE FUNCTION create_prompt_version()
RETURNS TRIGGER AS $$
DECLARE
  next_version INTEGER;
BEGIN
  -- Get the next version number
  SELECT COALESCE(MAX(version_number), 0) + 1 INTO next_version
  FROM prompt_versions
  WHERE prompt_template_id = NEW.id;

  -- Mark all existing versions as not current
  UPDATE prompt_versions
  SET is_current = FALSE
  WHERE prompt_template_id = NEW.id AND is_current = TRUE;

  -- Create new version
  INSERT INTO prompt_versions (
    prompt_template_id,
    version_number,
    prompt_content,
    override_sections,
    change_summary,
    changed_by,
    is_current
  ) VALUES (
    NEW.id,
    next_version,
    NEW.prompt_content,
    NEW.override_sections,
    CASE
      WHEN TG_OP = 'INSERT' THEN 'Initial version'
      ELSE 'Updated prompt content'
    END,
    NEW.created_by,
    TRUE
  );

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply versioning trigger
CREATE TRIGGER auto_version_prompt_templates
  AFTER INSERT OR UPDATE OF prompt_content, override_sections ON prompt_templates
  FOR EACH ROW EXECUTE FUNCTION create_prompt_version();

-- ============================================
-- Seed Location Metadata
-- ============================================
INSERT INTO location_metadata (country_code, province_state, display_name, curriculum_standard, language_variant) VALUES
  -- United States
  ('US', NULL, 'United States (General)', 'Common Core', 'en-US'),
  ('US', 'CA', 'California, USA', 'California Standards', 'en-US'),
  ('US', 'TX', 'Texas, USA', 'Texas Essential Knowledge', 'en-US'),
  ('US', 'NY', 'New York, USA', 'NY State Standards', 'en-US'),
  ('US', 'FL', 'Florida, USA', 'Florida Standards', 'en-US'),

  -- Canada
  ('CA', NULL, 'Canada (General)', 'Canadian Curriculum', 'en-CA'),
  ('CA', 'ON', 'Ontario, Canada', 'Ontario Curriculum', 'en-CA'),
  ('CA', 'BC', 'British Columbia, Canada', 'BC Curriculum', 'en-CA'),
  ('CA', 'AB', 'Alberta, Canada', 'Alberta Program of Studies', 'en-CA'),
  ('CA', 'QC', 'Quebec, Canada', 'Quebec Education Program', 'fr-CA'),

  -- United Kingdom
  ('GB', NULL, 'United Kingdom (General)', 'UK National Curriculum', 'en-GB'),
  ('GB', 'ENG', 'England', 'English National Curriculum', 'en-GB'),
  ('GB', 'SCT', 'Scotland', 'Scottish Curriculum', 'en-GB'),
  ('GB', 'WLS', 'Wales', 'Welsh Curriculum', 'en-GB'),

  -- Australia
  ('AU', NULL, 'Australia (General)', 'Australian Curriculum', 'en-AU'),
  ('AU', 'NSW', 'New South Wales, Australia', 'NSW Syllabus', 'en-AU'),
  ('AU', 'VIC', 'Victoria, Australia', 'Victorian Curriculum', 'en-AU'),

  -- Other English-speaking countries
  ('NZ', NULL, 'New Zealand', 'NZ Curriculum', 'en-NZ'),
  ('IE', NULL, 'Ireland', 'Irish Curriculum', 'en-IE'),
  ('SG', NULL, 'Singapore', 'Singapore Syllabus', 'en-SG')
ON CONFLICT (country_code, province_state) DO NOTHING;

-- ============================================
-- Add user location fields if not present
-- ============================================
DO $$
BEGIN
  -- Add country column if it doesn't exist
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'users' AND column_name = 'country'
  ) THEN
    ALTER TABLE users ADD COLUMN country TEXT;
  END IF;

  -- Add province_state column if it doesn't exist
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'users' AND column_name = 'province_state'
  ) THEN
    ALTER TABLE users ADD COLUMN province_state TEXT;
  END IF;
END $$;
