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
}

export interface UserSettings {
  display: DisplaySettings;
  audio: AudioSettings;
  learning: LearningSettings;
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
}

export interface LearningSettings {
  showHints: boolean;
  practiceQuestionCount: 5 | 10 | 15;
  autoAdvance: boolean;
  difficultyMode: 'auto' | 'challenge' | 'easier';
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

export interface Topic {
  id: string;
  subject_id: string;
  subject?: Subject;
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
