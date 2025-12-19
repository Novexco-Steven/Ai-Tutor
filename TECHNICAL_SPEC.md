# LearnLit MVP - Technical Specification

## Project Overview
LearnLit is a personalized AI-powered learning platform for K-8 students that adapts lessons to their interests using Google Gemini AI and Supabase.

## Tech Stack

### Frontend
- **Framework**: React 18+ with TypeScript
- **Build Tool**: Vite
- **Routing**: React Router v6
- **State Management**: React Context API + Hooks
- **UI Framework**: Tailwind CSS
- **Component Library**: Headless UI / Radix UI
- **Icons**: Lucide React
- **Animations**: Framer Motion
- **Forms**: React Hook Form + Zod validation

### Backend (Serverless)
- **Platform**: Supabase
- **Database**: PostgreSQL (Supabase)
- **Authentication**: Supabase Auth
- **Storage**: Supabase Storage (for generated images)
- **Real-time**: Supabase Realtime (for live updates)
- **Edge Functions**: Supabase Edge Functions (for AI calls)

### AI & ML
- **LLM**: Google Gemini 2.0 Flash / Pro
- **Image Generation**: Google Imagen via Gemini
- **Text-to-Speech**: Web Speech API / Google Cloud TTS
- **Speech-to-Text**: Web Speech API / Google Cloud STT

### Deployment
- **Frontend**: Vercel / Netlify
- **Backend**: Supabase Cloud
- **CDN**: Vercel Edge Network

---

## System Architecture

```
┌─────────────────────────────────────────────────────┐
│                   React Frontend                     │
│  ┌──────────────┐  ┌──────────────┐  ┌───────────┐ │
│  │  Components  │  │    Context   │  │   Hooks   │ │
│  └──────────────┘  └──────────────┘  └───────────┘ │
└─────────────────────────────────────────────────────┘
                         │
                         ↓
┌─────────────────────────────────────────────────────┐
│                 Supabase Backend                     │
│  ┌──────────────┐  ┌──────────────┐  ┌───────────┐ │
│  │   Auth       │  │  PostgreSQL  │  │  Storage  │ │
│  └──────────────┘  └──────────────┘  └───────────┘ │
│  ┌──────────────────────────────────────────────┐  │
│  │          Edge Functions (AI Gateway)         │  │
│  └──────────────────────────────────────────────┘  │
└─────────────────────────────────────────────────────┘
                         │
                         ↓
┌─────────────────────────────────────────────────────┐
│               Google Gemini API                      │
│  ┌──────────────┐  ┌──────────────┐               │
│  │  Text Gen    │  │  Image Gen   │               │
│  │  (Gemini)    │  │  (Imagen)    │               │
│  └──────────────┘  └──────────────┘               │
└─────────────────────────────────────────────────────┘
```

---

## Database Schema

### Tables

#### `users`
```sql
CREATE TABLE users (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  email TEXT UNIQUE,
  name TEXT NOT NULL,
  age INTEGER,
  grade_level INTEGER,
  primary_interest TEXT,
  difficulty_level INTEGER DEFAULT 5, -- 1-10 scale
  settings JSONB DEFAULT '{}',
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `interests`
```sql
CREATE TABLE interests (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL UNIQUE,
  category TEXT,
  icon_url TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

-- Pre-populated with: Sports Cars, Gaming, Anime, Animals, Space,
-- Dinosaurs, Cooking, Sports, Music, Superheroes, etc.
```

#### `user_interests`
```sql
CREATE TABLE user_interests (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  interest_id UUID REFERENCES interests(id) ON DELETE CASCADE,
  is_primary BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, interest_id)
);
```

#### `subjects`
```sql
CREATE TABLE subjects (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  name TEXT NOT NULL UNIQUE, -- Math, Science, Reading, History
  description TEXT,
  icon TEXT,
  color TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `topics`
```sql
CREATE TABLE topics (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  subject_id UUID REFERENCES subjects(id) ON DELETE CASCADE,
  name TEXT NOT NULL,
  description TEXT,
  grade_level_min INTEGER,
  grade_level_max INTEGER,
  difficulty_level INTEGER, -- 1-10
  order_index INTEGER,
  estimated_time INTEGER, -- minutes
  prerequisites JSONB DEFAULT '[]', -- Array of topic IDs
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `user_progress`
```sql
CREATE TABLE user_progress (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE,
  subject_id UUID REFERENCES subjects(id) ON DELETE CASCADE,
  status TEXT DEFAULT 'not_started', -- not_started, in_progress, completed
  assessment_score INTEGER,
  concepts_struggling JSONB DEFAULT '[]',
  last_accessed TIMESTAMPTZ,
  completed_at TIMESTAMPTZ,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, topic_id)
);
```

#### `lessons`
```sql
CREATE TABLE lessons (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  topic_id UUID REFERENCES topics(id) ON DELETE CASCADE,
  content JSONB NOT NULL, -- Structured lesson content
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `session_logs`
```sql
CREATE TABLE session_logs (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  topic_id UUID REFERENCES topics(id),
  subject_id UUID REFERENCES subjects(id),
  started_at TIMESTAMPTZ DEFAULT NOW(),
  ended_at TIMESTAMPTZ,
  questions_attempted INTEGER DEFAULT 0,
  questions_correct INTEGER DEFAULT 0,
  time_spent INTEGER, -- seconds
  interest_theme_used TEXT,
  difficulty_adjustments JSONB DEFAULT '[]',
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `question_responses`
```sql
CREATE TABLE question_responses (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  session_log_id UUID REFERENCES session_logs(id) ON DELETE CASCADE,
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  question_text TEXT NOT NULL,
  user_answer TEXT,
  correct_answer TEXT,
  is_correct BOOLEAN,
  concept TEXT, -- What concept this question tested
  difficulty_level INTEGER,
  time_to_answer INTEGER, -- seconds
  hints_used INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

#### `generated_content`
```sql
CREATE TABLE generated_content (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  user_id UUID REFERENCES users(id) ON DELETE CASCADE,
  topic_id UUID REFERENCES topics(id),
  content_type TEXT, -- 'lesson', 'example', 'image', 'question'
  prompt TEXT NOT NULL,
  generated_text TEXT,
  image_url TEXT,
  interest_theme TEXT,
  metadata JSONB DEFAULT '{}',
  created_at TIMESTAMPTZ DEFAULT NOW()
);
```

---

## Supabase Edge Functions

### 1. `generate-lesson`
**Purpose**: Generate personalized lesson content using Gemini
**Input**:
```typescript
{
  userId: string,
  topicId: string,
  interestTheme: string,
  difficultyLevel: number
}
```
**Output**:
```typescript
{
  lessonContent: {
    sections: Array<{
      title: string,
      explanation: string,
      examples: string[],
      visualConcepts: string[]
    }>,
    keyPoints: string[],
    vocabulary: Array<{ term: string, definition: string }>
  }
}
```

### 2. `generate-example`
**Purpose**: Generate new example with specific interest theme
**Input**:
```typescript
{
  concept: string,
  interestTheme: string,
  difficultyLevel: number,
  previousExamples?: string[]
}
```

### 3. `generate-image`
**Purpose**: Generate concept visualization using Imagen
**Input**:
```typescript
{
  concept: string,
  interestTheme: string,
  ageAppropriate: boolean,
  style: 'cartoon' | 'realistic' | 'diagram'
}
```

### 4. `simplify-explanation`
**Purpose**: Simplify complex explanation to lower reading level
**Input**:
```typescript
{
  originalText: string,
  targetGradeLevel: number
}
```

### 5. `generate-questions`
**Purpose**: Generate practice questions for a topic
**Input**:
```typescript
{
  topicId: string,
  interestTheme: string,
  difficultyLevel: number,
  count: number,
  questionTypes: Array<'multiple_choice' | 'fill_blank' | 'true_false'>
}
```

### 6. `assess-answer`
**Purpose**: Evaluate student answer and provide feedback
**Input**:
```typescript
{
  question: string,
  studentAnswer: string,
  correctAnswer: string,
  concept: string
}
```
**Output**:
```typescript
{
  isCorrect: boolean,
  feedback: string,
  conceptGap?: string,
  reteachingSuggestion?: string
}
```

### 7. `diagnostic-assessment`
**Purpose**: Generate and evaluate diagnostic quiz
**Input**:
```typescript
{
  subject: string,
  gradeLevel: number,
  interests: string[]
}
```

---

## Frontend Structure

```
src/
├── components/
│   ├── onboarding/
│   │   ├── ProfileSetup.tsx
│   │   ├── InterestPicker.tsx
│   │   ├── SubjectPicker.tsx
│   │   └── DiagnosticQuiz.tsx
│   ├── home/
│   │   ├── Dashboard.tsx
│   │   └── SubjectSwitcher.tsx
│   ├── lesson/
│   │   ├── LessonView.tsx
│   │   ├── LessonSection.tsx
│   │   ├── ConceptImage.tsx
│   │   ├── InteractiveButtons.tsx
│   │   └── ProgressIndicator.tsx
│   ├── practice/
│   │   ├── PracticeQuiz.tsx
│   │   ├── QuestionCard.tsx
│   │   ├── FeedbackModal.tsx
│   │   └── RetryPrompt.tsx
│   ├── settings/
│   │   ├── SettingsScreen.tsx
│   │   ├── InterestManager.tsx
│   │   ├── DifficultySettings.tsx
│   │   ├── DisplaySettings.tsx
│   │   └── AudioSettings.tsx
│   ├── shared/
│   │   ├── Button.tsx
│   │   ├── Card.tsx
│   │   ├── Input.tsx
│   │   ├── Modal.tsx
│   │   ├── Loading.tsx
│   │   └── VoiceToggle.tsx
│   └── layout/
│       ├── Header.tsx
│       ├── Footer.tsx
│       └── MainLayout.tsx
├── contexts/
│   ├── AuthContext.tsx
│   ├── UserContext.tsx
│   ├── LessonContext.tsx
│   └── SettingsContext.tsx
├── hooks/
│   ├── useSupabase.ts
│   ├── useAI.ts
│   ├── useVoice.ts
│   ├── useProgress.ts
│   └── useSettings.ts
├── services/
│   ├── supabase.ts
│   ├── ai.ts
│   ├── voice.ts
│   └── storage.ts
├── utils/
│   ├── difficulty.ts
│   ├── grading.ts
│   └── helpers.ts
├── types/
│   └── index.ts
├── styles/
│   └── globals.css
├── App.tsx
└── main.tsx
```

---

## AI Prompt System

### Core Prompts

#### 1. Lesson Generation Prompt Template
```
You are a friendly, encouraging AI tutor for a {grade_level} student who loves {interest_theme}.

Create a lesson teaching: {topic_name}

Requirements:
- Use {interest_theme} as examples throughout
- Appropriate vocabulary for grade {grade_level}
- Break into 3-5 digestible sections
- Include specific examples the student can visualize
- Encourage curiosity and effort

Difficulty level: {difficulty}/10

Format response as JSON:
{
  "sections": [
    {
      "title": "...",
      "explanation": "...",
      "examples": ["...", "..."],
      "visualPrompt": "Description for image generation"
    }
  ],
  "keyPoints": ["...", "..."],
  "vocabulary": [{"term": "...", "definition": "..."}]
}
```

#### 2. Example Generation Prompt
```
Generate a new example explaining {concept} using {interest_theme}.

Student is in grade {grade_level}.
Previous examples used: {previous_examples}

Make it different and engaging. One paragraph max.
```

#### 3. Simplification Prompt
```
Simplify this explanation for a grade {target_grade} student:

"{original_text}"

Use simpler words, shorter sentences, and concrete examples.
Maintain accuracy but make it easier to understand.
```

#### 4. Question Generation Prompt
```
Create {count} {question_type} questions for topic: {topic_name}

Requirements:
- Grade {grade_level} appropriate
- Use {interest_theme} in question context
- Difficulty: {difficulty}/10
- Test understanding of: {concepts}

Format as JSON array:
[
  {
    "question": "...",
    "options": ["a", "b", "c", "d"], // if multiple choice
    "correctAnswer": "...",
    "concept": "...",
    "explanation": "..."
  }
]
```

#### 5. Answer Assessment Prompt
```
Question: {question}
Student's answer: {student_answer}
Correct answer: {correct_answer}

Evaluate if the student's answer is correct and provide encouraging feedback.

If incorrect, identify what concept they're missing and suggest a brief re-teaching approach.

Format as JSON:
{
  "isCorrect": boolean,
  "feedback": "...",
  "conceptGap": "...",
  "reteaching": "..."
}
```

#### 6. Image Generation Prompt Template
```
Create a {style} illustration for {age_group} showing: {concept}

Theme: {interest_theme}
Style: Colorful, friendly, educational
Safe for children: Yes

Specific scene: {detailed_description}
```

---

## Data Flow Diagrams

### Lesson Flow
```
User selects topic
    ↓
Fetch user profile + interests
    ↓
Call generate-lesson Edge Function
    ↓
Gemini generates personalized lesson
    ↓
For each section:
    - Display explanation
    - Call generate-image for visuals
    - Store in generated_content table
    ↓
Mid-lesson check questions
    ↓
If incorrect → Call assess-answer → Micro-reteach
    ↓
Practice phase
    ↓
Call generate-questions
    ↓
Student answers each
    ↓
Call assess-answer for each response
    ↓
Log to question_responses
    ↓
Update user_progress
    ↓
Show summary
```

### Adaptive Difficulty Flow
```
Track question_responses
    ↓
Calculate success rate
    ↓
If 3+ consecutive correct → Increase difficulty +1
If 3+ consecutive incorrect → Decrease difficulty -1
    ↓
Update user difficulty_level
    ↓
Log adjustment to session_logs
    ↓
Next questions use new difficulty
```

---

## API Routes (Supabase RLS Policies)

### Row Level Security (RLS) Policies

All tables have RLS enabled. Key policies:

1. **users**: Users can only read/update their own profile
2. **user_interests**: Users can only manage their own interests
3. **user_progress**: Users can only see their own progress
4. **session_logs**: Users can only access their own sessions
5. **question_responses**: Users can only see their own responses
6. **generated_content**: Users can only access content generated for them

Subjects, topics, interests, and lessons are publicly readable.

---

## Environment Variables

```env
# Supabase
VITE_SUPABASE_URL=your_supabase_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key

# Google Gemini
GEMINI_API_KEY=your_gemini_api_key

# Optional: Google Cloud (for TTS/STT)
GOOGLE_CLOUD_PROJECT_ID=your_project_id
GOOGLE_CLOUD_API_KEY=your_api_key
```

---

## Performance Optimizations

1. **Caching**:
   - Cache generated lessons in `generated_content` table
   - Reuse if same topic + same interest theme requested again
   - Cache images in Supabase Storage

2. **Lazy Loading**:
   - Load lesson sections on-demand
   - Generate images progressively
   - Lazy load question sets

3. **Optimistic Updates**:
   - Update UI immediately on user actions
   - Sync with Supabase in background

4. **Image Optimization**:
   - Generate images at appropriate resolution
   - Use WebP format
   - Implement progressive loading

---

## Security Considerations

1. **Authentication**:
   - Supabase Auth with email/magic link
   - Optional: Parent email verification for kids

2. **Content Safety**:
   - All Gemini prompts include age-appropriate flags
   - Filter generated content for inappropriate material
   - Use Google's safety settings on Imagen

3. **Data Privacy**:
   - COPPA compliance for users under 13
   - Parental consent flow
   - Data retention policies

4. **Rate Limiting**:
   - Limit AI calls per user per day
   - Prevent API abuse
   - Implement backoff strategies

---

## Testing Strategy

1. **Unit Tests**: Jest + React Testing Library
2. **Integration Tests**: Test Supabase + AI integration
3. **E2E Tests**: Playwright for critical flows
4. **AI Testing**: Evaluate prompt quality and response consistency

---

## Deployment Plan

### Phase 1: Setup (Week 1)
- Initialize React + Vite project
- Configure Supabase database
- Set up Edge Functions
- Deploy to staging

### Phase 2: Onboarding (Week 2)
- Build onboarding screens
- Implement diagnostic assessment
- User profile creation

### Phase 3: Core Learning (Week 3-4)
- Lesson generation system
- Practice quiz system
- AI integration

### Phase 4: Settings & Voice (Week 5)
- Settings screen
- Voice mode
- Accessibility features

### Phase 5: Polish & Testing (Week 6)
- Bug fixes
- Performance optimization
- User testing

### Phase 6: Launch (Week 7)
- Production deployment
- Monitoring setup
- User onboarding

---

## Success Metrics

1. **Engagement**: Daily active users, session length
2. **Learning**: Completion rate, assessment scores
3. **Satisfaction**: User feedback, retention rate
4. **Technical**: API response time, error rate, uptime

---

## Future Enhancements (Post-MVP)

- Parent dashboard
- Progress reports
- Gamification elements (optional)
- Multi-language support
- Offline mode
- Native mobile apps (React Native)
- Social features (learning with friends)

---

**Version**: 1.0
**Last Updated**: 2025-12-19
**Status**: Ready for Implementation
