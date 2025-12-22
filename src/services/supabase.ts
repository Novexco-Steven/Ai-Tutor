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
  // Expose supabase client for direct queries when needed
  supabase,

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
      }, {
        onConflict: 'user_id,topic_id'
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
    try {
      const { data, error } = await supabase
        .from('content_library')
        .select('*')
        .eq('topic_id', topicId)
        .eq('grade_level', gradeLevel)
        .eq('difficulty_level', Math.round(difficultyLevel))
        .eq('content_type', contentType)
        .single();

      // PGRST116 = no rows, 406 = table doesn't exist (migration not applied)
      if (error && error.code !== 'PGRST116') {
        // Log 406 errors but don't throw - table may not exist yet
        if (error.code === '42P01' || error.message?.includes('406')) {
          console.warn('content_library table may not exist yet');
          return null;
        }
        throw error;
      }
      return data;
    } catch (err: unknown) {
      // Handle network/fetch errors that result in 406
      if (err && typeof err === 'object' && 'code' in err && (err as { code: string }).code === '406') {
        console.warn('content_library table may not exist yet');
        return null;
      }
      throw err;
    }
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
   * Returns false if table doesn't exist or user is not an admin
   */
  async isAdmin(userId: string): Promise<boolean> {
    try {
      const { data, error } = await supabase
        .from('admin_users')
        .select('id')
        .eq('user_id', userId)
        .maybeSingle(); // Use maybeSingle to avoid error when no row found

      // Return false for any error (including 406 for missing table)
      if (error) return false;
      return !!data;
    } catch {
      return false;
    }
  },

  /**
   * Get the admin role for a user
   * Returns null if table doesn't exist or user is not an admin
   */
  async getAdminRole(userId: string): Promise<string | null> {
    try {
      const { data, error } = await supabase
        .from('admin_users')
        .select('role')
        .eq('user_id', userId)
        .maybeSingle(); // Use maybeSingle to avoid error when no row found

      if (error) return null;
      return data?.role || null;
    } catch {
      return null;
    }
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
  },

  // ============ PARENT-CHILD RELATIONSHIPS ============

  /**
   * Get all children for a parent using the RPC function
   */
  async getChildrenForParent(parentId: string) {
    const { data, error } = await supabase.rpc('get_children_for_parent', {
      p_parent_id: parentId
    });

    if (error) throw error;
    return data || [];
  },

  /**
   * Get parent-child relationships (raw table data)
   */
  async getParentChildRelationships(parentId: string) {
    const { data, error } = await supabase
      .from('parent_children')
      .select(`
        *,
        child:users!child_id(id, name, email, avatar, grade_level)
      `)
      .eq('parent_id', parentId)
      .eq('status', 'active');

    if (error) throw error;
    return data || [];
  },

  /**
   * Invite a child by email
   */
  async inviteChildByEmail(parentId: string, childEmail: string, relationship: string = 'parent') {
    const { data, error } = await supabase.rpc('invite_child_by_email', {
      p_parent_id: parentId,
      p_child_email: childEmail,
      p_relationship: relationship
    });

    if (error) throw error;
    return data;
  },

  /**
   * Accept a parent invitation (called by child)
   */
  async acceptParentInvitation(childId: string, linkId: string) {
    const { data, error } = await supabase.rpc('accept_parent_invitation', {
      p_child_id: childId,
      p_link_id: linkId
    });

    if (error) throw error;
    return data;
  },

  /**
   * Get pending invitations for a child
   */
  async getPendingInvitations(childId: string) {
    const { data, error } = await supabase
      .from('parent_children')
      .select(`
        *,
        parent:users!parent_id(id, name, email)
      `)
      .eq('child_id', childId)
      .eq('status', 'pending');

    if (error) throw error;
    return data || [];
  },

  /**
   * Update parent-child settings (time limits, notifications, etc.)
   */
  async updateParentChildSettings(
    parentId: string,
    childId: string,
    settings: {
      daily_time_limit?: number;
      notify_on_completion?: boolean;
      notify_on_low_score?: boolean;
      low_score_threshold?: number;
      weekly_summary_email?: boolean;
    }
  ) {
    const { data, error } = await supabase
      .from('parent_children')
      .update({ ...settings, updated_at: new Date().toISOString() })
      .eq('parent_id', parentId)
      .eq('child_id', childId)
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Revoke parent access to a child
   */
  async revokeParentAccess(parentId: string, childId: string) {
    const { error } = await supabase
      .from('parent_children')
      .update({ status: 'revoked', updated_at: new Date().toISOString() })
      .eq('parent_id', parentId)
      .eq('child_id', childId);

    if (error) throw error;
  },

  /**
   * Get child's study time for today
   */
  async getChildStudyTimeToday(childId: string) {
    const today = new Date();
    today.setHours(0, 0, 0, 0);

    const { data, error } = await supabase
      .from('session_logs')
      .select('duration')
      .eq('user_id', childId)
      .gte('created_at', today.toISOString());

    if (error) throw error;

    const totalMinutes = (data || []).reduce(
      (sum, log) => sum + (log.duration || 0),
      0
    ) / 60;

    return Math.round(totalMinutes);
  },

  /**
   * Get child's recent activity
   */
  async getChildRecentActivity(childId: string, limit: number = 10) {
    const { data, error } = await supabase
      .from('user_progress')
      .select(`
        *,
        topic:topics(id, name, subject_id)
      `)
      .eq('user_id', childId)
      .order('updated_at', { ascending: false })
      .limit(limit);

    if (error) throw error;
    return data || [];
  },

  // ============================================================================
  // SPACED REPETITION
  // ============================================================================

  /**
   * Get or create a review item for a user-topic pair
   */
  async getOrCreateReviewItem(userId: string, topicId: string) {
    // Try to get existing
    const { data: existing } = await supabase
      .from('review_items')
      .select('*')
      .eq('user_id', userId)
      .eq('topic_id', topicId)
      .single();

    if (existing) return existing;

    // Create new with tomorrow as first review date
    const tomorrow = new Date();
    tomorrow.setDate(tomorrow.getDate() + 1);
    tomorrow.setHours(9, 0, 0, 0);

    const { data, error } = await supabase
      .from('review_items')
      .insert({
        user_id: userId,
        topic_id: topicId,
        next_review_date: tomorrow.toISOString(),
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Get all due review items for a user
   */
  async getDueReviews(userId: string, limit: number = 10) {
    const now = new Date().toISOString();

    const { data, error } = await supabase
      .from('review_items')
      .select(`
        *,
        topic:topics(id, name, description, subject:subjects(id, name, icon, color))
      `)
      .eq('user_id', userId)
      .eq('status', 'active')
      .lte('next_review_date', now)
      .order('memory_strength', { ascending: true }) // Prioritize weakest memories
      .order('next_review_date', { ascending: true })
      .limit(limit);

    if (error) throw error;
    return data || [];
  },

  /**
   * Get upcoming reviews for the week
   */
  async getUpcomingReviews(userId: string, days: number = 7) {
    const now = new Date();
    const endDate = new Date();
    endDate.setDate(endDate.getDate() + days);

    const { data, error } = await supabase
      .from('review_items')
      .select(`
        *,
        topic:topics(id, name, subject:subjects(name, icon, color))
      `)
      .eq('user_id', userId)
      .eq('status', 'active')
      .gte('next_review_date', now.toISOString())
      .lte('next_review_date', endDate.toISOString())
      .order('next_review_date', { ascending: true });

    if (error) throw error;
    return data || [];
  },

  /**
   * Update review item after a review session
   */
  async updateReviewItem(
    reviewItemId: string,
    updates: {
      easeFactor: number;
      intervalDays: number;
      repetitionCount: number;
      memoryStrength: number;
      nextReviewDate: Date;
      totalReviews: number;
      correctReviews: number;
      consecutiveCorrect: number;
      consecutiveIncorrect: number;
      status?: 'active' | 'paused' | 'mastered';
    }
  ) {
    const { data, error } = await supabase
      .from('review_items')
      .update({
        ease_factor: updates.easeFactor,
        interval_days: updates.intervalDays,
        repetition_count: updates.repetitionCount,
        memory_strength: updates.memoryStrength,
        next_review_date: updates.nextReviewDate.toISOString(),
        total_reviews: updates.totalReviews,
        correct_reviews: updates.correctReviews,
        consecutive_correct: updates.consecutiveCorrect,
        consecutive_incorrect: updates.consecutiveIncorrect,
        status: updates.status,
        last_reviewed_at: new Date().toISOString(),
        updated_at: new Date().toISOString(),
      })
      .eq('id', reviewItemId)
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Record a review session
   */
  async createReviewSession(session: {
    userId: string;
    reviewItemId: string;
    topicId: string;
    qualityRating: number;
    questionsAttempted: number;
    questionsCorrect: number;
    timeSpentSeconds?: number;
    previousInterval: number;
    newInterval: number;
    previousEaseFactor: number;
    newEaseFactor: number;
    sessionType: 'scheduled' | 'manual' | 'forgotten';
    hintsUsed?: number;
  }) {
    const { data, error } = await supabase
      .from('review_sessions')
      .insert({
        user_id: session.userId,
        review_item_id: session.reviewItemId,
        topic_id: session.topicId,
        quality_rating: session.qualityRating,
        questions_attempted: session.questionsAttempted,
        questions_correct: session.questionsCorrect,
        time_spent_seconds: session.timeSpentSeconds,
        previous_interval: session.previousInterval,
        new_interval: session.newInterval,
        previous_ease_factor: session.previousEaseFactor,
        new_ease_factor: session.newEaseFactor,
        session_type: session.sessionType,
        hints_used: session.hintsUsed || 0,
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Get review statistics for a user
   */
  async getReviewStats(userId: string) {
    const now = new Date().toISOString();
    const weekFromNow = new Date(Date.now() + 7 * 24 * 60 * 60 * 1000).toISOString();

    const [dueCount, upcomingWeek, totalItems, masteredCount] = await Promise.all([
      // Due reviews count
      supabase
        .from('review_items')
        .select('id', { count: 'exact', head: true })
        .eq('user_id', userId)
        .eq('status', 'active')
        .lte('next_review_date', now),

      // Upcoming this week
      supabase
        .from('review_items')
        .select('id', { count: 'exact', head: true })
        .eq('user_id', userId)
        .eq('status', 'active')
        .gte('next_review_date', now)
        .lte('next_review_date', weekFromNow),

      // Total active items
      supabase
        .from('review_items')
        .select('id', { count: 'exact', head: true })
        .eq('user_id', userId)
        .eq('status', 'active'),

      // Mastered count
      supabase
        .from('review_items')
        .select('id', { count: 'exact', head: true })
        .eq('user_id', userId)
        .eq('status', 'mastered'),
    ]);

    return {
      dueNow: dueCount.count || 0,
      dueThisWeek: upcomingWeek.count || 0,
      totalActive: totalItems.count || 0,
      mastered: masteredCount.count || 0,
    };
  },

  /**
   * Update concept strength after practice
   */
  async updateConceptStrength(
    userId: string,
    topicId: string,
    conceptName: string,
    isCorrect: boolean
  ) {
    // Try to get existing
    const { data: existing } = await supabase
      .from('concept_strength')
      .select('*')
      .eq('user_id', userId)
      .eq('topic_id', topicId)
      .eq('concept_name', conceptName)
      .single();

    if (existing) {
      const newPracticeCount = existing.practice_count + 1;
      const newCorrectCount = existing.correct_count + (isCorrect ? 1 : 0);
      const newStrength = Math.min(
        1.0,
        (newCorrectCount / newPracticeCount) * 0.7 + existing.strength * 0.3
      );
      const isWeak = newStrength < 0.6;

      return await supabase
        .from('concept_strength')
        .update({
          strength: newStrength,
          practice_count: newPracticeCount,
          correct_count: newCorrectCount,
          is_weak: isWeak,
          last_practiced_at: new Date().toISOString(),
          updated_at: new Date().toISOString(),
        })
        .eq('id', existing.id);
    } else {
      const initialStrength = isCorrect ? 0.8 : 0.4;
      return await supabase.from('concept_strength').insert({
        user_id: userId,
        topic_id: topicId,
        concept_name: conceptName,
        strength: initialStrength,
        practice_count: 1,
        correct_count: isCorrect ? 1 : 0,
        is_weak: initialStrength < 0.6,
        last_practiced_at: new Date().toISOString(),
      });
    }
  },

  /**
   * Get weak concepts for a user (for focused review)
   */
  async getWeakConcepts(userId: string, limit: number = 10) {
    const { data, error } = await supabase
      .from('concept_strength')
      .select(`
        *,
        topic:topics(id, name, subject:subjects(name, icon))
      `)
      .eq('user_id', userId)
      .eq('is_weak', true)
      .order('strength', { ascending: true })
      .limit(limit);

    if (error) throw error;
    return data || [];
  },

  // ============================================================================
  // ANALYTICS
  // ============================================================================

  /**
   * Get daily stats for a user
   */
  async getDailyStats(userId: string, days: number = 30) {
    const startDate = new Date();
    startDate.setDate(startDate.getDate() - days);

    const { data, error } = await supabase
      .from('analytics_daily_stats')
      .select('*')
      .eq('user_id', userId)
      .gte('date', startDate.toISOString().split('T')[0])
      .order('date', { ascending: true });

    if (error) throw error;
    return data || [];
  },

  /**
   * Upsert daily stats
   */
  async upsertDailyStats(
    userId: string,
    date: string,
    updates: Partial<{
      totalTimeSeconds: number;
      topicsAttempted: number;
      topicsCompleted: number;
      questionsAttempted: number;
      questionsCorrect: number;
      xpEarned: number;
      streakMaintained: boolean;
      reviewsCompleted: number;
    }>
  ) {
    const { data, error } = await supabase
      .from('analytics_daily_stats')
      .upsert(
        {
          user_id: userId,
          date,
          total_time_seconds: updates.totalTimeSeconds,
          topics_attempted: updates.topicsAttempted,
          topics_completed: updates.topicsCompleted,
          questions_attempted: updates.questionsAttempted,
          questions_correct: updates.questionsCorrect,
          xp_earned: updates.xpEarned,
          streak_maintained: updates.streakMaintained,
          reviews_completed: updates.reviewsCompleted,
        },
        { onConflict: 'user_id,date' }
      )
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Get alerts for a user
   */
  async getAlerts(userId: string, unreadOnly: boolean = false) {
    let query = supabase
      .from('analytics_alerts')
      .select('*')
      .eq('user_id', userId)
      .eq('is_dismissed', false)
      .order('created_at', { ascending: false })
      .limit(20);

    if (unreadOnly) {
      query = query.eq('is_read', false);
    }

    const { data, error } = await query;
    if (error) throw error;
    return data || [];
  },

  /**
   * Mark alert as read
   */
  async markAlertRead(alertId: string) {
    const { error } = await supabase
      .from('analytics_alerts')
      .update({ is_read: true, read_at: new Date().toISOString() })
      .eq('id', alertId);

    if (error) throw error;
  },

  /**
   * Dismiss alert
   */
  async dismissAlert(alertId: string) {
    const { error } = await supabase
      .from('analytics_alerts')
      .update({ is_dismissed: true })
      .eq('id', alertId);

    if (error) throw error;
  },

  /**
   * Create an alert
   */
  async createAlert(alert: {
    userId: string;
    alertType: 'struggling' | 'inactive' | 'goal_missed' | 'achievement' | 'ready_to_advance';
    severity: 'info' | 'warning' | 'critical';
    message: string;
    topicId?: string;
    subjectId?: string;
    actionUrl?: string;
  }) {
    const { data, error } = await supabase
      .from('analytics_alerts')
      .insert({
        user_id: alert.userId,
        alert_type: alert.alertType,
        severity: alert.severity,
        message: alert.message,
        topic_id: alert.topicId,
        subject_id: alert.subjectId,
        action_url: alert.actionUrl,
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  }
};
