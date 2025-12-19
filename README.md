# LearnLit - AI-Powered Learning Platform for Kids

LearnLit is a personalized, AI-powered learning platform designed for K-8 students. It adapts educational content to each student's interests, making learning engaging and effective.

## Features

### Core Learning Experience
- **Personalized Content**: Lessons adapted to student interests (sports, anime, space, etc.)
- **AI-Powered Teaching**: Google Gemini generates custom explanations and examples
- **Adaptive Difficulty**: Automatically adjusts based on student performance
- **Interactive Learning**: Engaging questions, instant feedback, and visual aids
- **Voice Mode**: Text-to-speech and speech-to-text for accessibility
- **Progress Tracking**: Monitor learning journey across subjects and topics

### Student-Centric Design
- Simple, distraction-free interface
- Mobile-responsive design
- Dark mode and dyslexia-friendly fonts
- Age-appropriate content and vocabulary
- Encouraging, supportive AI tutor personality

## Tech Stack

- **Frontend**: React 18 + TypeScript + Vite
- **Styling**: Tailwind CSS
- **Backend**: Supabase (PostgreSQL + Auth + Storage)
- **AI**: Google Gemini 2.0
- **Routing**: React Router v6
- **Forms**: React Hook Form + Zod
- **Icons**: Lucide React

## Prerequisites

- Node.js 18+ and npm
- Supabase account
- Google AI (Gemini) API key

## Quick Start

### 1. Clone and Install

\`\`\`bash
git clone <your-repo-url>
cd Ai-Tutor
npm install
\`\`\`

### 2. Set Up Supabase

1. Create a new project at [supabase.com](https://supabase.com)
2. Go to SQL Editor and run the schema from `supabase/schema.sql`
3. Get your project URL and anon key from Settings > API

### 3. Get Google Gemini API Key

1. Visit [Google AI Studio](https://makersuite.google.com/app/apikey)
2. Create a new API key
3. Copy the key for use in your `.env` file

### 4. Configure Environment Variables

Create a `.env` file in the root directory:

\`\`\`env
# Supabase Configuration
VITE_SUPABASE_URL=your_supabase_project_url
VITE_SUPABASE_ANON_KEY=your_supabase_anon_key

# Google Gemini API
VITE_GEMINI_API_KEY=your_gemini_api_key
\`\`\`

### 5. Run the Development Server

\`\`\`bash
npm run dev
\`\`\`

The app will open at `http://localhost:3000`

## Project Structure

\`\`\`
src/
├── components/          # React components
│   ├── onboarding/     # Onboarding flow screens
│   ├── home/           # Dashboard and home
│   ├── lesson/         # Lesson and topic components
│   ├── practice/       # Practice quiz components
│   ├── settings/       # Settings screen
│   └── shared/         # Reusable UI components
├── contexts/           # React Context providers
│   ├── AuthContext.tsx
│   ├── UserContext.tsx
│   ├── SettingsContext.tsx
│   └── LessonContext.tsx
├── services/           # External service integrations
│   ├── supabase.ts    # Supabase client and helpers
│   ├── ai.ts          # Google Gemini AI integration
│   └── voice.ts       # Text-to-speech / Speech-to-text
├── utils/              # Utility functions
│   ├── helpers.ts     # General helpers
│   └── difficulty.ts  # Difficulty adjustment logic
├── types/              # TypeScript type definitions
│   └── index.ts
├── styles/             # Global styles
│   └── globals.css
├── App.tsx             # Main app component
└── main.tsx            # Entry point
\`\`\`

## Database Schema

The database includes the following main tables:

- **users**: Student profiles and settings
- **interests**: Available interests for personalization
- **user_interests**: Student-selected interests
- **subjects**: Main subjects (Math, Science, Reading, History)
- **topics**: Specific topics within subjects
- **user_progress**: Student progress tracking
- **session_logs**: Learning session records
- **question_responses**: Individual question answers
- **generated_content**: Cached AI-generated content

See `supabase/schema.sql` for the complete schema with indexes and RLS policies.

## Key Components

### Onboarding Flow

1. **ProfileSetup**: Collects name and age
2. **InterestPicker**: Student selects 3-5 interests
3. **SubjectPicker**: Choose starting subject
4. **DiagnosticQuiz**: 5-question assessment to determine level

### Main App

- **Dashboard**: Home screen with progress overview
- **TopicSelection**: Browse topics within a subject
- **LessonView**: Interactive lesson with AI-generated content
- **PracticeQuiz**: Practice questions with instant feedback
- **LessonSummary**: Lesson completion summary

### Settings

- Display settings (text size, dark mode, fonts)
- Audio settings (voice mode, speed, auto-read)
- Learning preferences (hints, difficulty, question count)
- Interest management

## AI Integration

### Gemini Functions

- **generateLesson()**: Creates personalized lesson content
- **generateExample()**: Generates new examples with interest themes
- **simplifyExplanation()**: Simplifies text for lower reading levels
- **generateQuestions()**: Creates practice questions
- **assessAnswer()**: Evaluates answers and provides feedback
- **rethemeContent()**: Switches interest theme mid-lesson

### Prompt Engineering

All AI prompts are designed to:
- Use age-appropriate language
- Incorporate student interests
- Provide encouraging feedback
- Adapt to difficulty level
- Generate structured JSON responses

See `src/services/ai.ts` for prompt templates.

## Adaptive Learning

The app automatically adjusts difficulty based on performance:

- **3 consecutive correct** → Increase difficulty +1
- **3 consecutive incorrect** → Decrease difficulty -1
- Tracks struggling concepts for reinforcement
- Provides micro-reteaching moments after wrong answers

## Voice Mode

Uses Web Speech API for:
- **Text-to-Speech**: Read lessons and questions aloud
- **Speech-to-Text**: Speak answers instead of typing
- Adjustable speed and voice selection
- Auto-read option for questions

## Deployment

### Frontend (Vercel)

\`\`\`bash
npm run build
vercel --prod
\`\`\`

### Environment Variables

Set the same environment variables in your Vercel project settings.

### Supabase

Your Supabase project is already deployed. Make sure:
- RLS policies are enabled
- Database schema is up to date
- API keys are properly configured

## Development Roadmap

### MVP (Current)
- ✅ Onboarding flow
- ✅ Dashboard and navigation
- ✅ Subject and topic browsing
- ✅ AI integration (Gemini)
- ✅ Database schema
- 🚧 Complete lesson view implementation
- 🚧 Practice quiz with AI assessment
- 🚧 Settings screen full implementation

### Phase 2
- Parent dashboard
- Progress reports and analytics
- More subjects and topics
- Advanced voice features
- Offline mode support

### Phase 3
- Gamification (optional achievements)
- Multi-language support
- Native mobile apps (React Native)
- Social learning features

## Contributing

This is an MVP project. Key areas for contribution:

1. **Content**: Add more topics and lessons
2. **AI Prompts**: Improve prompt engineering
3. **Accessibility**: Enhance a11y features
4. **Testing**: Add unit and E2E tests
5. **Documentation**: Improve docs and guides

## License

[MIT License](LICENSE)

## Support

For questions or issues:
- Create an issue in the repository
- Check `TECHNICAL_SPEC.md` for detailed architecture
- Review Supabase documentation for database questions

## Credits

Built with:
- [React](https://react.dev/)
- [Vite](https://vitejs.dev/)
- [Tailwind CSS](https://tailwindcss.com/)
- [Supabase](https://supabase.com/)
- [Google Gemini](https://deepmind.google/technologies/gemini/)
- [Lucide Icons](https://lucide.dev/)

---

**Made with ❤️ for young learners everywhere**
