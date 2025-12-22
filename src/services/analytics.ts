/**
 * Analytics Service
 * Provides learning analytics, insights, and reporting
 */

import { db } from './supabase';

// ============================================================================
// Types
// ============================================================================

export interface DailyStats {
  date: string;
  totalTimeSeconds: number;
  topicsAttempted: number;
  topicsCompleted: number;
  questionsAttempted: number;
  questionsCorrect: number;
  xpEarned: number;
  streakMaintained: boolean;
  reviewsCompleted: number;
}

export interface LearningVelocity {
  topicsPerWeek: number;
  averageQuizScore: number;
  averageTimePerTopic: number; // minutes
  trend: 'improving' | 'stable' | 'declining';
  percentileRank?: number; // vs grade level
}

export interface SubjectMastery {
  subjectId: string;
  subjectName: string;
  subjectIcon: string;
  subjectColor: string;
  topicsCompleted: number;
  totalTopics: number;
  averageScore: number;
  strongConcepts: string[];
  weakConcepts: string[];
  masteryLevel: 'beginner' | 'developing' | 'proficient' | 'advanced' | 'expert';
}

export interface LearningInsight {
  id: string;
  type: 'achievement' | 'recommendation' | 'warning' | 'celebration';
  title: string;
  message: string;
  actionUrl?: string;
  actionLabel?: string;
  createdAt: Date;
}

export interface AnalyticsSummary {
  // Time stats
  totalTimeToday: number;
  totalTimeThisWeek: number;
  totalTimeAllTime: number;
  averageSessionLength: number;

  // Progress stats
  topicsCompletedToday: number;
  topicsCompletedThisWeek: number;
  topicsCompletedAllTime: number;

  // Performance stats
  questionsAnsweredToday: number;
  accuracyToday: number;
  accuracyThisWeek: number;
  accuracyAllTime: number;

  // Streaks and XP
  currentStreak: number;
  longestStreak: number;
  totalXP: number;
  currentLevel: number;

  // Reviews
  reviewsDueToday: number;
  reviewsCompletedToday: number;
}

// ============================================================================
// Analytics Functions
// ============================================================================

/**
 * Get analytics summary for a user
 */
export async function getAnalyticsSummary(userId: string): Promise<AnalyticsSummary> {
  const [dailyStats, reviewStats] = await Promise.all([
    db.getDailyStats(userId, 365), // Get up to a year of data
    db.getReviewStats(userId),
  ]);

  const today = new Date().toISOString().split('T')[0];
  const weekAgo = new Date(Date.now() - 7 * 24 * 60 * 60 * 1000).toISOString().split('T')[0];

  const todayStats = dailyStats.find((s) => s.date === today);
  const weekStats = dailyStats.filter((s) => s.date >= weekAgo);

  // Calculate totals
  const totalTimeAllTime = dailyStats.reduce((sum, s) => sum + (s.total_time_seconds || 0), 0);
  const totalTimeThisWeek = weekStats.reduce((sum, s) => sum + (s.total_time_seconds || 0), 0);
  const topicsCompletedAllTime = dailyStats.reduce((sum, s) => sum + (s.topics_completed || 0), 0);
  const topicsCompletedThisWeek = weekStats.reduce((sum, s) => sum + (s.topics_completed || 0), 0);

  // Calculate accuracy
  const allQuestions = dailyStats.reduce((sum, s) => sum + (s.questions_attempted || 0), 0);
  const allCorrect = dailyStats.reduce((sum, s) => sum + (s.questions_correct || 0), 0);
  const weekQuestions = weekStats.reduce((sum, s) => sum + (s.questions_attempted || 0), 0);
  const weekCorrect = weekStats.reduce((sum, s) => sum + (s.questions_correct || 0), 0);

  return {
    totalTimeToday: todayStats?.total_time_seconds || 0,
    totalTimeThisWeek,
    totalTimeAllTime,
    averageSessionLength: dailyStats.length > 0 ? Math.round(totalTimeAllTime / dailyStats.length / 60) : 0,

    topicsCompletedToday: todayStats?.topics_completed || 0,
    topicsCompletedThisWeek,
    topicsCompletedAllTime,

    questionsAnsweredToday: todayStats?.questions_attempted || 0,
    accuracyToday: todayStats?.questions_attempted
      ? Math.round((todayStats.questions_correct / todayStats.questions_attempted) * 100)
      : 0,
    accuracyThisWeek: weekQuestions > 0 ? Math.round((weekCorrect / weekQuestions) * 100) : 0,
    accuracyAllTime: allQuestions > 0 ? Math.round((allCorrect / allQuestions) * 100) : 0,

    currentStreak: 0, // TODO: Get from gamification context
    longestStreak: 0,
    totalXP: 0,
    currentLevel: 1,

    reviewsDueToday: reviewStats.dueNow,
    reviewsCompletedToday: todayStats?.reviews_completed || 0,
  };
}

/**
 * Calculate learning velocity and trend
 */
export async function getLearningVelocity(userId: string): Promise<LearningVelocity> {
  const dailyStats = await db.getDailyStats(userId, 30);

  if (dailyStats.length < 7) {
    return {
      topicsPerWeek: 0,
      averageQuizScore: 0,
      averageTimePerTopic: 0,
      trend: 'stable',
    };
  }

  const now = new Date();
  const twoWeeksAgo = new Date(now.getTime() - 14 * 24 * 60 * 60 * 1000).toISOString().split('T')[0];
  const oneWeekAgo = new Date(now.getTime() - 7 * 24 * 60 * 60 * 1000).toISOString().split('T')[0];

  const lastWeek = dailyStats.filter((s) => s.date >= oneWeekAgo);
  const prevWeek = dailyStats.filter((s) => s.date >= twoWeeksAgo && s.date < oneWeekAgo);

  const topicsLastWeek = lastWeek.reduce((sum, s) => sum + (s.topics_completed || 0), 0);
  const topicsPrevWeek = prevWeek.reduce((sum, s) => sum + (s.topics_completed || 0), 0);

  const questionsLastWeek = lastWeek.reduce((sum, s) => sum + (s.questions_attempted || 0), 0);
  const correctLastWeek = lastWeek.reduce((sum, s) => sum + (s.questions_correct || 0), 0);
  const avgScore = questionsLastWeek > 0 ? Math.round((correctLastWeek / questionsLastWeek) * 100) : 0;

  const timeLastWeek = lastWeek.reduce((sum, s) => sum + (s.total_time_seconds || 0), 0);
  const avgTimePerTopic = topicsLastWeek > 0 ? Math.round(timeLastWeek / topicsLastWeek / 60) : 0;

  // Determine trend
  let trend: 'improving' | 'stable' | 'declining' = 'stable';
  if (topicsLastWeek > topicsPrevWeek * 1.2) {
    trend = 'improving';
  } else if (topicsLastWeek < topicsPrevWeek * 0.8) {
    trend = 'declining';
  }

  return {
    topicsPerWeek: topicsLastWeek,
    averageQuizScore: avgScore,
    averageTimePerTopic: avgTimePerTopic,
    trend,
  };
}

/**
 * Get mastery level for each subject
 */
export async function getSubjectMastery(
  _userId: string, // Reserved for future concept_strength queries
  subjects: Array<{ id: string; name: string; icon: string; color: string }>,
  progress: Array<{ subject_id: string; status: string; assessment_score?: number }>
): Promise<SubjectMastery[]> {
  return subjects.map((subject) => {
    const subjectProgress = progress.filter((p) => p.subject_id === subject.id);
    const completed = subjectProgress.filter((p) => p.status === 'completed');
    const scores = completed.map((p) => p.assessment_score || 0).filter((s) => s > 0);
    const avgScore = scores.length > 0 ? Math.round(scores.reduce((a, b) => a + b, 0) / scores.length) : 0;

    // Calculate mastery level
    let masteryLevel: SubjectMastery['masteryLevel'] = 'beginner';
    const completionRate = subjectProgress.length > 0 ? completed.length / subjectProgress.length : 0;
    if (completionRate >= 0.8 && avgScore >= 90) {
      masteryLevel = 'expert';
    } else if (completionRate >= 0.6 && avgScore >= 80) {
      masteryLevel = 'advanced';
    } else if (completionRate >= 0.4 && avgScore >= 70) {
      masteryLevel = 'proficient';
    } else if (completionRate >= 0.2) {
      masteryLevel = 'developing';
    }

    return {
      subjectId: subject.id,
      subjectName: subject.name,
      subjectIcon: subject.icon,
      subjectColor: subject.color,
      topicsCompleted: completed.length,
      totalTopics: subjectProgress.length,
      averageScore: avgScore,
      strongConcepts: [], // TODO: Analyze from concept_strength table
      weakConcepts: [],
      masteryLevel,
    };
  });
}

/**
 * Generate learning insights based on analytics data
 */
export function generateInsights(
  summary: AnalyticsSummary,
  velocity: LearningVelocity
): LearningInsight[] {
  const insights: LearningInsight[] = [];
  const now = new Date();

  // Achievement insights
  if (summary.currentStreak >= 7) {
    insights.push({
      id: `streak-${summary.currentStreak}`,
      type: 'celebration',
      title: 'Streak Champion!',
      message: `You're on a ${summary.currentStreak}-day learning streak! Keep it going!`,
      createdAt: now,
    });
  }

  // Performance insights
  if (velocity.trend === 'improving') {
    insights.push({
      id: 'improving-trend',
      type: 'achievement',
      title: 'You\'re on Fire!',
      message: 'Your learning pace has increased this week. Great progress!',
      createdAt: now,
    });
  } else if (velocity.trend === 'declining') {
    insights.push({
      id: 'declining-trend',
      type: 'recommendation',
      title: 'Time for a Boost?',
      message: 'Your learning pace has slowed down. Try setting a small daily goal!',
      actionUrl: '/settings',
      actionLabel: 'Set Goals',
      createdAt: now,
    });
  }

  // Review insights
  if (summary.reviewsDueToday > 0) {
    insights.push({
      id: 'reviews-due',
      type: 'recommendation',
      title: 'Reviews Ready',
      message: `You have ${summary.reviewsDueToday} topic${summary.reviewsDueToday > 1 ? 's' : ''} ready for review. Keep your memory strong!`,
      actionUrl: '/review',
      actionLabel: 'Start Review',
      createdAt: now,
    });
  }

  // Accuracy insights
  if (summary.accuracyThisWeek >= 90) {
    insights.push({
      id: 'high-accuracy',
      type: 'achievement',
      title: 'Accuracy Star!',
      message: `${summary.accuracyThisWeek}% accuracy this week - you really know your stuff!`,
      createdAt: now,
    });
  } else if (summary.accuracyThisWeek < 60 && summary.questionsAnsweredToday > 10) {
    insights.push({
      id: 'low-accuracy',
      type: 'warning',
      title: 'Practice Makes Perfect',
      message: 'Consider reviewing topics where you\'re struggling before moving on.',
      actionUrl: '/review',
      actionLabel: 'Review Topics',
      createdAt: now,
    });
  }

  return insights;
}

/**
 * Update daily stats after a learning session
 */
export async function updateDailyStats(
  userId: string,
  updates: Partial<{
    timeSpentSeconds: number;
    topicsAttempted: number;
    topicsCompleted: number;
    questionsAttempted: number;
    questionsCorrect: number;
    xpEarned: number;
    reviewsCompleted: number;
  }>
): Promise<void> {
  const today = new Date().toISOString().split('T')[0];
  const existingStats = await db.getDailyStats(userId, 1);
  const todayStats = existingStats.find((s) => s.date === today);

  await db.upsertDailyStats(userId, today, {
    totalTimeSeconds: (todayStats?.total_time_seconds || 0) + (updates.timeSpentSeconds || 0),
    topicsAttempted: (todayStats?.topics_attempted || 0) + (updates.topicsAttempted || 0),
    topicsCompleted: (todayStats?.topics_completed || 0) + (updates.topicsCompleted || 0),
    questionsAttempted: (todayStats?.questions_attempted || 0) + (updates.questionsAttempted || 0),
    questionsCorrect: (todayStats?.questions_correct || 0) + (updates.questionsCorrect || 0),
    xpEarned: (todayStats?.xp_earned || 0) + (updates.xpEarned || 0),
    streakMaintained: true,
    reviewsCompleted: (todayStats?.reviews_completed || 0) + (updates.reviewsCompleted || 0),
  });
}

/**
 * Get formatted time string
 */
export function formatStudyTime(seconds: number): string {
  if (seconds < 60) return `${seconds}s`;
  const minutes = Math.floor(seconds / 60);
  if (minutes < 60) return `${minutes}m`;
  const hours = Math.floor(minutes / 60);
  const remainingMinutes = minutes % 60;
  return remainingMinutes > 0 ? `${hours}h ${remainingMinutes}m` : `${hours}h`;
}

/**
 * Get mastery level color
 */
export function getMasteryColor(level: SubjectMastery['masteryLevel']): string {
  switch (level) {
    case 'expert':
      return 'text-purple-600';
    case 'advanced':
      return 'text-blue-600';
    case 'proficient':
      return 'text-green-600';
    case 'developing':
      return 'text-yellow-600';
    case 'beginner':
    default:
      return 'text-gray-600';
  }
}

/**
 * Get trend icon and color
 */
export function getTrendIndicator(trend: LearningVelocity['trend']): {
  icon: 'up' | 'down' | 'stable';
  color: string;
  label: string;
} {
  switch (trend) {
    case 'improving':
      return { icon: 'up', color: 'text-green-600', label: 'Improving' };
    case 'declining':
      return { icon: 'down', color: 'text-red-600', label: 'Needs Attention' };
    case 'stable':
    default:
      return { icon: 'stable', color: 'text-blue-600', label: 'Steady' };
  }
}
