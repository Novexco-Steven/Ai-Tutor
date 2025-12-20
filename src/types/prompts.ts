// ============================================================================
// Additive Prompt System Types
// ============================================================================

/**
 * The 10 prompt layer types in composition order
 */
export type PromptType =
  | 'grade_global'              // Layer 1: Grade-level teaching approaches (K-12)
  | 'user_profile'              // Layer 2: Based on skills/assessment
  | 'user_learning_preference'  // Layer 2a: Global learning preferences
  | 'subject_global'            // Layer 3: Subject teaching approach
  | 'subject_location'          // Layer 4: Regional subject variant
  | 'unit_global'               // Layer 5: Unit objectives
  | 'unit_location'             // Layer 6: Regional unit variant
  | 'topic_global'              // Layer 7: Topic methodology
  | 'topic_location'            // Layer 8: Regional topic variant
  | 'user_customization';       // Layer 9: User-specific customizations

/**
 * Order in which prompt layers are composed
 */
export const PROMPT_LAYER_ORDER: PromptType[] = [
  'grade_global',
  'user_profile',
  'user_learning_preference',
  'subject_global',
  'subject_location',
  'unit_global',
  'unit_location',
  'topic_global',
  'topic_location',
  'user_customization',
];

/**
 * Human-readable labels for each prompt type
 */
export const PROMPT_TYPE_LABELS: Record<PromptType, string> = {
  grade_global: 'Grade-Level Approach',
  user_profile: 'Student Profile',
  user_learning_preference: 'Learning Preferences',
  subject_global: 'Subject Guidelines',
  subject_location: 'Regional Subject Adaptations',
  unit_global: 'Unit Objectives',
  unit_location: 'Regional Unit Adaptations',
  topic_global: 'Topic Methodology',
  topic_location: 'Regional Topic Adaptations',
  user_customization: 'Personal Customizations',
};

// ============================================================================
// Database Record Types
// ============================================================================

/**
 * A prompt template stored in the database
 */
export interface PromptTemplate {
  id: string;
  prompt_type: PromptType;

  // Grade level (for grade_global prompts: 0 = K, 1-12 = grades)
  grade_level?: number;

  // Scope references (nullable based on prompt_type)
  subject_id?: string;
  unit_id?: string;
  topic_id?: string;
  user_id?: string;

  // Location scope (for location variants)
  country_code?: string;
  province_state?: string;

  // Content
  name: string;
  description?: string;
  prompt_content: string;

  /**
   * Override sections allow specific prompts to override sections from parent layers.
   * Format: { "section_name": "override content" }
   * Use [[section_name]]content[[/section_name]] markers in prompts to define overridable sections
   */
  override_sections: Record<string, string>;

  // Metadata
  is_active: boolean;
  priority: number;
  created_by?: string;
  created_at: string;
  updated_at: string;
}

/**
 * A version snapshot of a prompt template for history/rollback
 */
export interface PromptVersion {
  id: string;
  prompt_template_id: string;
  version_number: number;
  prompt_content: string;
  override_sections: Record<string, string>;
  change_summary?: string;
  changed_by?: string;
  changed_at: string;
  is_current: boolean;
  rolled_back_from?: string;
}

/**
 * User's global learning preferences
 */
export interface LearningPreferences {
  id: string;
  user_id: string;

  /**
   * Preferred teacher persona ID (references TEACHER_PERSONAS in prompts.ts)
   */
  preferred_teacher_persona?: string;

  /**
   * Preferred teaching method ID (references TEACHING_METHODS in prompts.ts)
   */
  preferred_teaching_method?: string;

  /**
   * Preferred feedback method ID (references FEEDBACK_METHODS in prompts.ts)
   */
  preferred_feedback_method?: string;

  /**
   * Learning style preference
   */
  learning_style?: 'visual' | 'auditory' | 'reading' | 'kinesthetic';

  /**
   * Extensible custom preferences
   */
  custom_preferences: CustomLearningPreferences;

  created_at: string;
  updated_at: string;
}

/**
 * Custom learning preference options
 */
export interface CustomLearningPreferences {
  /** How detailed should explanations be */
  explanation_detail?: 'thorough' | 'concise';

  /** How many examples to include */
  example_quantity?: 'many' | 'few';

  /** Level of positive reinforcement */
  encouragement_level?: 'high' | 'moderate' | 'minimal';

  /** Should student struggle before hints or be guided */
  challenge_preference?: 'struggle_first' | 'guided';

  /** Preferred learning pace */
  pace_preference?: 'fast' | 'moderate' | 'slow';

  /** Additional custom preferences */
  [key: string]: string | undefined;
}

/**
 * User's customization for a specific subject/unit/topic
 */
export interface UserPromptCustomization {
  id: string;
  user_id: string;

  // Scope (at least one should be set)
  subject_id?: string;
  unit_id?: string;
  topic_id?: string;

  /** User's additional instructions for how to teach */
  custom_instructions?: string;

  /** Specific concepts to emphasize */
  focus_areas: string[];

  /** Topics or approaches to avoid */
  avoid_topics: string[];

  /** User-provided example contexts to use */
  custom_examples: string[];

  is_active: boolean;
  created_at: string;
  updated_at: string;
}

/**
 * Location metadata for regional prompts
 */
export interface LocationMetadata {
  id: string;
  country_code: string;
  province_state?: string;
  display_name: string;

  /** e.g., 'Common Core', 'Ontario Curriculum' */
  curriculum_standard?: string;

  /** e.g., 'en-US', 'en-GB', 'en-CA' */
  language_variant?: string;

  /** Additional cultural context data */
  cultural_context: Record<string, unknown>;

  is_active: boolean;
}

/**
 * Admin user record
 */
export interface AdminUser {
  id: string;
  user_id: string;
  role: 'admin' | 'super_admin';
  created_at: string;
  updated_at: string;
}

// ============================================================================
// Prompt Composition Types
// ============================================================================

/**
 * A single layer in the prompt composition
 */
export interface PromptLayer {
  type: PromptType;

  /** Where this layer's content came from */
  source: 'database' | 'static' | 'generated';

  /** The prompt content for this layer */
  content: string;

  /** Override sections from this layer */
  overrides?: Record<string, string>;

  /** Additional metadata about this layer */
  metadata?: {
    templateId?: string;
    name?: string;
    [key: string]: unknown;
  };
}

/**
 * The result of composing all prompt layers
 */
export interface ComposedPrompt {
  /** All layers that were composed */
  layers: PromptLayer[];

  /** The final composed prompt text */
  finalPrompt: string;

  /** Context used for composition */
  context: PromptCompositionContext;

  /** When the composition was created */
  composedAt: string;
}

/**
 * Context required for prompt composition
 */
export interface PromptCompositionContext {
  // User context
  userId: string;
  gradeLevel: number;
  difficultyLevel: number;
  interestTheme: string;
  learningPreferences?: LearningPreferences;

  // Content context
  subjectId?: string;
  subjectName?: string;
  unitId?: string;
  unitName?: string;
  topicId?: string;
  topicName?: string;
  topicDescription?: string;

  // Location context
  countryCode?: string;
  provinceState?: string;

  // Assessment/skill context for user profile layer
  assessmentResults?: AssessmentContext;

  // Request type affects the composition
  requestType: PromptRequestType;
}

/**
 * Types of AI requests that affect prompt composition
 */
export type PromptRequestType =
  | 'lesson'
  | 'questions'
  | 'feedback'
  | 'chat'
  | 'simplify'
  | 'socratic'
  | 'dive_deeper';

/**
 * Assessment results for personalizing the user profile layer
 */
export interface AssessmentContext {
  strengths: string[];
  weaknesses: string[];
  suggestedDifficulty: number;
  recentPerformance?: {
    correctRate: number;
    strugglingConcepts: string[];
  };
}

/**
 * Options for customizing prompt composition
 */
export interface PromptCompositionOptions {
  /** Include teacher persona in learning preferences layer */
  includeTeacherPersona?: boolean;

  /** Include teaching method in learning preferences layer */
  includeTeachingMethod?: boolean;

  /** Include feedback method in learning preferences layer */
  includeFeedbackMethod?: boolean;

  /** Skip specific layers */
  skipLayers?: PromptType[];

  /** Additional context to append to final prompt */
  additionalContext?: Record<string, string>;

  /** Use cached prompts if available */
  useCache?: boolean;
}

// ============================================================================
// Admin/CRUD Types
// ============================================================================

/**
 * Input for creating a new prompt template
 */
export interface CreatePromptTemplateInput {
  prompt_type: PromptType;
  name: string;
  description?: string;
  prompt_content: string;
  override_sections?: Record<string, string>;

  // Grade level (for grade_global prompts: 0 = K, 1-12 = grades)
  grade_level?: number;

  // Scope (based on prompt_type)
  subject_id?: string;
  unit_id?: string;
  topic_id?: string;
  user_id?: string;

  // Location (for location variants)
  country_code?: string;
  province_state?: string;

  priority?: number;
}

/**
 * Input for updating a prompt template
 */
export interface UpdatePromptTemplateInput {
  name?: string;
  description?: string;
  prompt_content?: string;
  override_sections?: Record<string, string>;
  is_active?: boolean;
  priority?: number;
  change_summary?: string;
}

/**
 * Filters for querying prompt templates
 */
export interface PromptTemplateFilters {
  prompt_type?: PromptType | PromptType[];
  grade_level?: number;
  subject_id?: string;
  unit_id?: string;
  topic_id?: string;
  country_code?: string;
  province_state?: string;
  is_active?: boolean;
  search?: string;
}

/**
 * Input for creating/updating learning preferences
 */
export interface SaveLearningPreferencesInput {
  preferred_teacher_persona?: string;
  preferred_teaching_method?: string;
  preferred_feedback_method?: string;
  learning_style?: 'visual' | 'auditory' | 'reading' | 'kinesthetic';
  custom_preferences?: Partial<CustomLearningPreferences>;
}

/**
 * Input for creating/updating user prompt customizations
 */
export interface SaveUserCustomizationInput {
  subject_id?: string;
  unit_id?: string;
  topic_id?: string;
  custom_instructions?: string;
  focus_areas?: string[];
  avoid_topics?: string[];
  custom_examples?: string[];
}

// ============================================================================
// UI Component Props Types
// ============================================================================

/**
 * Props for prompt editor component
 */
export interface PromptEditorProps {
  template?: PromptTemplate;
  onSave: (data: CreatePromptTemplateInput | UpdatePromptTemplateInput) => Promise<void>;
  onCancel: () => void;
  mode: 'create' | 'edit';
}

/**
 * Props for prompt preview component
 */
export interface PromptPreviewProps {
  context: Partial<PromptCompositionContext>;
  options?: PromptCompositionOptions;
}

/**
 * Props for learning preferences editor
 */
export interface LearningPreferencesEditorProps {
  preferences?: LearningPreferences;
  onSave: (data: SaveLearningPreferencesInput) => Promise<void>;
}

/**
 * Props for topic customizer component
 */
export interface TopicCustomizerProps {
  topicId?: string;
  unitId?: string;
  subjectId?: string;
  existingCustomization?: UserPromptCustomization;
  onSave: (data: SaveUserCustomizationInput) => Promise<void>;
  onCancel: () => void;
}
