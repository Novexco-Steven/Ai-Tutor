-- ============================================================================
-- Spaced Repetition System Tables
-- Implements SM-2 algorithm for optimal review scheduling
-- ============================================================================

-- ===========================================
-- Table: review_items
-- Core spaced repetition tracking per user-topic
-- ===========================================
CREATE TABLE IF NOT EXISTS review_items (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE NOT NULL,

  -- SM-2 Algorithm Fields
  ease_factor DECIMAL(4,2) DEFAULT 2.5 CHECK (ease_factor >= 1.3),
  interval_days INTEGER DEFAULT 1 CHECK (interval_days >= 1),
  repetition_count INTEGER DEFAULT 0,

  -- Memory Strength (0.0 to 1.0, decays over time)
  memory_strength DECIMAL(3,2) DEFAULT 1.0 CHECK (memory_strength >= 0 AND memory_strength <= 1),

  -- Scheduling
  next_review_date TIMESTAMPTZ NOT NULL DEFAULT (NOW() + INTERVAL '1 day'),
  last_reviewed_at TIMESTAMPTZ,

  -- Performance History
  total_reviews INTEGER DEFAULT 0,
  correct_reviews INTEGER DEFAULT 0,
  consecutive_correct INTEGER DEFAULT 0,
  consecutive_incorrect INTEGER DEFAULT 0,

  -- Status: active (needs reviews), paused (user paused), mastered (graduated)
  status TEXT DEFAULT 'active' CHECK (status IN ('active', 'paused', 'mastered')),

  -- Timestamps
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),

  -- Each user can only have one review item per topic
  UNIQUE(user_id, topic_id)
);

-- Indexes for efficient queries
CREATE INDEX IF NOT EXISTS idx_review_items_user_next ON review_items(user_id, next_review_date);
CREATE INDEX IF NOT EXISTS idx_review_items_user_status ON review_items(user_id, status);
CREATE INDEX IF NOT EXISTS idx_review_items_strength ON review_items(user_id, memory_strength);

-- ===========================================
-- Table: review_sessions
-- Individual review session records
-- ===========================================
CREATE TABLE IF NOT EXISTS review_sessions (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  review_item_id UUID REFERENCES review_items(id) ON DELETE CASCADE NOT NULL,
  topic_id UUID REFERENCES topics(id) ON DELETE SET NULL,

  -- Session Performance (SM-2 quality rating 0-5)
  quality_rating INTEGER NOT NULL CHECK (quality_rating >= 0 AND quality_rating <= 5),
  questions_attempted INTEGER DEFAULT 0,
  questions_correct INTEGER DEFAULT 0,
  time_spent_seconds INTEGER,

  -- Algorithm State Changes (for analytics/debugging)
  previous_interval INTEGER,
  new_interval INTEGER,
  previous_ease_factor DECIMAL(4,2),
  new_ease_factor DECIMAL(4,2),

  -- Context
  session_type TEXT DEFAULT 'scheduled' CHECK (session_type IN ('scheduled', 'manual', 'forgotten')),
  hints_used INTEGER DEFAULT 0,

  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Indexes for review session queries
CREATE INDEX IF NOT EXISTS idx_review_sessions_user ON review_sessions(user_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_review_sessions_item ON review_sessions(review_item_id, created_at DESC);

-- ===========================================
-- Table: concept_strength
-- Fine-grained concept-level memory tracking
-- ===========================================
CREATE TABLE IF NOT EXISTS concept_strength (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE NOT NULL,

  -- Concept Identification (e.g., "solving linear equations", "balancing chemical equations")
  concept_name TEXT NOT NULL,

  -- Memory State
  strength DECIMAL(3,2) DEFAULT 1.0 CHECK (strength >= 0 AND strength <= 1),
  last_practiced_at TIMESTAMPTZ,
  practice_count INTEGER DEFAULT 0,
  correct_count INTEGER DEFAULT 0,

  -- Weak Concept Flag (for focused review)
  is_weak BOOLEAN DEFAULT FALSE,

  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),

  -- Unique per user/topic/concept
  UNIQUE(user_id, topic_id, concept_name)
);

-- Indexes for concept strength queries
CREATE INDEX IF NOT EXISTS idx_concept_strength_user_topic ON concept_strength(user_id, topic_id);
CREATE INDEX IF NOT EXISTS idx_concept_strength_weak ON concept_strength(user_id, is_weak) WHERE is_weak = TRUE;

-- ===========================================
-- Row Level Security Policies
-- ===========================================

-- Enable RLS on all tables
ALTER TABLE review_items ENABLE ROW LEVEL SECURITY;
ALTER TABLE review_sessions ENABLE ROW LEVEL SECURITY;
ALTER TABLE concept_strength ENABLE ROW LEVEL SECURITY;

-- review_items: Users can only see/modify their own data
DROP POLICY IF EXISTS "Users manage own review items" ON review_items;
CREATE POLICY "Users manage own review items"
  ON review_items FOR ALL
  USING (auth.uid() = user_id);

-- review_sessions: Users can only see/modify their own data
DROP POLICY IF EXISTS "Users manage own review sessions" ON review_sessions;
CREATE POLICY "Users manage own review sessions"
  ON review_sessions FOR ALL
  USING (auth.uid() = user_id);

-- concept_strength: Users can only see/modify their own data
DROP POLICY IF EXISTS "Users manage own concept strength" ON concept_strength;
CREATE POLICY "Users manage own concept strength"
  ON concept_strength FOR ALL
  USING (auth.uid() = user_id);

-- ===========================================
-- Trigger: Auto-update updated_at
-- ===========================================
CREATE OR REPLACE FUNCTION update_review_items_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trigger_review_items_updated_at
  BEFORE UPDATE ON review_items
  FOR EACH ROW
  EXECUTE FUNCTION update_review_items_updated_at();

CREATE TRIGGER trigger_concept_strength_updated_at
  BEFORE UPDATE ON concept_strength
  FOR EACH ROW
  EXECUTE FUNCTION update_review_items_updated_at();

-- ===========================================
-- Comments for documentation
-- ===========================================
COMMENT ON TABLE review_items IS 'Core spaced repetition tracking using SM-2 algorithm';
COMMENT ON TABLE review_sessions IS 'History of individual review sessions';
COMMENT ON TABLE concept_strength IS 'Fine-grained concept-level mastery tracking';
COMMENT ON COLUMN review_items.ease_factor IS 'SM-2 ease factor (2.5 default, minimum 1.3)';
COMMENT ON COLUMN review_items.interval_days IS 'Days until next review';
COMMENT ON COLUMN review_items.memory_strength IS 'Estimated retention (0-1), decays over time';
COMMENT ON COLUMN review_items.status IS 'active=needs reviews, paused=user stopped, mastered=graduated';
COMMENT ON COLUMN review_sessions.quality_rating IS 'SM-2 quality: 0=blackout, 3=correct with difficulty, 5=perfect';
