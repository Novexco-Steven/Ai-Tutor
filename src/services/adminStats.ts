import { supabase } from './supabase';
import { stripeService } from './stripe';

export interface AdminStats {
  totalUsers: number;
  activeUsers: number;
  newUsersToday: number;
  totalSessions: number;
  totalQuestionsAnswered: number;
  totalTimeSpentMinutes: number;
  topicsCompleted: number;
  avgSessionDuration: number;
}

export interface UserGrowthData {
  date: string;
  users: number;
}

export interface SubjectCompletionData {
  subject: string;
  completed: number;
  color: string;
}

export interface GradeDistributionData {
  grade: string;
  count: number;
}

export interface ActivityItem {
  id: string;
  type: 'session' | 'signup' | 'completion' | 'subscription';
  userId: string;
  userName: string;
  userEmail: string;
  description: string;
  metadata?: Record<string, unknown>;
  createdAt: string;
}

export interface UserWithStats {
  id: string;
  email: string;
  name: string;
  grade_level: number;
  created_at: string;
  subscription_tier: string;
  isAdmin: boolean;
  lastActive: string | null;
  sessionsCount: number;
  topicsCompleted: number;
}

export const adminStats = {
  /**
   * Get total user count
   */
  async getTotalUsers(): Promise<number> {
    const { count, error } = await supabase
      .from('users')
      .select('*', { count: 'exact', head: true });

    if (error) throw error;
    return count || 0;
  },

  /**
   * Get active users in the last N days
   */
  async getActiveUsers(days: number = 7): Promise<number> {
    const since = new Date();
    since.setDate(since.getDate() - days);

    const { data, error } = await supabase
      .from('session_logs')
      .select('user_id')
      .gte('started_at', since.toISOString());

    if (error) throw error;

    // Count unique users
    const uniqueUsers = new Set(data?.map(s => s.user_id) || []);
    return uniqueUsers.size;
  },

  /**
   * Get new users registered today
   */
  async getNewUsersToday(): Promise<number> {
    const today = new Date();
    today.setHours(0, 0, 0, 0);

    const { count, error } = await supabase
      .from('users')
      .select('*', { count: 'exact', head: true })
      .gte('created_at', today.toISOString());

    if (error) throw error;
    return count || 0;
  },

  /**
   * Get total session count
   */
  async getTotalSessions(): Promise<number> {
    const { count, error } = await supabase
      .from('session_logs')
      .select('*', { count: 'exact', head: true });

    if (error) throw error;
    return count || 0;
  },

  /**
   * Get total questions answered
   */
  async getTotalQuestionsAnswered(): Promise<number> {
    const { count, error } = await supabase
      .from('question_responses')
      .select('*', { count: 'exact', head: true });

    if (error) throw error;
    return count || 0;
  },

  /**
   * Get total time spent learning (in minutes)
   */
  async getTotalTimeSpent(): Promise<number> {
    const { data, error } = await supabase
      .from('session_logs')
      .select('time_spent');

    if (error) throw error;

    const totalSeconds = data?.reduce((sum, s) => sum + (s.time_spent || 0), 0) || 0;
    return Math.round(totalSeconds / 60);
  },

  /**
   * Get count of completed topics
   */
  async getTopicsCompleted(): Promise<number> {
    const { count, error } = await supabase
      .from('user_progress')
      .select('*', { count: 'exact', head: true })
      .eq('status', 'completed');

    if (error) throw error;
    return count || 0;
  },

  /**
   * Get average session duration in minutes
   */
  async getAvgSessionDuration(): Promise<number> {
    const { data, error } = await supabase
      .from('session_logs')
      .select('time_spent')
      .not('time_spent', 'is', null);

    if (error) throw error;

    if (!data || data.length === 0) return 0;

    const totalSeconds = data.reduce((sum, s) => sum + (s.time_spent || 0), 0);
    return Math.round(totalSeconds / data.length / 60);
  },

  /**
   * Get all admin stats at once
   */
  async getAllStats(): Promise<AdminStats> {
    const [
      totalUsers,
      activeUsers,
      newUsersToday,
      totalSessions,
      totalQuestionsAnswered,
      totalTimeSpentMinutes,
      topicsCompleted,
      avgSessionDuration
    ] = await Promise.all([
      this.getTotalUsers(),
      this.getActiveUsers(7),
      this.getNewUsersToday(),
      this.getTotalSessions(),
      this.getTotalQuestionsAnswered(),
      this.getTotalTimeSpent(),
      this.getTopicsCompleted(),
      this.getAvgSessionDuration()
    ]);

    return {
      totalUsers,
      activeUsers,
      newUsersToday,
      totalSessions,
      totalQuestionsAnswered,
      totalTimeSpentMinutes,
      topicsCompleted,
      avgSessionDuration
    };
  },

  /**
   * Get user growth data for the last N days
   */
  async getUserGrowth(days: number = 30): Promise<UserGrowthData[]> {
    const since = new Date();
    since.setDate(since.getDate() - days);

    const { data, error } = await supabase
      .from('users')
      .select('created_at')
      .gte('created_at', since.toISOString())
      .order('created_at', { ascending: true });

    if (error) throw error;

    // Group by date
    const dailyCounts: Record<string, number> = {};

    // Initialize all days with 0
    for (let i = 0; i < days; i++) {
      const date = new Date();
      date.setDate(date.getDate() - (days - 1 - i));
      const dateStr = date.toISOString().split('T')[0];
      dailyCounts[dateStr] = 0;
    }

    // Count users per day
    data?.forEach(user => {
      const dateStr = user.created_at.split('T')[0];
      if (dailyCounts[dateStr] !== undefined) {
        dailyCounts[dateStr]++;
      }
    });

    return Object.entries(dailyCounts).map(([date, users]) => ({
      date,
      users
    }));
  },

  /**
   * Get subject completion breakdown
   */
  async getSubjectCompletion(): Promise<SubjectCompletionData[]> {
    const { data: subjects, error: subjectsError } = await supabase
      .from('subjects')
      .select('id, name, color');

    if (subjectsError) throw subjectsError;

    const { data: progress, error: progressError } = await supabase
      .from('user_progress')
      .select('subject_id')
      .eq('status', 'completed');

    if (progressError) throw progressError;

    // Count completions per subject
    const completionCounts: Record<string, number> = {};
    progress?.forEach(p => {
      completionCounts[p.subject_id] = (completionCounts[p.subject_id] || 0) + 1;
    });

    return subjects?.map(s => ({
      subject: s.name,
      completed: completionCounts[s.id] || 0,
      color: s.color
    })) || [];
  },

  /**
   * Get grade level distribution
   */
  async getGradeDistribution(): Promise<GradeDistributionData[]> {
    const { data, error } = await supabase
      .from('users')
      .select('grade_level');

    if (error) throw error;

    const gradeCounts: Record<number, number> = {};
    data?.forEach(u => {
      if (u.grade_level) {
        gradeCounts[u.grade_level] = (gradeCounts[u.grade_level] || 0) + 1;
      }
    });

    return Object.entries(gradeCounts)
      .map(([grade, count]) => ({
        grade: `Grade ${grade}`,
        count
      }))
      .sort((a, b) => parseInt(a.grade.split(' ')[1]) - parseInt(b.grade.split(' ')[1]));
  },

  /**
   * Get recent activity
   */
  async getRecentActivity(limit: number = 20): Promise<ActivityItem[]> {
    const activities: ActivityItem[] = [];

    // Get recent sessions
    const { data: sessions } = await supabase
      .from('session_logs')
      .select(`
        id,
        user_id,
        started_at,
        ended_at,
        questions_attempted,
        questions_correct,
        topic:topics(name),
        user:users(name, email)
      `)
      .order('started_at', { ascending: false })
      .limit(limit);

    sessions?.forEach(s => {
      const userData = s.user as unknown as { name: string; email: string } | { name: string; email: string }[] | null;
      const topicData = s.topic as unknown as { name: string } | { name: string }[] | null;
      const user = Array.isArray(userData) ? userData[0] : userData;
      const topic = Array.isArray(topicData) ? topicData[0] : topicData;

      activities.push({
        id: s.id,
        type: s.ended_at ? 'completion' : 'session',
        userId: s.user_id,
        userName: user?.name || 'Unknown',
        userEmail: user?.email || '',
        description: s.ended_at
          ? `Completed ${topic?.name || 'a lesson'} (${s.questions_correct || 0}/${s.questions_attempted || 0} correct)`
          : `Started ${topic?.name || 'a lesson'}`,
        metadata: {
          questionsAttempted: s.questions_attempted,
          questionsCorrect: s.questions_correct
        },
        createdAt: s.started_at
      });
    });

    // Get recent signups
    const { data: newUsers } = await supabase
      .from('users')
      .select('id, name, email, created_at')
      .order('created_at', { ascending: false })
      .limit(limit);

    newUsers?.forEach(u => {
      activities.push({
        id: `signup-${u.id}`,
        type: 'signup',
        userId: u.id,
        userName: u.name || 'New User',
        userEmail: u.email,
        description: 'Created an account',
        createdAt: u.created_at
      });
    });

    // Sort by date and limit
    return activities
      .sort((a, b) => new Date(b.createdAt).getTime() - new Date(a.createdAt).getTime())
      .slice(0, limit);
  },

  /**
   * Get all users with stats
   */
  async getAllUsers(): Promise<UserWithStats[]> {
    const { data: users, error: usersError } = await supabase
      .from('users')
      .select('id, email, name, grade_level, created_at, subscription_tier')
      .order('created_at', { ascending: false });

    if (usersError) throw usersError;

    // Get admin users
    const { data: admins } = await supabase
      .from('admin_users')
      .select('user_id');

    const adminIds = new Set(admins?.map(a => a.user_id) || []);

    // Get session counts and last active
    const { data: sessions } = await supabase
      .from('session_logs')
      .select('user_id, started_at');

    const sessionStats: Record<string, { count: number; lastActive: string }> = {};
    sessions?.forEach(s => {
      if (!sessionStats[s.user_id]) {
        sessionStats[s.user_id] = { count: 0, lastActive: s.started_at };
      }
      sessionStats[s.user_id].count++;
      if (new Date(s.started_at) > new Date(sessionStats[s.user_id].lastActive)) {
        sessionStats[s.user_id].lastActive = s.started_at;
      }
    });

    // Get completed topics count
    const { data: progress } = await supabase
      .from('user_progress')
      .select('user_id')
      .eq('status', 'completed');

    const completedCounts: Record<string, number> = {};
    progress?.forEach(p => {
      completedCounts[p.user_id] = (completedCounts[p.user_id] || 0) + 1;
    });

    return users?.map(u => ({
      id: u.id,
      email: u.email,
      name: u.name || 'Unknown',
      grade_level: u.grade_level || 0,
      created_at: u.created_at,
      subscription_tier: u.subscription_tier || 'free',
      isAdmin: adminIds.has(u.id),
      lastActive: sessionStats[u.id]?.lastActive || null,
      sessionsCount: sessionStats[u.id]?.count || 0,
      topicsCompleted: completedCounts[u.id] || 0
    })) || [];
  },

  /**
   * Get a single user's detailed stats
   */
  async getUserDetails(userId: string) {
    const { data: user, error: userError } = await supabase
      .from('users')
      .select('*')
      .eq('id', userId)
      .single();

    if (userError) throw userError;

    // Check if admin
    const { data: adminData } = await supabase
      .from('admin_users')
      .select('role')
      .eq('user_id', userId)
      .single();

    // Get session history
    const { data: sessions } = await supabase
      .from('session_logs')
      .select(`
        id,
        started_at,
        ended_at,
        time_spent,
        questions_attempted,
        questions_correct,
        topic:topics(name, subject:subjects(name))
      `)
      .eq('user_id', userId)
      .order('started_at', { ascending: false })
      .limit(50);

    // Get progress
    const { data: progress } = await supabase
      .from('user_progress')
      .select(`
        status,
        assessment_score,
        topic:topics(name, subject:subjects(name, color))
      `)
      .eq('user_id', userId);

    // Get subscription
    const { data: subscription } = await supabase
      .from('subscriptions')
      .select('*')
      .eq('user_id', userId)
      .single();

    return {
      ...user,
      isAdmin: !!adminData,
      adminRole: adminData?.role || null,
      sessions: sessions || [],
      progress: progress || [],
      subscription
    };
  },

  /**
   * Make a user an admin
   */
  async makeUserAdmin(userId: string, role: 'admin' | 'super_admin' = 'admin', grantedBy: string) {
    const { data, error } = await supabase
      .from('admin_users')
      .insert({
        user_id: userId,
        role,
        granted_by: grantedBy
      })
      .select()
      .single();

    if (error) throw error;
    return data;
  },

  /**
   * Remove admin role from a user
   */
  async removeUserAdmin(userId: string) {
    const { error } = await supabase
      .from('admin_users')
      .delete()
      .eq('user_id', userId);

    if (error) throw error;
  },

  /**
   * Update user's subscription tier
   */
  async updateUserSubscription(userId: string, tier: 'free' | 'pro' | 'team') {
    const { error } = await supabase
      .from('users')
      .update({ subscription_tier: tier })
      .eq('id', userId);

    if (error) throw error;
  },

  /**
   * Get billing overview stats
   */
  async getBillingOverview() {
    try {
      const [stats, mrr] = await Promise.all([
        stripeService.getSubscriptionStats(),
        stripeService.getMRR()
      ]);

      return {
        mrr,
        ...stats
      };
    } catch {
      // Return default values if Stripe is not configured
      return {
        mrr: 0,
        total: 0,
        active: 0,
        trialing: 0,
        canceled: 0,
        pastDue: 0,
        byPlan: { free: 0, pro: 0, team: 0 }
      };
    }
  },

  /**
   * Get daily engagement stats for charts
   */
  async getDailyEngagement(days: number = 30) {
    const since = new Date();
    since.setDate(since.getDate() - days);

    const { data, error } = await supabase
      .from('analytics_daily_stats')
      .select('date, total_time_seconds, questions_attempted, topics_completed')
      .gte('date', since.toISOString().split('T')[0])
      .order('date', { ascending: true });

    if (error) throw error;

    // Aggregate across all users per day
    const dailyStats: Record<string, { timeMinutes: number; questions: number; topics: number }> = {};

    data?.forEach(d => {
      if (!dailyStats[d.date]) {
        dailyStats[d.date] = { timeMinutes: 0, questions: 0, topics: 0 };
      }
      dailyStats[d.date].timeMinutes += Math.round((d.total_time_seconds || 0) / 60);
      dailyStats[d.date].questions += d.questions_attempted || 0;
      dailyStats[d.date].topics += d.topics_completed || 0;
    });

    return Object.entries(dailyStats).map(([date, stats]) => ({
      date,
      ...stats
    }));
  }
};
