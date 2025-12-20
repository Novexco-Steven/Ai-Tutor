-- LearnLit Database Schema
-- Run this in your Supabase SQL Editor to set up the database

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================================================
-- TABLES
-- ============================================================================

-- Users table (extends Supabase auth.users)
CREATE TABLE users (
  id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
  email TEXT,
  name TEXT NOT NULL,
  age INTEGER,
  grade_level INTEGER,
  primary_interest TEXT,
  difficulty_level INTEGER DEFAULT 5 CHECK (difficulty_level >= 1 AND difficulty_level <= 10),
  settings JSONB DEFAULT '{"display":{"textSize":"medium","darkMode":false,"dyslexicFont":false},"audio":{"voiceMode":false,"soundEffects":true,"autoReadQuestions":false,"voiceSpeed":1.0},"learning":{"showHints":true,"practiceQuestionCount":10,"autoAdvance":false,"difficultyMode":"auto"}}'::jsonb,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Interests table
CREATE TABLE interests (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL UNIQUE,
  category TEXT NOT NULL,
  icon_url TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- User interests junction table
CREATE TABLE user_interests (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  interest_id UUID REFERENCES interests(id) ON DELETE CASCADE NOT NULL,
  is_primary BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, interest_id)
);

-- Subjects table
CREATE TABLE subjects (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL UNIQUE,
  description TEXT,
  icon TEXT,
  color TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Units table (curriculum organization between subjects and topics)
CREATE TABLE units (
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

-- Topics table
CREATE TABLE topics (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  subject_id UUID REFERENCES subjects(id) ON DELETE CASCADE NOT NULL,
  unit_id UUID REFERENCES units(id) ON DELETE SET NULL, -- optional unit grouping
  name TEXT NOT NULL,
  description TEXT,
  grade_level_min INTEGER NOT NULL,
  grade_level_max INTEGER NOT NULL,
  difficulty_level INTEGER NOT NULL CHECK (difficulty_level >= 1 AND difficulty_level <= 10),
  order_index INTEGER NOT NULL,
  estimated_time INTEGER, -- in minutes
  prerequisites JSONB DEFAULT '[]'::jsonb,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- User progress table
CREATE TABLE user_progress (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE NOT NULL,
  subject_id UUID REFERENCES subjects(id) ON DELETE CASCADE NOT NULL,
  status TEXT DEFAULT 'not_started' CHECK (status IN ('not_started', 'in_progress', 'completed')),
  assessment_score INTEGER,
  concepts_struggling JSONB DEFAULT '[]'::jsonb,
  last_accessed TIMESTAMPTZ,
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, topic_id)
);

-- Lessons table
CREATE TABLE lessons (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE NOT NULL,
  content JSONB NOT NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Session logs table
CREATE TABLE session_logs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  topic_id UUID REFERENCES topics(id) ON DELETE SET NULL,
  subject_id UUID REFERENCES subjects(id) ON DELETE SET NULL,
  started_at TIMESTAMPTZ DEFAULT NOW(),
  ended_at TIMESTAMPTZ,
  questions_attempted INTEGER DEFAULT 0,
  questions_correct INTEGER DEFAULT 0,
  time_spent INTEGER, -- in seconds
  interest_theme_used TEXT,
  difficulty_adjustments JSONB DEFAULT '[]'::jsonb,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Question responses table
CREATE TABLE question_responses (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  session_log_id UUID REFERENCES session_logs(id) ON DELETE CASCADE NOT NULL,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  question_text TEXT NOT NULL,
  user_answer TEXT,
  correct_answer TEXT NOT NULL,
  is_correct BOOLEAN NOT NULL,
  concept TEXT NOT NULL,
  difficulty_level INTEGER NOT NULL,
  time_to_answer INTEGER, -- in seconds
  hints_used INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Generated content table (for caching AI responses per user)
CREATE TABLE generated_content (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL,
  topic_id UUID REFERENCES topics(id) ON DELETE SET NULL,
  content_type TEXT NOT NULL CHECK (content_type IN ('lesson', 'example', 'image', 'question')),
  prompt TEXT NOT NULL,
  generated_text TEXT,
  image_url TEXT,
  interest_theme TEXT,
  metadata JSONB DEFAULT '{}'::jsonb,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Content library table (shared cache for lessons/questions across all users)
-- Stores canonical, theme-agnostic content that can be re-themed per user
CREATE TABLE content_library (
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

-- ============================================================================
-- INDEXES
-- ============================================================================

CREATE INDEX idx_user_interests_user_id ON user_interests(user_id);
CREATE INDEX idx_user_interests_interest_id ON user_interests(interest_id);
CREATE INDEX idx_units_subject_grade ON units(subject_id, grade_level);
CREATE INDEX idx_units_grade_level ON units(grade_level);
CREATE INDEX idx_topics_subject_id ON topics(subject_id);
CREATE INDEX idx_topics_unit_id ON topics(unit_id);
CREATE INDEX idx_topics_grade_level ON topics(grade_level_min, grade_level_max);
CREATE INDEX idx_user_progress_user_id ON user_progress(user_id);
CREATE INDEX idx_user_progress_topic_id ON user_progress(topic_id);
CREATE INDEX idx_user_progress_status ON user_progress(status);
CREATE INDEX idx_session_logs_user_id ON session_logs(user_id);
CREATE INDEX idx_question_responses_session_log_id ON question_responses(session_log_id);
CREATE INDEX idx_question_responses_user_id ON question_responses(user_id);
CREATE INDEX idx_generated_content_user_id ON generated_content(user_id);
CREATE INDEX idx_generated_content_topic_id ON generated_content(topic_id);

-- Content library index for fast lookups
CREATE INDEX idx_content_library_lookup
  ON content_library(topic_id, grade_level, difficulty_level, content_type);

-- ============================================================================
-- ROW LEVEL SECURITY (RLS)
-- ============================================================================

-- Enable RLS on all tables
ALTER TABLE users ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_interests ENABLE ROW LEVEL SECURITY;
ALTER TABLE user_progress ENABLE ROW LEVEL SECURITY;
ALTER TABLE session_logs ENABLE ROW LEVEL SECURITY;
ALTER TABLE question_responses ENABLE ROW LEVEL SECURITY;
ALTER TABLE generated_content ENABLE ROW LEVEL SECURITY;

-- Users policies
CREATE POLICY "Users can view own profile"
  ON users FOR SELECT
  USING (auth.uid() = id);

CREATE POLICY "Users can update own profile"
  ON users FOR UPDATE
  USING (auth.uid() = id);

CREATE POLICY "Users can insert own profile"
  ON users FOR INSERT
  WITH CHECK (auth.uid() = id);

-- User interests policies
CREATE POLICY "Users can view own interests"
  ON user_interests FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can manage own interests"
  ON user_interests FOR ALL
  USING (auth.uid() = user_id);

-- User progress policies
CREATE POLICY "Users can view own progress"
  ON user_progress FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can manage own progress"
  ON user_progress FOR ALL
  USING (auth.uid() = user_id);

-- Session logs policies
CREATE POLICY "Users can view own sessions"
  ON session_logs FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can manage own sessions"
  ON session_logs FOR ALL
  USING (auth.uid() = user_id);

-- Question responses policies
CREATE POLICY "Users can view own responses"
  ON question_responses FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can manage own responses"
  ON question_responses FOR ALL
  USING (auth.uid() = user_id);

-- Generated content policies
CREATE POLICY "Users can view own generated content"
  ON generated_content FOR SELECT
  USING (auth.uid() = user_id);

CREATE POLICY "Users can manage own generated content"
  ON generated_content FOR ALL
  USING (auth.uid() = user_id);

-- Public read access for reference tables
ALTER TABLE interests ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can view interests"
  ON interests FOR SELECT
  TO authenticated
  USING (true);

ALTER TABLE subjects ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can view subjects"
  ON subjects FOR SELECT
  TO authenticated
  USING (true);

ALTER TABLE units ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can view units"
  ON units FOR SELECT
  TO authenticated
  USING (true);

ALTER TABLE topics ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can view topics"
  ON topics FOR SELECT
  TO authenticated
  USING (true);

ALTER TABLE lessons ENABLE ROW LEVEL SECURITY;
CREATE POLICY "Anyone can view lessons"
  ON lessons FOR SELECT
  TO authenticated
  USING (true);

-- Content library is a shared public cache
ALTER TABLE content_library ENABLE ROW LEVEL SECURITY;
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

-- ============================================================================
-- TRIGGERS
-- ============================================================================

-- Auto-update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_users_updated_at
  BEFORE UPDATE ON users
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_user_progress_updated_at
  BEFORE UPDATE ON user_progress
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_lessons_updated_at
  BEFORE UPDATE ON lessons
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_content_library_updated_at
  BEFORE UPDATE ON content_library
  FOR EACH ROW
  EXECUTE FUNCTION update_updated_at_column();

-- ============================================================================
-- SEED DATA
-- ============================================================================

-- Insert default interests
INSERT INTO interests (name, category) VALUES
  -- Animals
  ('Dogs', 'Animals'),
  ('Cats', 'Animals'),
  ('Dinosaurs', 'Animals'),
  ('Ocean Animals', 'Animals'),
  ('Birds', 'Animals'),
  ('Insects', 'Animals'),

  -- Entertainment
  ('Video Games', 'Entertainment'),
  ('Anime', 'Entertainment'),
  ('Movies', 'Entertainment'),
  ('Music', 'Entertainment'),
  ('Dancing', 'Entertainment'),

  -- Sports & Activities
  ('Soccer', 'Sports'),
  ('Basketball', 'Sports'),
  ('Baseball', 'Sports'),
  ('Skateboarding', 'Sports'),
  ('Swimming', 'Sports'),
  ('Martial Arts', 'Sports'),

  -- Science & Nature
  ('Space', 'Science'),
  ('Robots', 'Science'),
  ('Chemistry', 'Science'),
  ('Weather', 'Science'),
  ('Plants', 'Science'),

  -- Creative & Arts
  ('Art', 'Creative'),
  ('Cooking', 'Creative'),
  ('Building', 'Creative'),
  ('Fashion', 'Creative'),
  ('Photography', 'Creative'),

  -- Vehicles
  ('Cars', 'Vehicles'),
  ('Trucks', 'Vehicles'),
  ('Planes', 'Vehicles'),
  ('Trains', 'Vehicles'),
  ('Boats', 'Vehicles'),

  -- Fantasy
  ('Superheroes', 'Fantasy'),
  ('Magic', 'Fantasy'),
  ('Princesses', 'Fantasy'),
  ('Dragons', 'Fantasy'),
  ('Unicorns', 'Fantasy')
ON CONFLICT (name) DO NOTHING;

-- Insert subjects
INSERT INTO subjects (name, description, icon, color) VALUES
  ('Math', 'Numbers, calculations, and problem solving', '🔢', '#3b82f6'),
  ('Science', 'Exploring how the world works', '🔬', '#10b981'),
  ('Reading', 'Stories, comprehension, and vocabulary', '📚', '#f59e0b'),
  ('History', 'Learning about the past', '🏛️', '#8b5cf6')
ON CONFLICT (name) DO NOTHING;

-- Note: Topics and lessons would be added based on curriculum requirements
-- This is just the schema setup

COMMENT ON TABLE users IS 'User profiles extending Supabase auth.users';
COMMENT ON TABLE interests IS 'Available student interests for personalization';
COMMENT ON TABLE user_interests IS 'Junction table for user-selected interests';
COMMENT ON TABLE subjects IS 'Main subject categories (Math, Science, etc.)';
COMMENT ON TABLE topics IS 'Specific topics within each subject';
COMMENT ON TABLE user_progress IS 'Tracks student progress through topics';
COMMENT ON TABLE session_logs IS 'Records of learning sessions';
COMMENT ON TABLE question_responses IS 'Individual question answers and performance';
COMMENT ON TABLE generated_content IS 'Cache for AI-generated content per user';
COMMENT ON TABLE content_library IS 'Shared public library of lessons/questions by grade/topic/difficulty';
