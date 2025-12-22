-- ============================================================================
-- Analytics System Tables
-- Aggregated stats and insights for dashboards
-- ============================================================================

-- ===========================================
-- Table: analytics_daily_stats
-- Aggregated daily statistics per user
-- ===========================================
CREATE TABLE IF NOT EXISTS analytics_daily_stats (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,
  date DATE NOT NULL,

  -- Study Metrics
  total_time_seconds INTEGER DEFAULT 0,
  topics_attempted INTEGER DEFAULT 0,
  topics_completed INTEGER DEFAULT 0,
  questions_attempted INTEGER DEFAULT 0,
  questions_correct INTEGER DEFAULT 0,

  -- Gamification
  xp_earned INTEGER DEFAULT 0,
  streak_maintained BOOLEAN DEFAULT FALSE,
  reviews_completed INTEGER DEFAULT 0,

  created_at TIMESTAMPTZ DEFAULT NOW(),

  -- One entry per user per day
  UNIQUE(user_id, date)
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_analytics_daily_user_date ON analytics_daily_stats(user_id, date DESC);

-- ===========================================
-- Table: analytics_alerts
-- Parent/student alert notifications
-- ===========================================
CREATE TABLE IF NOT EXISTS analytics_alerts (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,

  -- Alert Details
  alert_type TEXT NOT NULL CHECK (alert_type IN (
    'struggling',      -- Student struggling with topic
    'inactive',        -- No activity in X days
    'goal_missed',     -- Daily/weekly goal not met
    'achievement',     -- Badge earned, milestone reached
    'ready_to_advance' -- Ready to move to harder content
  )),
  severity TEXT DEFAULT 'info' CHECK (severity IN ('info', 'warning', 'critical')),
  message TEXT NOT NULL,

  -- Optional references
  topic_id UUID REFERENCES topics(id) ON DELETE SET NULL,
  subject_id UUID REFERENCES subjects(id) ON DELETE SET NULL,

  -- Status
  is_read BOOLEAN DEFAULT FALSE,
  is_dismissed BOOLEAN DEFAULT FALSE,
  action_url TEXT,

  created_at TIMESTAMPTZ DEFAULT NOW(),
  read_at TIMESTAMPTZ
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_analytics_alerts_user ON analytics_alerts(user_id, created_at DESC);
CREATE INDEX IF NOT EXISTS idx_analytics_alerts_unread ON analytics_alerts(user_id, is_read) WHERE is_read = FALSE;

-- ===========================================
-- Table: learning_goals
-- User-defined learning goals
-- ===========================================
CREATE TABLE IF NOT EXISTS learning_goals (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE NOT NULL,

  -- Goal Definition
  goal_type TEXT NOT NULL CHECK (goal_type IN (
    'daily_time',      -- Minutes per day
    'daily_topics',    -- Topics completed per day
    'weekly_time',     -- Minutes per week
    'weekly_topics',   -- Topics per week
    'subject_mastery', -- Master X topics in subject
    'streak'           -- Maintain X day streak
  )),
  target_value INTEGER NOT NULL,
  subject_id UUID REFERENCES subjects(id) ON DELETE SET NULL,

  -- Progress
  current_value INTEGER DEFAULT 0,
  is_completed BOOLEAN DEFAULT FALSE,
  completed_at TIMESTAMPTZ,

  -- Period tracking
  period_start DATE,
  period_end DATE,

  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_learning_goals_user ON learning_goals(user_id);
CREATE INDEX IF NOT EXISTS idx_learning_goals_active ON learning_goals(user_id, is_completed) WHERE is_completed = FALSE;

-- ===========================================
-- Row Level Security
-- ===========================================

ALTER TABLE analytics_daily_stats ENABLE ROW LEVEL SECURITY;
ALTER TABLE analytics_alerts ENABLE ROW LEVEL SECURITY;
ALTER TABLE learning_goals ENABLE ROW LEVEL SECURITY;

-- analytics_daily_stats: Users see own data, parents see children's data
DROP POLICY IF EXISTS "Users manage own analytics stats" ON analytics_daily_stats;
CREATE POLICY "Users manage own analytics stats"
  ON analytics_daily_stats FOR ALL
  USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Parents view children analytics stats" ON analytics_daily_stats;
CREATE POLICY "Parents view children analytics stats"
  ON analytics_daily_stats FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM parent_children
      WHERE parent_id = auth.uid() AND child_id = analytics_daily_stats.user_id
    )
  );

-- analytics_alerts: Users and parents can see alerts
DROP POLICY IF EXISTS "Users manage own alerts" ON analytics_alerts;
CREATE POLICY "Users manage own alerts"
  ON analytics_alerts FOR ALL
  USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Parents view children alerts" ON analytics_alerts;
CREATE POLICY "Parents view children alerts"
  ON analytics_alerts FOR SELECT
  USING (
    EXISTS (
      SELECT 1 FROM parent_children
      WHERE parent_id = auth.uid() AND child_id = analytics_alerts.user_id
    )
  );

-- learning_goals: Users manage own goals
DROP POLICY IF EXISTS "Users manage own learning goals" ON learning_goals;
CREATE POLICY "Users manage own learning goals"
  ON learning_goals FOR ALL
  USING (auth.uid() = user_id);

-- ===========================================
-- Functions for Analytics Calculations
-- ===========================================

-- Function: Get learning velocity (topics per period)
CREATE OR REPLACE FUNCTION get_learning_velocity(
  p_user_id UUID,
  p_days INTEGER DEFAULT 30
)
RETURNS TABLE (
  period_date DATE,
  topics_completed INTEGER,
  time_spent_minutes INTEGER,
  avg_score NUMERIC
) AS $$
BEGIN
  RETURN QUERY
  SELECT
    ads.date AS period_date,
    ads.topics_completed,
    (ads.total_time_seconds / 60)::INTEGER AS time_spent_minutes,
    CASE
      WHEN ads.questions_attempted > 0
      THEN ROUND((ads.questions_correct::NUMERIC / ads.questions_attempted::NUMERIC) * 100, 1)
      ELSE 0
    END AS avg_score
  FROM analytics_daily_stats ads
  WHERE ads.user_id = p_user_id
    AND ads.date >= CURRENT_DATE - p_days
  ORDER BY ads.date DESC;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function: Get weak concepts for a user
CREATE OR REPLACE FUNCTION get_weak_concepts(
  p_user_id UUID,
  p_limit INTEGER DEFAULT 10
)
RETURNS TABLE (
  concept_name TEXT,
  topic_id UUID,
  topic_name TEXT,
  subject_name TEXT,
  strength DECIMAL,
  practice_count INTEGER
) AS $$
BEGIN
  RETURN QUERY
  SELECT
    cs.concept_name,
    cs.topic_id,
    t.name AS topic_name,
    s.name AS subject_name,
    cs.strength,
    cs.practice_count
  FROM concept_strength cs
  JOIN topics t ON t.id = cs.topic_id
  JOIN subjects s ON s.id = t.subject_id
  WHERE cs.user_id = p_user_id
    AND cs.is_weak = TRUE
  ORDER BY cs.strength ASC
  LIMIT p_limit;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Function: Get review statistics
CREATE OR REPLACE FUNCTION get_review_stats(p_user_id UUID)
RETURNS TABLE (
  due_now INTEGER,
  due_this_week INTEGER,
  total_active INTEGER,
  mastered INTEGER
) AS $$
DECLARE
  v_due_now INTEGER;
  v_due_week INTEGER;
  v_total INTEGER;
  v_mastered INTEGER;
BEGIN
  -- Due now
  SELECT COUNT(*)::INTEGER INTO v_due_now
  FROM review_items
  WHERE user_id = p_user_id
    AND status = 'active'
    AND next_review_date <= NOW();

  -- Due this week
  SELECT COUNT(*)::INTEGER INTO v_due_week
  FROM review_items
  WHERE user_id = p_user_id
    AND status = 'active'
    AND next_review_date > NOW()
    AND next_review_date <= NOW() + INTERVAL '7 days';

  -- Total active
  SELECT COUNT(*)::INTEGER INTO v_total
  FROM review_items
  WHERE user_id = p_user_id
    AND status = 'active';

  -- Mastered
  SELECT COUNT(*)::INTEGER INTO v_mastered
  FROM review_items
  WHERE user_id = p_user_id
    AND status = 'mastered';

  RETURN QUERY SELECT v_due_now, v_due_week, v_total, v_mastered;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- ===========================================
-- Trigger: Auto-update daily stats
-- ===========================================
CREATE OR REPLACE FUNCTION update_daily_stats()
RETURNS TRIGGER AS $$
BEGIN
  -- Upsert daily stats when session_logs are added
  INSERT INTO analytics_daily_stats (user_id, date, total_time_seconds, questions_attempted, questions_correct)
  VALUES (
    NEW.user_id,
    DATE(NEW.started_at),
    COALESCE(NEW.time_spent, 0),
    COALESCE(NEW.questions_attempted, 0),
    COALESCE(NEW.questions_correct, 0)
  )
  ON CONFLICT (user_id, date)
  DO UPDATE SET
    total_time_seconds = analytics_daily_stats.total_time_seconds + EXCLUDED.total_time_seconds,
    questions_attempted = analytics_daily_stats.questions_attempted + EXCLUDED.questions_attempted,
    questions_correct = analytics_daily_stats.questions_correct + EXCLUDED.questions_correct;

  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Only create trigger if session_logs table exists
DO $$
BEGIN
  IF EXISTS (SELECT FROM information_schema.tables WHERE table_name = 'session_logs') THEN
    DROP TRIGGER IF EXISTS trigger_update_daily_stats ON session_logs;
    CREATE TRIGGER trigger_update_daily_stats
      AFTER INSERT ON session_logs
      FOR EACH ROW
      EXECUTE FUNCTION update_daily_stats();
  END IF;
END $$;

-- ===========================================
-- Comments
-- ===========================================
COMMENT ON TABLE analytics_daily_stats IS 'Aggregated daily learning statistics';
COMMENT ON TABLE analytics_alerts IS 'Parent/student notifications for progress';
COMMENT ON TABLE learning_goals IS 'User-defined learning targets';
COMMENT ON FUNCTION get_learning_velocity IS 'Returns daily learning metrics for velocity charts';
COMMENT ON FUNCTION get_weak_concepts IS 'Returns concepts the user is struggling with';
COMMENT ON FUNCTION get_review_stats IS 'Returns spaced repetition statistics';
