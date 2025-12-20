import { createClient } from '@supabase/supabase-js';

const supabaseUrl = import.meta.env.VITE_SUPABASE_URL;
const supabaseAnonKey = import.meta.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseAnonKey) {
  throw new Error(
    'Missing Supabase environment variables. Please check your .env file.'
  );
}

export const supabase = createClient(supabaseUrl, supabaseAnonKey);

// Helper functions for common operations

export const getCurrentUser = async () => {
  const { data: { user } } = await supabase.auth.getUser();
  return user;
};

export const signOut = async () => {
  const { error } = await supabase.auth.signOut();
  if (error) throw error;
};

// Database query helpers
export const db = {
  // Users
  async getUser(userId: string) {
    const { data, error } = await supabase
      .from('users')
      .select('*')
      .eq('id', userId)
      .single();

    if (error) throw error;
    return data;
  },

  async updateUser(userId: string, updates: Partial<any>) {
    const { data, error } = await supabase
      .from('users')
      .update({ ...updates, updated_at: new Date().toISOString() })
      .eq('id', userId)
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  // Interests
  async getAllInterests() {
    const { data, error } = await supabase
      .from('interests')
      .select('*')
      .order('category', { ascending: true });

    if (error) throw error;
    return data;
  },

  async getUserInterests(userId: string) {
    const { data, error } = await supabase
      .from('user_interests')
      .select('*, interest:interests(*)')
      .eq('user_id', userId);

    if (error) throw error;
    return data;
  },

  async addUserInterest(userId: string, interestId: string, isPrimary: boolean = false) {
    const { data, error } = await supabase
      .from('user_interests')
      .insert({ user_id: userId, interest_id: interestId, is_primary: isPrimary })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  async removeUserInterest(userId: string, interestId: string) {
    const { error } = await supabase
      .from('user_interests')
      .delete()
      .eq('user_id', userId)
      .eq('interest_id', interestId);

    if (error) throw error;
  },

  // Subjects
  async getAllSubjects() {
    const { data, error } = await supabase
      .from('subjects')
      .select('*')
      .order('name', { ascending: true });

    if (error) throw error;
    return data;
  },

  // Topics
  async getTopicsBySubject(subjectId: string, gradeLevel?: number) {
    let query = supabase
      .from('topics')
      .select('*')
      .eq('subject_id', subjectId)
      .order('order_index', { ascending: true });

    if (gradeLevel) {
      query = query
        .lte('grade_level_min', gradeLevel)
        .gte('grade_level_max', gradeLevel);
    }

    const { data, error } = await query;
    if (error) throw error;
    return data;
  },

  async getTopic(topicId: string) {
    const { data, error } = await supabase
      .from('topics')
      .select('*, subject:subjects(*), unit:units(*)')
      .eq('id', topicId)
      .single();

    if (error) throw error;
    return data;
  },

  // Units & Curriculum
  async getUnitsBySubjectAndGrade(subjectId: string, gradeLevel: number) {
    const { data, error } = await supabase
      .from('units')
      .select('*')
      .eq('subject_id', subjectId)
      .eq('grade_level', gradeLevel)
      .order('order_index', { ascending: true });

    if (error) throw error;
    return data;
  },

  async getUnit(unitId: string) {
    const { data, error } = await supabase
      .from('units')
      .select('*, subject:subjects(*)')
      .eq('id', unitId)
      .single();

    if (error) throw error;
    return data;
  },

  async getTopicsByUnit(unitId: string) {
    const { data, error } = await supabase
      .from('topics')
      .select('*')
      .eq('unit_id', unitId)
      .order('order_index', { ascending: true });

    if (error) throw error;
    return data;
  },

  /**
   * Get full curriculum for a subject and grade level
   * Returns units with nested topics, ordered by unit order_index
   */
  async getCurriculumForSubject(subjectId: string, gradeLevel: number) {
    const { data, error } = await supabase
      .from('units')
      .select(`
        *,
        topics(*)
      `)
      .eq('subject_id', subjectId)
      .eq('grade_level', gradeLevel)
      .order('order_index', { ascending: true });

    if (error) throw error;

    // Sort topics within each unit by order_index
    return data?.map(unit => ({
      ...unit,
      topics: unit.topics?.sort((a: { order_index: number }, b: { order_index: number }) => a.order_index - b.order_index) || []
    })) || [];
  },

  /**
   * Get topics that don't belong to any unit (AI-suggested or standalone topics)
   * Filtered by grade level range
   */
  async getStandaloneTopics(subjectId: string, gradeLevel: number) {
    const { data, error } = await supabase
      .from('topics')
      .select('*')
      .eq('subject_id', subjectId)
      .is('unit_id', null)
      .lte('grade_level_min', gradeLevel)
      .gte('grade_level_max', gradeLevel)
      .order('order_index', { ascending: true });

    if (error) throw error;
    return data;
  },

  /**
   * Get all units for a specific grade level (across all subjects)
   */
  async getUnitsByGrade(gradeLevel: number) {
    const { data, error } = await supabase
      .from('units')
      .select('*, subject:subjects(*)')
      .eq('grade_level', gradeLevel)
      .order('subject_id', { ascending: true })
      .order('order_index', { ascending: true });

    if (error) throw error;
    return data;
  },

  // Progress
  async getUserProgress(userId: string, subjectId?: string) {
    let query = supabase
      .from('user_progress')
      .select('*, topic:topics(*), subject:subjects(*)')
      .eq('user_id', userId);

    if (subjectId) {
      query = query.eq('subject_id', subjectId);
    }

    const { data, error } = await query;
    if (error) throw error;
    return data;
  },

  async getTopicProgress(userId: string, topicId: string) {
    const { data, error } = await supabase
      .from('user_progress')
      .select('*')
      .eq('user_id', userId)
      .eq('topic_id', topicId)
      .single();

    if (error && error.code !== 'PGRST116') throw error; // PGRST116 = no rows
    return data;
  },

  async upsertProgress(userId: string, topicId: string, subjectId: string, updates: Partial<any>) {
    const { data, error } = await supabase
      .from('user_progress')
      .upsert({
        user_id: userId,
        topic_id: topicId,
        subject_id: subjectId,
        ...updates,
        updated_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  // Sessions
  async createSession(userId: string, topicId?: string, subjectId?: string) {
    const { data, error } = await supabase
      .from('session_logs')
      .insert({
        user_id: userId,
        topic_id: topicId,
        subject_id: subjectId,
        started_at: new Date().toISOString()
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  async updateSession(sessionId: string, updates: Partial<any>) {
    const { data, error } = await supabase
      .from('session_logs')
      .update(updates)
      .eq('id', sessionId)
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  async endSession(sessionId: string, stats: {
    questionsAttempted: number;
    questionsCorrect: number;
    timeSpent: number;
  }) {
    return await this.updateSession(sessionId, {
      ended_at: new Date().toISOString(),
      questions_attempted: stats.questionsAttempted,
      questions_correct: stats.questionsCorrect,
      time_spent: stats.timeSpent
    });
  },

  // Question Responses
  async saveQuestionResponse(response: {
    sessionLogId: string;
    userId: string;
    questionText: string;
    userAnswer?: string;
    correctAnswer: string;
    isCorrect: boolean;
    concept: string;
    difficultyLevel: number;
    timeToAnswer?: number;
    hintsUsed: number;
  }) {
    const { data, error } = await supabase
      .from('question_responses')
      .insert({
        session_log_id: response.sessionLogId,
        user_id: response.userId,
        question_text: response.questionText,
        user_answer: response.userAnswer,
        correct_answer: response.correctAnswer,
        is_correct: response.isCorrect,
        concept: response.concept,
        difficulty_level: response.difficultyLevel,
        time_to_answer: response.timeToAnswer,
        hints_used: response.hintsUsed
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  // Generated Content
  async saveGeneratedContent(content: {
    userId: string;
    topicId?: string;
    contentType: 'lesson' | 'example' | 'image' | 'question';
    prompt: string;
    generatedText?: string;
    imageUrl?: string;
    interestTheme?: string;
    metadata?: Record<string, any>;
  }) {
    const { data, error } = await supabase
      .from('generated_content')
      .insert({
        user_id: content.userId,
        topic_id: content.topicId,
        content_type: content.contentType,
        prompt: content.prompt,
        generated_text: content.generatedText,
        image_url: content.imageUrl,
        interest_theme: content.interestTheme,
        metadata: content.metadata || {}
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  async getCachedContent(userId: string, topicId: string, contentType: string, interestTheme: string) {
    const { data, error } = await supabase
      .from('generated_content')
      .select('*')
      .eq('user_id', userId)
      .eq('topic_id', topicId)
      .eq('content_type', contentType)
      .eq('interest_theme', interestTheme)
      .order('created_at', { ascending: false })
      .limit(1)
      .single();

    if (error && error.code !== 'PGRST116') throw error;
    return data;
  },

  // ============ CONTENT LIBRARY (Shared Cache) ============

  /**
   * Get content from the shared library by topic, grade, and difficulty
   * Returns null if no cached content exists
   */
  async getLibraryContent(
    topicId: string,
    gradeLevel: number,
    difficultyLevel: number,
    contentType: 'lesson' | 'questions'
  ) {
    const { data, error } = await supabase
      .from('content_library')
      .select('*')
      .eq('topic_id', topicId)
      .eq('grade_level', gradeLevel)
      .eq('difficulty_level', Math.round(difficultyLevel))
      .eq('content_type', contentType)
      .single();

    if (error && error.code !== 'PGRST116') throw error; // PGRST116 = no rows
    return data;
  },

  /**
   * Save content to the shared library
   * Uses upsert to update existing content if it exists
   */
  async saveLibraryContent(
    topicId: string,
    gradeLevel: number,
    difficultyLevel: number,
    contentType: 'lesson' | 'questions',
    content: Record<string, unknown> | unknown[]
  ) {
    const { data, error } = await supabase
      .from('content_library')
      .upsert({
        topic_id: topicId,
        grade_level: gradeLevel,
        difficulty_level: Math.round(difficultyLevel),
        content_type: contentType,
        content: content,
        updated_at: new Date().toISOString()
      }, {
        onConflict: 'topic_id,grade_level,difficulty_level,content_type'
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Increment the usage count for a piece of content
   * Used for analytics and popularity tracking
   */
  async incrementLibraryUsage(contentId: string) {
    const { error } = await supabase.rpc('increment_content_usage', {
      content_id: contentId
    });

    // If the RPC doesn't exist, fall back to manual increment
    if (error) {
      const { data: current } = await supabase
        .from('content_library')
        .select('usage_count')
        .eq('id', contentId)
        .single();

      if (current) {
        await supabase
          .from('content_library')
          .update({ usage_count: (current.usage_count || 0) + 1 })
          .eq('id', contentId);
      }
    }
  },

  /**
   * Check if content exists in the library
   */
  async hasLibraryContent(
    topicId: string,
    gradeLevel: number,
    difficultyLevel: number,
    contentType: 'lesson' | 'questions'
  ): Promise<boolean> {
    const { count, error } = await supabase
      .from('content_library')
      .select('id', { count: 'exact', head: true })
      .eq('topic_id', topicId)
      .eq('grade_level', gradeLevel)
      .eq('difficulty_level', Math.round(difficultyLevel))
      .eq('content_type', contentType);

    if (error) return false;
    return (count || 0) > 0;
  },

  // ============ CUSTOM TOPICS ============

  /**
   * Get all custom topics for a user
   */
  async getCustomTopics(userId: string) {
    const { data, error } = await supabase
      .from('custom_topics')
      .select('*, subject:subjects(*)')
      .eq('created_by', userId)
      .order('created_at', { ascending: false });

    if (error) throw error;
    return data;
  },

  /**
   * Get a single custom topic by ID
   */
  async getCustomTopic(topicId: string) {
    const { data, error } = await supabase
      .from('custom_topics')
      .select('*, subject:subjects(*)')
      .eq('id', topicId)
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Create a new custom topic
   */
  async createCustomTopic(topic: {
    created_by: string;
    name: string;
    description?: string;
    subject_id?: string;
    grade_level: number;
    difficulty_level: number;
    estimated_time: number;
    topic_outline: Record<string, unknown>;
    ai_prompt: string;
    status?: 'draft' | 'published';
  }) {
    const { data, error } = await supabase
      .from('custom_topics')
      .insert(topic)
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Update a custom topic
   */
  async updateCustomTopic(topicId: string, updates: Partial<{
    name: string;
    description: string;
    subject_id: string;
    grade_level: number;
    difficulty_level: number;
    estimated_time: number;
    topic_outline: Record<string, unknown>;
    status: string;
    review_notes: string;
    reviewed_by: string;
    reviewed_at: string;
    promoted_to_topic_id: string;
    promoted_at: string;
  }>) {
    const { data, error } = await supabase
      .from('custom_topics')
      .update({ ...updates, updated_at: new Date().toISOString() })
      .eq('id', topicId)
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Delete a custom topic
   */
  async deleteCustomTopic(topicId: string) {
    const { error } = await supabase
      .from('custom_topics')
      .delete()
      .eq('id', topicId);

    if (error) throw error;
  },

  /**
   * Increment usage count for a custom topic
   */
  async incrementCustomTopicUsage(topicId: string) {
    const { data: current } = await supabase
      .from('custom_topics')
      .select('usage_count')
      .eq('id', topicId)
      .single();

    if (current) {
      await supabase
        .from('custom_topics')
        .update({ usage_count: (current.usage_count || 0) + 1 })
        .eq('id', topicId);
    }
  },

  // ============ ADMIN FUNCTIONS ============

  /**
   * Check if a user is an admin
   */
  async isAdmin(userId: string): Promise<boolean> {
    const { data, error } = await supabase
      .from('admin_users')
      .select('id')
      .eq('user_id', userId)
      .single();

    if (error && error.code !== 'PGRST116') return false;
    return !!data;
  },

  /**
   * Get the admin role for a user
   */
  async getAdminRole(userId: string): Promise<string | null> {
    const { data, error } = await supabase
      .from('admin_users')
      .select('role')
      .eq('user_id', userId)
      .single();

    if (error) return null;
    return data?.role || null;
  },

  /**
   * Get all custom topics for admin review
   */
  async getAllCustomTopicsForReview(status?: string) {
    let query = supabase
      .from('custom_topics')
      .select('*, subject:subjects(*)')
      .order('created_at', { ascending: false });

    if (status) {
      query = query.eq('status', status);
    }

    const { data, error } = await query;
    if (error) throw error;
    return data;
  },

  /**
   * Review a custom topic (approve or reject)
   */
  async reviewCustomTopic(
    topicId: string,
    reviewerId: string,
    approved: boolean,
    notes?: string
  ) {
    const { data, error } = await supabase
      .from('custom_topics')
      .update({
        status: approved ? 'approved' : 'rejected',
        reviewed_by: reviewerId,
        reviewed_at: new Date().toISOString(),
        review_notes: notes
      })
      .eq('id', topicId)
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Promote a custom topic to an official topic
   */
  async promoteCustomTopicToOfficial(customTopicId: string, subjectId: string) {
    // First get the custom topic
    const customTopic = await this.getCustomTopic(customTopicId);
    if (!customTopic) throw new Error('Custom topic not found');

    // Get max order_index for the subject
    const { data: maxOrder } = await supabase
      .from('topics')
      .select('order_index')
      .eq('subject_id', subjectId)
      .order('order_index', { ascending: false })
      .limit(1)
      .single();

    // Create official topic
    const { data: newTopic, error: topicError } = await supabase
      .from('topics')
      .insert({
        subject_id: subjectId,
        name: customTopic.name,
        description: customTopic.description,
        grade_level_min: customTopic.grade_level,
        grade_level_max: customTopic.grade_level + 2, // Allow some range
        difficulty_level: customTopic.difficulty_level,
        order_index: (maxOrder?.order_index || 0) + 1,
        estimated_time: customTopic.estimated_time,
        prerequisites: []
      })
      .select()
      .single();

    if (topicError) throw topicError;

    // Update custom topic with promotion info
    await supabase
      .from('custom_topics')
      .update({
        promoted_to_topic_id: newTopic.id,
        promoted_at: new Date().toISOString(),
        status: 'approved'
      })
      .eq('id', customTopicId);

    return newTopic;
  }
};
