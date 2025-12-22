-- Add voice_teachers table for text-to-speech personas
-- Uses Google Cloud Text-to-Speech API parameters

CREATE TABLE IF NOT EXISTS voice_teachers (
  id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
  name TEXT NOT NULL,
  description TEXT,

  -- Google Cloud TTS parameters
  voice_name TEXT NOT NULL,                    -- e.g., 'en-US-Neural2-D'
  language_code TEXT DEFAULT 'en-US',
  speaking_rate DECIMAL(3,2) DEFAULT 1.0,      -- 0.25 to 4.0
  pitch DECIMAL(4,1) DEFAULT 0.0,              -- -20.0 to 20.0
  volume_gain_db DECIMAL(4,1) DEFAULT 0.0,     -- -96.0 to 16.0

  -- Persona metadata
  personality_prompt TEXT,                      -- How AI should adapt content for this voice
  target_audience TEXT,                         -- e.g., 'K-2', 'struggling learners'
  teaching_style TEXT,                          -- e.g., 'patient', 'energetic', 'detailed'
  icon TEXT,                                    -- Emoji or icon
  color TEXT,                                   -- Theme color hex

  -- Admin
  is_active BOOLEAN DEFAULT TRUE,
  is_default BOOLEAN DEFAULT FALSE,
  display_order INTEGER DEFAULT 0,
  created_by UUID REFERENCES users(id) ON DELETE SET NULL,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Create indexes
CREATE INDEX IF NOT EXISTS idx_voice_teachers_active ON voice_teachers(is_active);
CREATE INDEX IF NOT EXISTS idx_voice_teachers_display_order ON voice_teachers(display_order);

-- Enable RLS
ALTER TABLE voice_teachers ENABLE ROW LEVEL SECURITY;

-- RLS Policies: All authenticated users can read active voice teachers
CREATE POLICY "Anyone can view active voice teachers"
  ON voice_teachers FOR SELECT
  USING (is_active = TRUE);

-- Admins can view all voice teachers
CREATE POLICY "Admins can view all voice teachers"
  ON voice_teachers FOR SELECT
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM users
      WHERE users.id = auth.uid()
      AND users.role = 'admin'
    )
  );

-- Admins can insert voice teachers
CREATE POLICY "Admins can insert voice teachers"
  ON voice_teachers FOR INSERT
  TO authenticated
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM users
      WHERE users.id = auth.uid()
      AND users.role = 'admin'
    )
  );

-- Admins can update voice teachers
CREATE POLICY "Admins can update voice teachers"
  ON voice_teachers FOR UPDATE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM users
      WHERE users.id = auth.uid()
      AND users.role = 'admin'
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM users
      WHERE users.id = auth.uid()
      AND users.role = 'admin'
    )
  );

-- Admins can delete voice teachers
CREATE POLICY "Admins can delete voice teachers"
  ON voice_teachers FOR DELETE
  TO authenticated
  USING (
    EXISTS (
      SELECT 1 FROM users
      WHERE users.id = auth.uid()
      AND users.role = 'admin'
    )
  );

-- Seed initial voice teachers (8 preset characters)
INSERT INTO voice_teachers (name, description, voice_name, language_code, speaking_rate, pitch, volume_gain_db, personality_prompt, target_audience, teaching_style, icon, color, is_active, is_default, display_order)
VALUES
  (
    'Coach Carter',
    'A patient and encouraging voice that takes things slow. Perfect for young learners or anyone who needs extra support.',
    'en-US-Neural2-D',
    'en-US',
    0.85,
    -2.0,
    0.0,
    'Speak slowly and clearly. Use simple words and short sentences. Be very encouraging and patient. Pause between ideas. Celebrate small wins.',
    'K-2, struggling learners',
    'Slow, patient, encouraging',
    '🏀',
    '#ef4444',
    TRUE,
    TRUE,
    1
  ),
  (
    'Miss Sunshine',
    'A warm and cheerful teacher who makes learning fun! Great for elementary students.',
    'en-US-Neural2-F',
    'en-US',
    0.9,
    2.0,
    0.0,
    'Be cheerful and enthusiastic. Use a warm, friendly tone. Add excitement to explanations. Use age-appropriate vocabulary. Make learning feel like an adventure.',
    'K-5, young learners',
    'Warm, cheerful, fun',
    '☀️',
    '#f59e0b',
    TRUE,
    FALSE,
    2
  ),
  (
    'Professor Oak',
    'A calm and methodical teacher who explains concepts thoroughly. Ideal for middle schoolers.',
    'en-US-Neural2-A',
    'en-US',
    1.0,
    -1.0,
    0.0,
    'Explain concepts methodically and thoroughly. Use a calm, measured pace. Build understanding step by step. Provide context and connections between ideas.',
    'Middle school',
    'Calm, methodical, detailed',
    '🌳',
    '#22c55e',
    TRUE,
    FALSE,
    3
  ),
  (
    'Dr. Swift',
    'An efficient and direct teacher who gets to the point. Best for advanced high school students.',
    'en-US-Neural2-C',
    'en-US',
    1.2,
    0.0,
    0.0,
    'Be direct and efficient. Cover material at a brisk pace. Assume foundational knowledge. Focus on key concepts and advanced applications. Use technical vocabulary appropriately.',
    'High school, advanced',
    'Fast-paced, efficient, direct',
    '⚡',
    '#8b5cf6',
    TRUE,
    FALSE,
    4
  ),
  (
    'Buddy',
    'A friendly peer who explains things like a helpful classmate. Works for any age!',
    'en-US-Neural2-J',
    'en-US',
    1.0,
    1.0,
    0.0,
    'Sound like a helpful friend or classmate. Use casual, conversational language. Make complex topics relatable. Share enthusiasm naturally.',
    'All ages, casual',
    'Friendly, conversational, relatable',
    '🤝',
    '#3b82f6',
    TRUE,
    FALSE,
    5
  ),
  (
    'Sage',
    'A thoughtful teacher who paints pictures with words. Great for visual and auditory learners.',
    'en-US-Neural2-E',
    'en-US',
    0.95,
    -1.0,
    0.0,
    'Use rich, descriptive language. Paint mental pictures. Make abstract concepts concrete through visualization. Connect ideas to sensory experiences.',
    'Visual/auditory learners',
    'Thoughtful, descriptive, visual',
    '🔮',
    '#6366f1',
    TRUE,
    FALSE,
    6
  ),
  (
    'Captain Focus',
    'An energetic teacher who keeps things moving! Perfect for learners who need variety and engagement.',
    'en-US-Neural2-D',
    'en-US',
    1.1,
    0.0,
    0.0,
    'Keep energy high and varied. Break content into small, digestible chunks. Use clear transitions. Maintain engagement through pacing changes. Summarize frequently.',
    'ADHD, short attention span',
    'Energetic, chunked, varied',
    '🎯',
    '#ec4899',
    TRUE,
    FALSE,
    7
  ),
  (
    'Gentle Guide',
    'A soothing and reassuring voice that creates a calm learning environment. Ideal for anxious learners.',
    'en-US-Neural2-H',
    'en-US',
    0.8,
    0.0,
    0.0,
    'Speak in a calm, soothing manner. Be reassuring and patient. Normalize mistakes as part of learning. Create a safe, low-pressure atmosphere. Offer gentle encouragement.',
    'Anxious learners',
    'Soothing, reassuring, patient',
    '🌸',
    '#14b8a6',
    TRUE,
    FALSE,
    8
  );

-- Update trigger for updated_at
CREATE OR REPLACE FUNCTION update_voice_teachers_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER voice_teachers_updated_at
  BEFORE UPDATE ON voice_teachers
  FOR EACH ROW
  EXECUTE FUNCTION update_voice_teachers_updated_at();
