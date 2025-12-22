// Re-export prompt system types
export * from './prompts';

// User Types
export interface User {
  id: string;
  email?: string;
  name: string;
  age?: number;
  grade_level?: number;
  primary_interest?: string;
  difficulty_level: number; // 1-10 scale
  settings: UserSettings;
  created_at: string;
  updated_at: string;

  // Extended profile fields
  dateOfBirth?: string;        // ISO date string (YYYY-MM-DD)
  country?: string;
  timezone?: string;
  pronouns?: string;
  location?: string;           // City/State
  school?: string;
  parentEmail?: string;        // Required for users under 13
  learningStyle?: LearningStyleType;
  goals?: string[];
  languages?: string[];
  bio?: string;
  gradeOverride?: boolean;     // If true, grade_level was manually set
}

export type LearningStyleType = 'visual' | 'auditory' | 'reading' | 'kinesthetic';

// Profile Constants
export const LEARNING_STYLES = [
  { id: 'visual', label: 'Visual', icon: 'Eye', description: 'Learn best with diagrams, videos, and charts' },
  { id: 'auditory', label: 'Auditory', icon: 'Ear', description: 'Learn best through explanations and discussions' },
  { id: 'reading', label: 'Reading/Writing', icon: 'BookOpen', description: 'Learn best with text and notes' },
  { id: 'kinesthetic', label: 'Hands-on', icon: 'Hand', description: 'Learn best through practice and activities' },
] as const;

export const LEARNING_GOALS = [
  'Get better grades',
  'Learn for fun',
  'Prepare for tests',
  'Explore new topics',
  'Keep up with class',
  'Get ahead of class',
  'Review past material',
] as const;

export const PRONOUNS_OPTIONS = [
  'he/him',
  'she/her',
  'they/them',
  'Custom',
] as const;

export const COMMON_COUNTRIES = [
  { code: 'US', name: 'United States' },
  { code: 'CA', name: 'Canada' },
  { code: 'GB', name: 'United Kingdom' },
  { code: 'AU', name: 'Australia' },
  { code: 'IN', name: 'India' },
  { code: 'PH', name: 'Philippines' },
  { code: 'DE', name: 'Germany' },
  { code: 'FR', name: 'France' },
  { code: 'JP', name: 'Japan' },
  { code: 'BR', name: 'Brazil' },
  { code: 'MX', name: 'Mexico' },
  { code: 'KR', name: 'South Korea' },
  { code: 'SG', name: 'Singapore' },
  { code: 'NZ', name: 'New Zealand' },
  { code: 'IE', name: 'Ireland' },
] as const;

export const COMMON_LANGUAGES = [
  'English',
  'Spanish',
  'French',
  'German',
  'Chinese',
  'Japanese',
  'Korean',
  'Portuguese',
  'Hindi',
  'Arabic',
  'Russian',
  'Italian',
  'Vietnamese',
  'Tagalog',
] as const;

export interface UserSettings {
  display: DisplaySettings;
  audio: AudioSettings;
  learning: LearningSettings;
  notifications?: NotificationSettings;
}

export interface NotificationSettings {
  enabled: boolean;
  streakReminders: boolean;
  reviewReminders: boolean;
  achievements: boolean;
  dailyGoals: boolean;
  streakReminderHour: number; // 0-23
  reviewReminderHour: number; // 0-23
}

export interface DisplaySettings {
  textSize: 'small' | 'medium' | 'large';
  darkMode: boolean;
  dyslexicFont: boolean;
}

export interface AudioSettings {
  voiceMode: boolean;
  soundEffects: boolean;
  autoReadQuestions: boolean;
  voiceSpeed: number; // 0.5 - 2.0
  voiceType?: string;
  defaultVoiceTeacherId?: string; // Voice teacher for read-aloud feature
}

export interface LearningSettings {
  showHints: boolean;
  practiceQuestionCount: 5 | 10 | 15;
  autoAdvance: boolean;
  difficultyMode: 'auto' | 'challenge' | 'easier';
  socraticMode: boolean; // Guide with questions instead of direct answers
  subjectDifficulties?: Record<string, number>; // subjectId -> difficulty override
  topicDifficulties?: Record<string, number>; // topicId -> difficulty override
}

// Interest Types
export interface Interest {
  id: string;
  name: string;
  category: string;
  icon_url?: string;
  created_at: string;
}

export interface UserInterest {
  id: string;
  user_id: string;
  interest_id: string;
  interest?: Interest;
  is_primary: boolean;
  created_at: string;
}

// Subject & Topic Types
export interface Subject {
  id: string;
  name: string;
  description: string;
  icon: string;
  color: string;
  created_at: string;
}

// Curriculum Unit (groups topics within a subject for a specific grade)
export interface Unit {
  id: string;
  subject_id: string;
  subject?: Subject;
  grade_level: number;
  name: string;
  description: string;
  order_index: number;
  icon?: string;
  estimated_total_time?: number; // sum of topic times in minutes
  learning_objectives: string[];
  created_at: string;
}

// Unit with nested topics and progress tracking
export interface UnitWithTopics extends Unit {
  topics: Topic[];
  progress?: {
    completed: number;
    total: number;
    percentage: number;
  };
}

export interface Topic {
  id: string;
  subject_id: string;
  subject?: Subject;
  unit_id?: string; // optional unit grouping
  unit?: Unit;
  name: string;
  description: string;
  grade_level_min: number;
  grade_level_max: number;
  difficulty_level: number;
  order_index: number;
  estimated_time: number; // minutes
  prerequisites: string[]; // topic IDs
  created_at: string;
}

// Progress Types
export interface UserProgress {
  id: string;
  user_id: string;
  topic_id: string;
  subject_id: string;
  topic?: Topic;
  subject?: Subject;
  status: 'not_started' | 'in_progress' | 'completed';
  assessment_score?: number;
  concepts_struggling: string[];
  last_accessed?: string;
  completed_at?: string;
  created_at: string;
  updated_at: string;
}

// Lesson Types
export interface Lesson {
  id: string;
  topic_id: string;
  content: LessonContent;
  created_at: string;
  updated_at: string;
}

export interface LessonContent {
  sections: LessonSection[];
  keyPoints: string[];
  vocabulary: VocabularyItem[];
}

export interface LessonSection {
  title: string;
  explanation: string;
  examples: string[];
  visualPrompt?: string;
  imageUrl?: string;
}

export interface VocabularyItem {
  term: string;
  definition: string;
}

// Question Types
export type QuestionType = 'multiple_choice' | 'fill_blank' | 'true_false';

export interface Question {
  id?: string;
  question: string;
  type: QuestionType;
  options?: string[]; // for multiple choice
  correct_answer: string;
  concept: string;
  difficulty_level: number;
  explanation?: string;
  hint?: string;
  imageUrl?: string;
  imagePrompt?: string;
  interest_theme?: string;
}

export interface QuestionResponse {
  id: string;
  session_log_id: string;
  user_id: string;
  question_text: string;
  user_answer?: string;
  correct_answer: string;
  is_correct: boolean;
  concept: string;
  difficulty_level: number;
  time_to_answer?: number; // seconds
  hints_used: number;
  created_at: string;
}

// Session Types
export interface SessionLog {
  id: string;
  user_id: string;
  topic_id?: string;
  subject_id?: string;
  started_at: string;
  ended_at?: string;
  questions_attempted: number;
  questions_correct: number;
  time_spent?: number; // seconds
  interest_theme_used?: string;
  difficulty_adjustments: DifficultyAdjustment[];
  created_at: string;
}

export interface DifficultyAdjustment {
  timestamp: string;
  from: number;
  to: number;
  reason: string;
}

// AI Generated Content Types
export interface GeneratedContent {
  id: string;
  user_id: string;
  topic_id?: string;
  content_type: 'lesson' | 'example' | 'image' | 'question';
  prompt: string;
  generated_text?: string;
  image_url?: string;
  interest_theme?: string;
  metadata: Record<string, any>;
  created_at: string;
}

// AI Service Types
export interface AIGenerateLessonRequest {
  userId: string;
  topicId: string;
  interestTheme: string;
  difficultyLevel: number;
  gradeLevel: number;
}

export interface AIGenerateExampleRequest {
  concept: string;
  interestTheme: string;
  difficultyLevel: number;
  previousExamples?: string[];
}

export interface AIGenerateImageRequest {
  concept: string;
  interestTheme: string;
  ageAppropriate: boolean;
  style: 'cartoon' | 'realistic' | 'diagram';
}

export interface AISimplifyRequest {
  originalText: string;
  targetGradeLevel: number;
}

export interface AIGenerateQuestionsRequest {
  topicId: string;
  topicName: string;
  concepts: string[];
  interestTheme: string;
  difficultyLevel: number;
  gradeLevel: number;
  count: number;
  questionTypes: QuestionType[];
}

export interface AIAssessAnswerRequest {
  question: string;
  studentAnswer: string;
  correctAnswer: string;
  concept: string;
}

export interface AIAssessAnswerResponse {
  isCorrect: boolean;
  feedback: string;
  conceptGap?: string;
  reteachingSuggestion?: string;
}

// Onboarding Types
export interface OnboardingData {
  name: string;
  age?: number;
  gradeLevel?: number;
  interests: string[]; // interest IDs
  primaryInterest: string;
  subject: string; // subject ID
  diagnosticResults?: DiagnosticResults;
}

export interface DiagnosticResults {
  subject: string;
  score: number;
  suggestedDifficulty: number;
  suggestedStartingTopic: string;
  strengths: string[];
  areasForImprovement: string[];
}

// Component Props Types
export interface LessonContextValue {
  currentLesson?: Lesson;
  currentSection: number;
  totalSections: number;
  loading: boolean;
  error?: string;
  nextSection: () => void;
  previousSection: () => void;
  requestExample: (concept: string) => Promise<string>;
  requestSimplification: () => Promise<string>;
  changeTheme: (newTheme: string) => Promise<void>;
}

export interface PracticeContextValue {
  questions: Question[];
  currentQuestionIndex: number;
  answers: Map<number, string>;
  feedback: Map<number, AIAssessAnswerResponse>;
  loading: boolean;
  submitAnswer: (answer: string) => Promise<void>;
  nextQuestion: () => void;
  previousQuestion: () => void;
  retryQuestion: () => void;
}

// Gamification Types
export interface GamificationData {
  xp: number;
  level: number;
  currentStreak: number;
  longestStreak: number;
  lastActivityDate: string | null;
  badges: UserBadge[];
  totalLessonsCompleted: number;
  totalQuizzesPassed: number;
  totalQuestionsCorrect: number;
}

export interface Badge {
  id: string;
  name: string;
  description: string;
  icon: string;
  category: 'learning' | 'streak' | 'mastery' | 'exploration' | 'achievement';
  requirement: BadgeRequirement;
  xpReward: number;
}

export interface BadgeRequirement {
  type: 'lessons_completed' | 'quizzes_passed' | 'streak_days' | 'xp_earned' | 'perfect_quiz' | 'subjects_explored' | 'questions_correct';
  threshold: number;
}

export interface UserBadge {
  badgeId: string;
  earnedAt: string;
}

export interface XPEvent {
  type: 'lesson_complete' | 'quiz_complete' | 'perfect_quiz' | 'streak_bonus' | 'badge_earned' | 'question_correct';
  amount: number;
  description: string;
  timestamp: string;
}

// Study Session Types
export interface StudySessionData {
  sessionStartTime: number | null;
  totalStudyTimeToday: number; // in seconds
  lastBreakTime: number | null;
  breaksTaken: number;
  dailyGoalMinutes: number;
  dailyGoalCompleted: boolean;
  focusModeEnabled: boolean;
  lastActivityDate: string | null;
}

export interface BreakActivity {
  id: string;
  title: string;
  description: string;
  icon: string;
  duration: number; // suggested duration in seconds
  category: 'movement' | 'relaxation' | 'fun' | 'mindfulness';
}

export interface DailyGoal {
  type: 'time' | 'lessons' | 'xp';
  target: number;
  current: number;
}

// ============================================================================
// Custom Topic Types
// ============================================================================

export interface CustomTopicOutline {
  sections: CustomTopicSection[];
  keyPoints: string[];
  concepts: string[];
}

export interface CustomTopicSection {
  title: string;
  summary: string;
  learningObjectives: string[];
}

export interface CustomTopic {
  id: string;
  created_by: string;
  name: string;
  description?: string;
  subject_id?: string;
  subject?: Subject;
  grade_level: number;
  difficulty_level: number;
  estimated_time: number;
  topic_outline: CustomTopicOutline;
  ai_prompt: string;
  status: CustomTopicStatus;
  review_notes?: string;
  reviewed_by?: string;
  reviewed_at?: string;
  promoted_to_topic_id?: string;
  promoted_at?: string;
  usage_count: number;
  created_at: string;
  updated_at: string;
}

export type CustomTopicStatus = 'draft' | 'published' | 'pending_review' | 'approved' | 'rejected';

// AI Service Types for Custom Topics
export interface AIGenerateTopicOutlineRequest {
  userPrompt: string;
  gradeLevel: number;
  difficultyLevel?: number;
}

export interface AIGenerateTopicOutlineResponse {
  name: string;
  description: string;
  outline: CustomTopicOutline;
  suggestedSubject: string;
  suggestedDifficulty: number;
  estimatedTime: number;
}

// AI Service Types for Custom Lesson Generation
export interface AIGenerateCustomLessonRequest {
  topicName: string;
  topicDescription: string;
  outline: CustomTopicOutline;
  interestTheme: string;
  difficultyLevel: number;
  gradeLevel: number;
}

// Admin Types
export interface AdminUser {
  id: string;
  user_id: string;
  role: 'moderator' | 'admin' | 'super_admin';
  granted_by?: string;
  created_at: string;
}

// ============================================================================
// AI Chat Tutor Types
// ============================================================================

export interface ChatMessage {
  id: string;
  role: 'user' | 'assistant';
  content: string;
  timestamp: string;
}

export interface ChatContext {
  topicName: string;
  topicDescription?: string;
  subjectName: string;
  gradeLevel: number;
  difficultyLevel: number;
  interestTheme: string;
  lessonContent?: LessonContent;
  currentQuestion?: Question;
}

export interface AIChatRequest {
  message: string;
  context: ChatContext;
  conversationHistory: ChatMessage[];
}

export interface AIChatResponse {
  response: string;
  suggestedFollowUp?: string;
}

// ============================================================================
// Curriculum Chat Types
// ============================================================================

export interface CurriculumChatContext {
  subjectId: string;
  subjectName: string;
  subjectColor: string;
  gradeLevel: number;
  units: {
    id: string;
    name: string;
    description: string;
    topics: { id: string; name: string; description: string }[];
  }[];
  allSubjects: { id: string; name: string }[];
}

export interface CurriculumChatRequest {
  message: string;
  context: CurriculumChatContext;
  conversationHistory: ChatMessage[];
}

export interface CurriculumChatResponse {
  response: string;
  matchedUnits?: string[];
  matchedTopics?: string[];
  redirectSubject?: {
    id: string;
    name: string;
    prefillQuestion: string;
  };
  suggestedFollowUp?: string;
}

// Socratic Mode Types
export interface AISocraticGuidanceRequest {
  question: string;
  studentAnswer: string;
  correctAnswer: string;
  concept: string;
  gradeLevel: number;
  interestTheme: string;
  previousHints?: string[];
}

export interface AISocraticGuidanceResponse {
  isCorrect: boolean;
  guidingQuestion: string;
  thinkingPrompt: string;
  encouragement: string;
  hintLevel: 1 | 2 | 3; // How direct the hint is
}

// Dive Deeper Types
export interface AIDiveDeeperRequest {
  concept: string;
  currentExplanation: string;
  gradeLevel: number;
  difficultyLevel: number;
  interestTheme: string;
}

export interface AIDiveDeeperResponse {
  deeperExplanation: string;
  funFacts: string[];
  realWorldConnections: string[];
  whyItMatters: string;
  relatedConcepts: string[];
}

// ============================================================================
// Scan-to-Solve Types
// ============================================================================

export interface AIScanSolveRequest {
  imageBase64: string;
  gradeLevel: number;
  subject?: string;
}

export interface AIScanSolveResponse {
  problemDetected: string;
  subject: 'math' | 'science' | 'other';
  solution: string;
  steps: SolutionStep[];
  explanation: string;
  tips: string[];
}

export interface SolutionStep {
  stepNumber: number;
  description: string;
  result?: string;
}

// ============================================================================
// Avatar/Customization Types
// ============================================================================

export interface AvatarConfig {
  skinTone: string;
  hairStyle: string;
  hairColor: string;
  eyeStyle: string;
  eyeColor: string;
  mouthStyle: string;
  accessory?: string;
  outfit: string;
  outfitColor: string;
  background: string;
}

export const AVATAR_OPTIONS = {
  skinTones: ['#FFDFC4', '#F0C8A0', '#D4A574', '#C68642', '#8D5524', '#5C3811'],
  hairStyles: ['short', 'long', 'curly', 'wavy', 'ponytail', 'bun', 'spiky', 'none'],
  hairColors: ['#2C1810', '#4A3728', '#8B4513', '#D4A574', '#FFD700', '#FF6B35', '#9B59B6', '#3498DB'],
  eyeStyles: ['round', 'almond', 'wide', 'sleepy', 'happy'],
  eyeColors: ['#4A3728', '#2E86AB', '#27AE60', '#8E44AD', '#2C3E50'],
  mouthStyles: ['smile', 'grin', 'neutral', 'open', 'surprised'],
  accessories: ['none', 'glasses', 'sunglasses', 'headband', 'bow', 'cap', 'crown'],
  outfits: ['tshirt', 'hoodie', 'dress', 'jersey', 'formal'],
  outfitColors: ['#E74C3C', '#3498DB', '#2ECC71', '#9B59B6', '#F39C12', '#1ABC9C', '#E91E63'],
  backgrounds: ['#E8F5E9', '#E3F2FD', '#FFF3E0', '#F3E5F5', '#FFEBEE', '#E0F7FA'],
} as const;

// ============================================================================
// Virtual Manipulatives Types
// ============================================================================

export interface GraphPoint {
  x: number;
  y: number;
  label?: string;
}

export interface GraphFunction {
  expression: string;
  color: string;
  label?: string;
}

export interface FractionVisualization {
  numerator: number;
  denominator: number;
  type: 'circle' | 'bar' | 'grid';
}

// ============================================================================
// Parent Dashboard Types
// ============================================================================

export interface ParentProfile {
  id: string;
  user_id: string;
  name: string;
  email: string;
  children: ChildProfile[];
  settings: ParentSettings;
  created_at: string;
}

export interface ChildProfile {
  id: string;
  parent_id: string;
  user_profile_id: string; // links to User profile
  name: string;
  avatar?: AvatarConfig;
  daily_time_limit?: number; // minutes
  allowed_subjects?: string[];
  progress_summary?: ChildProgressSummary;
}

export interface ChildProgressSummary {
  totalXP: number;
  currentLevel: number;
  currentStreak: number;
  lessonsCompleted: number;
  quizzesPassed: number;
  averageScore: number;
  timeSpentToday: number; // minutes
  lastActive: string;
}

export interface ParentSettings {
  emailNotifications: boolean;
  weeklyReports: boolean;
  progressAlerts: boolean;
  contentRestrictions: 'none' | 'moderate' | 'strict';
}

// ============================================================================
// Voice Teacher Types (Text-to-Speech)
// ============================================================================

export interface VoiceTeacher {
  id: string;
  name: string;
  description?: string;
  // Google Cloud TTS parameters
  voice_name: string;           // e.g., 'en-US-Neural2-D'
  language_code: string;        // e.g., 'en-US'
  speaking_rate: number;        // 0.25 to 4.0
  pitch: number;                // -20.0 to 20.0
  volume_gain_db: number;       // -96.0 to 16.0
  // Persona metadata
  personality_prompt?: string;  // How AI should adapt content for this voice
  target_audience?: string;     // e.g., 'K-2', 'struggling learners'
  teaching_style?: string;      // e.g., 'patient', 'energetic', 'detailed'
  icon?: string;                // Emoji or icon
  color?: string;               // Theme color hex
  // Admin
  is_active: boolean;
  is_default: boolean;
  display_order: number;
  created_by?: string;
  created_at?: string;
  updated_at?: string;
}

export interface VoiceTeacherInput {
  name: string;
  description?: string;
  voice_name: string;
  language_code?: string;
  speaking_rate?: number;
  pitch?: number;
  volume_gain_db?: number;
  personality_prompt?: string;
  target_audience?: string;
  teaching_style?: string;
  icon?: string;
  color?: string;
  is_active?: boolean;
  is_default?: boolean;
  display_order?: number;
}

// Google Cloud TTS Voice options
export const GOOGLE_TTS_VOICES = [
  { name: 'en-US-Neural2-A', gender: 'male', description: 'Calm, professional' },
  { name: 'en-US-Neural2-C', gender: 'female', description: 'Bright, efficient' },
  { name: 'en-US-Neural2-D', gender: 'male', description: 'Warm, friendly' },
  { name: 'en-US-Neural2-E', gender: 'female', description: 'Thoughtful, measured' },
  { name: 'en-US-Neural2-F', gender: 'female', description: 'Cheerful, energetic' },
  { name: 'en-US-Neural2-G', gender: 'female', description: 'Soothing, gentle' },
  { name: 'en-US-Neural2-H', gender: 'female', description: 'Calm, reassuring' },
  { name: 'en-US-Neural2-I', gender: 'male', description: 'Authoritative, clear' },
  { name: 'en-US-Neural2-J', gender: 'male', description: 'Casual, approachable' },
  { name: 'en-GB-Neural2-A', gender: 'female', description: 'British, refined' },
  { name: 'en-GB-Neural2-B', gender: 'male', description: 'British, professional' },
] as const;
