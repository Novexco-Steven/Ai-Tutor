/**
 * Prompt Composition Service
 *
 * Composes layered prompts from database templates and user preferences.
 * Supports hierarchical overrides where more specific layers can override
 * sections from more general layers.
 */

import { supabase } from './supabase';
import {
  TEACHER_PERSONAS,
  TEACHING_METHODS,
  FEEDBACK_METHODS,
  getGradePromptModifiers,
  getDifficultyPromptModifiers,
  DIFFICULTY_DESCRIPTORS,
  GRADE_LEVELS,
  type GradeLevel,
  type DifficultyLevel,
} from './prompts';
import type {
  PromptType,
  PromptTemplate,
  PromptLayer,
  ComposedPrompt,
  PromptCompositionContext,
  PromptCompositionOptions,
  LearningPreferences,
  UserPromptCustomization,
} from '@/types/prompts';

// Request type headers for different AI operations
const REQUEST_TYPE_HEADERS: Record<string, (ctx: PromptCompositionContext) => string> = {
  lesson: (ctx) =>
    `You are an AI tutor creating a lesson about "${ctx.topicName || 'the topic'}" in ${ctx.subjectName || 'this subject'}.`,
  questions: (ctx) =>
    `You are generating practice questions for "${ctx.topicName || 'the topic'}" in ${ctx.subjectName || 'this subject'}.`,
  feedback: (ctx) =>
    `You are providing feedback on a student's answer in ${ctx.subjectName || 'this subject'}.`,
  chat: (ctx) =>
    `You are a friendly AI tutor helping a student with "${ctx.topicName || 'the topic'}" in ${ctx.subjectName || 'this subject'}.`,
  simplify: (ctx) =>
    `You are simplifying an explanation for a grade ${ctx.gradeLevel} student.`,
  socratic: (ctx) =>
    `You are a Socratic tutor guiding a student through "${ctx.topicName || 'the topic'}" with thoughtful questions.`,
  dive_deeper: (ctx) =>
    `You are helping a curious student explore "${ctx.topicName || 'the topic'}" in greater depth.`,
};

/**
 * Cache entry with expiry
 */
interface CacheEntry<T> {
  data: T;
  expiry: number;
}

/**
 * Prompt Composer Service
 *
 * Fetches and composes prompts from multiple layers into a single coherent prompt.
 */
class PromptComposerService {
  private templateCache: Map<string, CacheEntry<PromptTemplate[]>> = new Map();
  private preferencesCache: Map<string, CacheEntry<LearningPreferences | null>> = new Map();
  private customizationsCache: Map<string, CacheEntry<UserPromptCustomization | null>> = new Map();
  private CACHE_TTL = 5 * 60 * 1000; // 5 minutes

  /**
   * Compose a complete prompt from all applicable layers
   */
  async composePrompt(
    context: PromptCompositionContext,
    options: PromptCompositionOptions = {}
  ): Promise<ComposedPrompt> {
    const layers: PromptLayer[] = [];

    try {
      // Fetch all applicable data in parallel
      const [
        gradePrompt,
        userProfileLayer,
        learningPreferences,
        subjectPrompts,
        unitPrompts,
        topicPrompts,
        userCustomization,
      ] = await Promise.all([
        this.getGradePrompt(context.gradeLevel),
        this.buildUserProfileLayer(context),
        this.getLearningPreferences(context.userId),
        this.getPromptsByScope('subject', context),
        this.getPromptsByScope('unit', context),
        this.getPromptsByScope('topic', context),
        this.getUserCustomization(context),
      ]);

      // Layer 1: Grade-Level Teaching Approach
      if (gradePrompt && !options.skipLayers?.includes('grade_global')) {
        layers.push(this.templateToLayer(gradePrompt));
      }

      // Layer 2: User Profile (skills/assessment based)
      if (userProfileLayer && !options.skipLayers?.includes('user_profile')) {
        layers.push(userProfileLayer);
      }

      // Layer 2a: User Learning Preferences
      if (learningPreferences && !options.skipLayers?.includes('user_learning_preference')) {
        const prefLayer = this.buildLearningPreferenceLayer(learningPreferences, options);
        if (prefLayer) {
          layers.push(prefLayer);
        }
      }

      // Layer 3: Subject Global
      const subjectGlobal = subjectPrompts.find((p) => p.prompt_type === 'subject_global');
      if (subjectGlobal && !options.skipLayers?.includes('subject_global')) {
        layers.push(this.templateToLayer(subjectGlobal));
      }

      // Layer 4: Subject Location
      const subjectLocation = subjectPrompts.find((p) => p.prompt_type === 'subject_location');
      if (subjectLocation && !options.skipLayers?.includes('subject_location')) {
        layers.push(this.templateToLayer(subjectLocation));
      }

      // Layer 5: Unit Global
      const unitGlobal = unitPrompts.find((p) => p.prompt_type === 'unit_global');
      if (unitGlobal && !options.skipLayers?.includes('unit_global')) {
        layers.push(this.templateToLayer(unitGlobal));
      }

      // Layer 6: Unit Location
      const unitLocation = unitPrompts.find((p) => p.prompt_type === 'unit_location');
      if (unitLocation && !options.skipLayers?.includes('unit_location')) {
        layers.push(this.templateToLayer(unitLocation));
      }

      // Layer 7: Topic Global
      const topicGlobal = topicPrompts.find((p) => p.prompt_type === 'topic_global');
      if (topicGlobal && !options.skipLayers?.includes('topic_global')) {
        layers.push(this.templateToLayer(topicGlobal));
      }

      // Layer 8: Topic Location
      const topicLocation = topicPrompts.find((p) => p.prompt_type === 'topic_location');
      if (topicLocation && !options.skipLayers?.includes('topic_location')) {
        layers.push(this.templateToLayer(topicLocation));
      }

      // Layer 9: User Customizations
      if (userCustomization && !options.skipLayers?.includes('user_customization')) {
        const customLayer = this.buildUserCustomizationLayer(userCustomization);
        if (customLayer) {
          layers.push(customLayer);
        }
      }
    } catch (error) {
      console.warn('Error fetching prompt layers, using fallback:', error);
      // Continue with whatever layers we have
    }

    // Compose final prompt with override resolution
    const finalPrompt = this.composeLayers(layers, context, options);

    return {
      layers,
      finalPrompt,
      context,
      composedAt: new Date().toISOString(),
    };
  }

  /**
   * Build user profile layer based on grade, difficulty, and assessment results
   */
  private async buildUserProfileLayer(
    context: PromptCompositionContext
  ): Promise<PromptLayer> {
    const grade = context.gradeLevel as GradeLevel;
    const difficulty = context.difficultyLevel as DifficultyLevel;

    const gradeMods = getGradePromptModifiers(grade);
    const diffMods = getDifficultyPromptModifiers(difficulty);
    const gradeInfo = GRADE_LEVELS[grade] || { name: `Grade ${grade}`, ageRange: 'unknown' };
    const diffInfo = DIFFICULTY_DESCRIPTORS[difficulty] || {
      label: 'Standard',
      bloomLevel: 'Apply',
    };

    const parts: string[] = [
      'STUDENT PROFILE:',
      `- Grade Level: ${gradeInfo.name} (ages ${gradeInfo.ageRange})`,
      `- Current Difficulty: ${diffInfo.label} (${difficulty}/10)`,
      `- Bloom's Taxonomy Level: ${diffInfo.bloomLevel}`,
      '',
      'LANGUAGE REQUIREMENTS:',
      `- Vocabulary: ${gradeMods.vocabulary}`,
      `- Sentence Complexity: ${gradeMods.sentenceComplexity}`,
      `- Concept Depth: ${gradeMods.conceptDepth}`,
      `- Examples: ${gradeMods.examples}`,
      '',
      'DIFFICULTY CALIBRATION:',
      `- Question Complexity: ${diffMods.questionComplexity}`,
      `- Support Level: ${diffMods.scaffolding}`,
      `- Practice Approach: ${diffMods.practiceType}`,
    ];

    // Add assessment insights if available
    if (context.assessmentResults) {
      parts.push('');
      parts.push('ASSESSMENT INSIGHTS:');
      if (context.assessmentResults.strengths.length > 0) {
        parts.push(`- Strengths: ${context.assessmentResults.strengths.join(', ')}`);
      }
      if (context.assessmentResults.weaknesses.length > 0) {
        parts.push(`- Areas for Growth: ${context.assessmentResults.weaknesses.join(', ')}`);
      }
      parts.push(
        `- Recommended Difficulty: ${context.assessmentResults.suggestedDifficulty}/10`
      );

      if (context.assessmentResults.recentPerformance) {
        const perf = context.assessmentResults.recentPerformance;
        parts.push(
          `- Recent Performance: ${Math.round(perf.correctRate * 100)}% correct`
        );
        if (perf.strugglingConcepts.length > 0) {
          parts.push(`- Currently Struggling With: ${perf.strugglingConcepts.join(', ')}`);
        }
      }
    }

    // Add interest theme personalization
    if (context.interestTheme) {
      parts.push('');
      parts.push('PERSONALIZATION:');
      parts.push(`- Interest Theme: ${context.interestTheme}`);
      parts.push(
        `- Integrate "${context.interestTheme}" naturally into examples and explanations`
      );
    }

    return {
      type: 'user_profile',
      source: 'generated',
      content: parts.join('\n'),
    };
  }

  /**
   * Build learning preference layer from user preferences
   */
  private buildLearningPreferenceLayer(
    prefs: LearningPreferences,
    options: PromptCompositionOptions
  ): PromptLayer | null {
    const parts: string[] = ['LEARNING PREFERENCES:'];

    // Teacher persona
    if (prefs.preferred_teacher_persona && options.includeTeacherPersona !== false) {
      const persona = TEACHER_PERSONAS[prefs.preferred_teacher_persona];
      if (persona) {
        parts.push('');
        parts.push(`TEACHER PERSONA: ${persona.name}`);
        parts.push(`- Personality: ${persona.personality}`);
        parts.push(`- Teaching Style: ${persona.teachingStyle}`);
        parts.push(`- Feedback Style: ${persona.feedbackStyle}`);
        parts.push(`- Motivational Approach: ${persona.motivationalApproach}`);
        parts.push('');
        parts.push(
          `Embody ${persona.name}'s personality throughout. Use language, tone, and approaches consistent with a ${persona.personality} teacher.`
        );
      }
    }

    // Teaching method
    if (prefs.preferred_teaching_method && options.includeTeachingMethod !== false) {
      const method =
        TEACHING_METHODS[prefs.preferred_teaching_method as keyof typeof TEACHING_METHODS];
      if (method) {
        parts.push('');
        parts.push(`TEACHING METHOD: ${method.name}`);
        parts.push(`${method.description}`);
        parts.push('');
        parts.push('Implementation:');
        parts.push(method.implementation);
      }
    }

    // Feedback method
    if (prefs.preferred_feedback_method && options.includeFeedbackMethod !== false) {
      const feedback =
        FEEDBACK_METHODS[prefs.preferred_feedback_method as keyof typeof FEEDBACK_METHODS];
      if (feedback) {
        parts.push('');
        parts.push(`FEEDBACK APPROACH: ${feedback.name}`);
        parts.push(`${feedback.description}`);
        parts.push('');
        parts.push('Implementation:');
        parts.push(feedback.implementation);
        parts.push(`Key Principles: ${feedback.principles.join(', ')}`);
      }
    }

    // Learning style
    if (prefs.learning_style) {
      const styleDescriptions = {
        visual: 'Use diagrams, visual representations, and imagery to explain concepts.',
        auditory:
          'Explain concepts as if speaking aloud. Use rhythm, analogies, and verbal patterns.',
        reading:
          'Provide detailed written explanations. Structure information with clear headings and lists.',
        kinesthetic:
          'Focus on hands-on examples and activities. Emphasize doing and experimenting.',
      };
      parts.push('');
      parts.push(`LEARNING STYLE: ${prefs.learning_style}`);
      parts.push(styleDescriptions[prefs.learning_style] || '');
    }

    // Custom preferences
    const customs = prefs.custom_preferences;
    if (customs && Object.keys(customs).length > 0) {
      parts.push('');
      parts.push('CUSTOM PREFERENCES:');

      if (customs.explanation_detail) {
        parts.push(
          customs.explanation_detail === 'thorough'
            ? '- Provide detailed, comprehensive explanations with full context'
            : '- Keep explanations concise and focused on key points'
        );
      }

      if (customs.example_quantity) {
        parts.push(
          customs.example_quantity === 'many'
            ? '- Include multiple varied examples to illustrate concepts'
            : '- Use fewer but carefully chosen examples'
        );
      }

      if (customs.encouragement_level) {
        const levels = {
          high: '- Provide frequent positive reinforcement and celebration of progress',
          moderate: '- Offer balanced encouragement and constructive feedback',
          minimal: '- Focus on content with minimal praise; student prefers directness',
        };
        parts.push(levels[customs.encouragement_level] || '');
      }

      if (customs.challenge_preference) {
        parts.push(
          customs.challenge_preference === 'struggle_first'
            ? '- Allow student to attempt problems before providing hints; productive struggle is valued'
            : '- Guide student through challenges step-by-step with scaffolding'
        );
      }

      if (customs.pace_preference) {
        const paces = {
          fast: '- Move through material efficiently; student learns quickly',
          moderate: '- Standard pacing with appropriate time for each concept',
          slow: '- Take extra time with each concept; ensure deep understanding before moving on',
        };
        parts.push(paces[customs.pace_preference] || '');
      }
    }

    if (parts.length <= 1) {
      return null; // No meaningful preferences to include
    }

    return {
      type: 'user_learning_preference',
      source: 'database',
      content: parts.join('\n'),
    };
  }

  /**
   * Build user customization layer
   */
  private buildUserCustomizationLayer(
    customization: UserPromptCustomization
  ): PromptLayer | null {
    const parts: string[] = ['USER CUSTOMIZATIONS:'];
    let hasContent = false;

    if (customization.custom_instructions?.trim()) {
      parts.push('');
      parts.push('Additional Instructions:');
      parts.push(customization.custom_instructions);
      hasContent = true;
    }

    if (customization.focus_areas && customization.focus_areas.length > 0) {
      parts.push('');
      parts.push('Focus Areas (emphasize these concepts):');
      customization.focus_areas.forEach((area) => parts.push(`- ${area}`));
      hasContent = true;
    }

    if (customization.avoid_topics && customization.avoid_topics.length > 0) {
      parts.push('');
      parts.push('Topics/Approaches to Avoid:');
      customization.avoid_topics.forEach((topic) => parts.push(`- ${topic}`));
      hasContent = true;
    }

    if (customization.custom_examples && customization.custom_examples.length > 0) {
      parts.push('');
      parts.push('Preferred Example Contexts (use these types of examples):');
      customization.custom_examples.forEach((example) => parts.push(`- ${example}`));
      hasContent = true;
    }

    if (!hasContent) {
      return null;
    }

    return {
      type: 'user_customization',
      source: 'database',
      content: parts.join('\n'),
    };
  }

  /**
   * Compose all layers into final prompt with override resolution
   */
  private composeLayers(
    layers: PromptLayer[],
    context: PromptCompositionContext,
    options: PromptCompositionOptions
  ): string {
    // Collect all overrides (later layers take precedence)
    const overrides: Record<string, string> = {};
    for (const layer of layers) {
      if (layer.overrides) {
        Object.assign(overrides, layer.overrides);
      }
    }

    // Build sections
    const sections: string[] = [];

    // Add request-type specific header
    const headerFn = REQUEST_TYPE_HEADERS[context.requestType];
    if (headerFn) {
      sections.push(headerFn(context));
    }

    // Add current year for up-to-date content
    sections.push(`CURRENT YEAR: ${new Date().getFullYear()}`);

    // Add each layer's content with section labels
    for (const layer of layers) {
      const content = layer.content.trim();
      if (content) {
        const label = this.getLayerLabel(layer.type);
        sections.push(`\n--- ${label} ---\n${content}`);
      }
    }

    // Join all sections
    let finalPrompt = sections.join('\n\n');

    // Apply overrides using [[section_id]]...[[/section_id]] markers
    for (const [sectionId, overrideContent] of Object.entries(overrides)) {
      const sectionRegex = new RegExp(
        `\\[\\[${sectionId}\\]\\][\\s\\S]*?\\[\\[/${sectionId}\\]\\]`,
        'g'
      );
      finalPrompt = finalPrompt.replace(sectionRegex, overrideContent);
    }

    // Add any additional context from options
    if (options.additionalContext) {
      for (const [key, value] of Object.entries(options.additionalContext)) {
        finalPrompt += `\n\n${key.toUpperCase()}:\n${value}`;
      }
    }

    return finalPrompt.trim();
  }

  /**
   * Get human-readable layer label
   */
  private getLayerLabel(type: PromptType): string {
    const labels: Record<PromptType, string> = {
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
    return labels[type] || type;
  }

  /**
   * Convert database template to layer
   */
  private templateToLayer(template: PromptTemplate): PromptLayer {
    return {
      type: template.prompt_type,
      source: 'database',
      content: template.prompt_content,
      overrides: template.override_sections,
      metadata: {
        templateId: template.id,
        name: template.name,
      },
    };
  }

  // ============================================================================
  // Database Fetch Methods
  // ============================================================================

  /**
   * Get grade-level teaching approach prompt
   */
  private async getGradePrompt(gradeLevel: number): Promise<PromptTemplate | null> {
    const cacheKey = `grade:${gradeLevel}`;
    const cached = this.templateCache.get(cacheKey);

    if (cached && cached.expiry > Date.now()) {
      return cached.data[0] || null;
    }

    try {
      const { data, error } = await supabase
        .from('prompt_templates')
        .select('*')
        .eq('prompt_type', 'grade_global')
        .eq('grade_level', gradeLevel)
        .eq('is_active', true)
        .order('priority', { ascending: false })
        .limit(1);

      if (error) throw error;

      this.templateCache.set(cacheKey, {
        data: data || [],
        expiry: Date.now() + this.CACHE_TTL,
      });

      return data?.[0] || null;
    } catch (error) {
      console.warn('Error fetching grade prompt:', error);
      return null;
    }
  }

  /**
   * Get user's learning preferences
   */
  private async getLearningPreferences(userId: string): Promise<LearningPreferences | null> {
    const cacheKey = `prefs:${userId}`;
    const cached = this.preferencesCache.get(cacheKey);

    if (cached && cached.expiry > Date.now()) {
      return cached.data;
    }

    try {
      const { data, error } = await supabase
        .from('learning_preferences')
        .select('*')
        .eq('user_id', userId)
        .single();

      // PGRST116 = no rows returned, 406/42P01 = table doesn't exist
      if (error && error.code !== 'PGRST116') {
        // Table may not exist yet - don't throw, just return null
        if (error.code === '42P01' || error.message?.includes('406')) {
          return null;
        }
        throw error;
      }

      this.preferencesCache.set(cacheKey, {
        data: data || null,
        expiry: Date.now() + this.CACHE_TTL,
      });

      return data || null;
    } catch (error) {
      // Silently handle table-not-found errors
      console.warn('Error fetching learning preferences:', error);
      return null;
    }
  }

  /**
   * Get prompts by scope (subject, unit, or topic)
   */
  private async getPromptsByScope(
    scope: 'subject' | 'unit' | 'topic',
    context: PromptCompositionContext
  ): Promise<PromptTemplate[]> {
    const scopeId = context[`${scope}Id` as keyof PromptCompositionContext];
    if (!scopeId) return [];

    const cacheKey = `${scope}:${scopeId}:${context.countryCode || ''}:${context.provinceState || ''}`;
    const cached = this.templateCache.get(cacheKey);

    if (cached && cached.expiry > Date.now()) {
      return cached.data;
    }

    try {
      // Build query for global and location-specific prompts
      let query = supabase
        .from('prompt_templates')
        .select('*')
        .in('prompt_type', [`${scope}_global`, `${scope}_location`])
        .eq(`${scope}_id`, scopeId)
        .eq('is_active', true);

      const { data, error } = await query;

      if (error) throw error;

      // Filter location-specific prompts
      const results = (data || []).filter((template) => {
        // Global prompts (no location) always included
        if (!template.country_code) return true;

        // Location prompts need to match
        if (template.country_code !== context.countryCode) return false;

        // If template has province_state, it must match
        if (template.province_state && template.province_state !== context.provinceState) {
          return false;
        }

        return true;
      });

      // Sort by priority (higher first) and specificity (more specific location first)
      results.sort((a, b) => {
        // First by priority
        if (b.priority !== a.priority) {
          return b.priority - a.priority;
        }
        // Then by location specificity
        const aSpecificity = (a.country_code ? 1 : 0) + (a.province_state ? 1 : 0);
        const bSpecificity = (b.country_code ? 1 : 0) + (b.province_state ? 1 : 0);
        return bSpecificity - aSpecificity;
      });

      this.templateCache.set(cacheKey, {
        data: results,
        expiry: Date.now() + this.CACHE_TTL,
      });

      return results;
    } catch (error) {
      console.warn(`Error fetching ${scope} prompts:`, error);
      return [];
    }
  }

  /**
   * Get user's customization for the most specific scope
   */
  private async getUserCustomization(
    context: PromptCompositionContext
  ): Promise<UserPromptCustomization | null> {
    const cacheKey = `custom:${context.userId}:${context.topicId || ''}:${context.unitId || ''}:${context.subjectId || ''}`;
    const cached = this.customizationsCache.get(cacheKey);

    if (cached && cached.expiry > Date.now()) {
      return cached.data;
    }

    try {
      // Try to find the most specific customization (topic > unit > subject)
      const { data, error } = await supabase
        .from('user_prompt_customizations')
        .select('*')
        .eq('user_id', context.userId)
        .eq('is_active', true);

      if (error) throw error;

      // Find the most specific match
      let bestMatch: UserPromptCustomization | null = null;
      let bestSpecificity = -1;

      for (const custom of data || []) {
        let specificity = 0;

        // Check if this customization applies to our context
        if (custom.topic_id) {
          if (custom.topic_id !== context.topicId) continue;
          specificity = 3; // Most specific
        } else if (custom.unit_id) {
          if (custom.unit_id !== context.unitId) continue;
          specificity = 2;
        } else if (custom.subject_id) {
          if (custom.subject_id !== context.subjectId) continue;
          specificity = 1;
        }

        if (specificity > bestSpecificity) {
          bestMatch = custom;
          bestSpecificity = specificity;
        }
      }

      this.customizationsCache.set(cacheKey, {
        data: bestMatch,
        expiry: Date.now() + this.CACHE_TTL,
      });

      return bestMatch;
    } catch (error) {
      console.warn('Error fetching user customizations:', error);
      return null;
    }
  }

  /**
   * Clear all caches (useful after admin updates prompts)
   */
  clearCache(): void {
    this.templateCache.clear();
    this.preferencesCache.clear();
    this.customizationsCache.clear();
  }

  /**
   * Clear cache for a specific user
   */
  clearUserCache(userId: string): void {
    this.preferencesCache.delete(`prefs:${userId}`);

    // Clear all customization entries for this user
    for (const key of this.customizationsCache.keys()) {
      if (key.startsWith(`custom:${userId}:`)) {
        this.customizationsCache.delete(key);
      }
    }
  }
}

// Export singleton instance
export const promptComposer = new PromptComposerService();

// Export class for testing
export { PromptComposerService };
