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
      .select('*, subject:subjects(*)')
      .eq('id', topicId)
      .single();

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
  }
};
