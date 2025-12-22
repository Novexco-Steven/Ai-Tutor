import { createContext, useContext, useEffect, useState, ReactNode, useCallback } from 'react';
import { useUser } from './UserContext';
import { useGamification } from './GamificationContext';
import { db } from '@/services/supabase';
import { scheduleReviewReminder, cancelNotificationsByType, getNotificationPermission } from '@/services/pushNotifications';
import { storage } from '@/utils/helpers';
import {
  calculateQualityRating,
  calculateSM2,
  calculateMemoryStrength,
  calculateStability,
  calculateInitialStrength,
  shouldMarkAsMastered,
  getMemoryStrengthLabel,
  getMemoryStrengthColor,
  calculateReviewUrgency,
  getRecommendedReviewCount,
  type QualityRating,
  type ReviewItemState,
} from '@/services/spacedRepetition';
import type { Topic, Subject } from '@/types';

// ============================================================================
// Types
// ============================================================================

export interface ReviewItem {
  id: string;
  userId: string;
  topicId: string;
  topic?: Topic & { subject?: Subject };
  easeFactor: number;
  intervalDays: number;
  repetitionCount: number;
  memoryStrength: number;
  nextReviewDate: Date;
  lastReviewedAt?: Date;
  totalReviews: number;
  correctReviews: number;
  consecutiveCorrect: number;
  consecutiveIncorrect: number;
  status: 'active' | 'paused' | 'mastered';
  createdAt: Date;
}

export interface ReviewStats {
  dueNow: number;
  dueThisWeek: number;
  totalActive: number;
  mastered: number;
  averageStrength?: number;
}

export interface ReviewSessionResult {
  qualityRating: QualityRating;
  questionsAttempted: number;
  questionsCorrect: number;
  hintsUsed: number;
  timeSpentSeconds?: number;
}

// ============================================================================
// XP Values for Reviews
// ============================================================================

const REVIEW_XP = {
  review_complete: 15,
  review_perfect: 30,
  mastery_achieved: 100,
  streak_maintained: 5, // bonus per consecutive correct
};

// ============================================================================
// Context Type
// ============================================================================

interface SpacedRepetitionContextType {
  // State
  dueReviews: ReviewItem[];
  upcomingReviews: ReviewItem[];
  stats: ReviewStats;
  loading: boolean;
  error: string | null;

  // Actions
  refreshData: () => Promise<void>;
  initializeTopicForReview: (topicId: string, initialScore: number, questionCount: number, hintsUsed: number) => Promise<void>;
  recordReviewComplete: (reviewItemId: string, result: ReviewSessionResult) => Promise<void>;
  pauseReview: (reviewItemId: string) => Promise<void>;
  resumeReview: (reviewItemId: string) => Promise<void>;

  // Helpers
  getMemoryStrengthLabel: (strength: number) => string;
  getMemoryStrengthColor: (strength: number) => string;
  getRecommendedCount: (availableMinutes?: number) => number;
}

const SpacedRepetitionContext = createContext<SpacedRepetitionContextType | undefined>(undefined);

// ============================================================================
// Helper: Convert DB row to ReviewItem
// ============================================================================

function dbRowToReviewItem(row: Record<string, unknown>): ReviewItem {
  return {
    id: row.id as string,
    userId: row.user_id as string,
    topicId: row.topic_id as string,
    topic: row.topic as (Topic & { subject?: Subject }) | undefined,
    easeFactor: row.ease_factor as number,
    intervalDays: row.interval_days as number,
    repetitionCount: row.repetition_count as number,
    memoryStrength: row.memory_strength as number,
    nextReviewDate: new Date(row.next_review_date as string),
    lastReviewedAt: row.last_reviewed_at ? new Date(row.last_reviewed_at as string) : undefined,
    totalReviews: row.total_reviews as number,
    correctReviews: row.correct_reviews as number,
    consecutiveCorrect: row.consecutive_correct as number,
    consecutiveIncorrect: row.consecutive_incorrect as number,
    status: row.status as 'active' | 'paused' | 'mastered',
    createdAt: new Date(row.created_at as string),
  };
}

// ============================================================================
// Provider
// ============================================================================

export function SpacedRepetitionProvider({ children }: { children: ReactNode }) {
  const { profile } = useUser();
  const { addXP } = useGamification();

  const [dueReviews, setDueReviews] = useState<ReviewItem[]>([]);
  const [upcomingReviews, setUpcomingReviews] = useState<ReviewItem[]>([]);
  const [stats, setStats] = useState<ReviewStats>({
    dueNow: 0,
    dueThisWeek: 0,
    totalActive: 0,
    mastered: 0,
  });
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  // ============================================================================
  // Data Fetching
  // ============================================================================

  const refreshData = useCallback(async () => {
    if (!profile?.id) {
      setLoading(false);
      return;
    }

    setLoading(true);
    setError(null);

    try {
      const [dueData, upcomingData, statsData] = await Promise.all([
        db.getDueReviews(profile.id, 20),
        db.getUpcomingReviews(profile.id, 7),
        db.getReviewStats(profile.id),
      ]);

      // Convert database rows to ReviewItem objects
      const dueItems = (dueData || []).map(dbRowToReviewItem);
      const upcomingItems = (upcomingData || []).map(dbRowToReviewItem);

      // Update memory strength based on time elapsed
      const updatedDueItems = dueItems.map((item) => {
        if (item.lastReviewedAt) {
          const stability = calculateStability(
            item.repetitionCount,
            item.easeFactor,
            item.consecutiveCorrect
          );
          const currentStrength = calculateMemoryStrength(item.lastReviewedAt, stability);
          return { ...item, memoryStrength: currentStrength };
        }
        return item;
      });

      // Sort by urgency
      updatedDueItems.sort((a, b) => {
        const urgencyA = calculateReviewUrgency(a.nextReviewDate, a.memoryStrength);
        const urgencyB = calculateReviewUrgency(b.nextReviewDate, b.memoryStrength);
        return urgencyB - urgencyA; // Higher urgency first
      });

      setDueReviews(updatedDueItems);
      setUpcomingReviews(upcomingItems);
      setStats(statsData);
    } catch (err) {
      console.error('Failed to fetch spaced repetition data:', err);
      setError('Failed to load review data');
    } finally {
      setLoading(false);
    }
  }, [profile?.id]);

  // Load data on mount and when user changes
  useEffect(() => {
    refreshData();
  }, [refreshData]);

  // ============================================================================
  // Initialize Topic for Review
  // ============================================================================

  const initializeTopicForReview = useCallback(
    async (topicId: string, initialScore: number, questionCount: number, hintsUsed: number) => {
      if (!profile?.id) return;

      try {
        // Calculate initial strength based on quiz performance
        const { strength, easeFactor, interval } = calculateInitialStrength(
          initialScore,
          questionCount,
          hintsUsed
        );

        // Get or create review item
        const reviewItem = await db.getOrCreateReviewItem(profile.id, topicId);

        // Calculate next review date
        const nextReviewDate = new Date();
        nextReviewDate.setDate(nextReviewDate.getDate() + interval);
        nextReviewDate.setHours(9, 0, 0, 0);

        // Update the review item with initial values
        await db.updateReviewItem(reviewItem.id, {
          easeFactor,
          intervalDays: interval,
          repetitionCount: 1,
          memoryStrength: strength,
          nextReviewDate,
          totalReviews: 1,
          correctReviews: initialScore >= 70 ? 1 : 0,
          consecutiveCorrect: initialScore >= 70 ? 1 : 0,
          consecutiveIncorrect: initialScore < 70 ? 1 : 0,
          status: 'active',
        });

        // Refresh data
        await refreshData();
      } catch (err) {
        console.error('Failed to initialize topic for review:', err);
        setError('Failed to set up review schedule');
      }
    },
    [profile?.id, refreshData]
  );

  // ============================================================================
  // Record Review Complete
  // ============================================================================

  const recordReviewComplete = useCallback(
    async (reviewItemId: string, result: ReviewSessionResult) => {
      if (!profile?.id) return;

      try {
        // Find the review item
        const reviewItem = dueReviews.find((r) => r.id === reviewItemId);
        if (!reviewItem) {
          throw new Error('Review item not found');
        }

        // Calculate quality rating from quiz performance
        const qualityRating = calculateQualityRating(
          result.questionsCorrect,
          result.questionsAttempted,
          result.hintsUsed
        );

        // Build current state for SM-2 algorithm
        const currentState: ReviewItemState = {
          easeFactor: reviewItem.easeFactor,
          intervalDays: reviewItem.intervalDays,
          repetitionCount: reviewItem.repetitionCount,
          memoryStrength: reviewItem.memoryStrength,
          nextReviewDate: reviewItem.nextReviewDate,
          consecutiveCorrect: reviewItem.consecutiveCorrect,
          consecutiveIncorrect: reviewItem.consecutiveIncorrect,
        };

        // Run SM-2 algorithm
        const sm2Result = calculateSM2(qualityRating, currentState);

        // Calculate new consecutive counts
        const isCorrect = qualityRating >= 3;
        const newConsecutiveCorrect = isCorrect ? reviewItem.consecutiveCorrect + 1 : 0;
        const newConsecutiveIncorrect = isCorrect ? 0 : reviewItem.consecutiveIncorrect + 1;

        // Calculate new memory strength
        const stability = calculateStability(
          sm2Result.newRepetitionCount,
          sm2Result.newEaseFactor,
          newConsecutiveCorrect
        );
        const newMemoryStrength = calculateMemoryStrength(new Date(), stability);

        // Check if mastered
        const newState: ReviewItemState = {
          ...currentState,
          easeFactor: sm2Result.newEaseFactor,
          intervalDays: sm2Result.newInterval,
          repetitionCount: sm2Result.newRepetitionCount,
          memoryStrength: newMemoryStrength,
          nextReviewDate: sm2Result.nextReviewDate,
          consecutiveCorrect: newConsecutiveCorrect,
          consecutiveIncorrect: newConsecutiveIncorrect,
        };
        const isMastered = shouldMarkAsMastered(newState);

        // Update review item in database
        await db.updateReviewItem(reviewItemId, {
          easeFactor: sm2Result.newEaseFactor,
          intervalDays: sm2Result.newInterval,
          repetitionCount: sm2Result.newRepetitionCount,
          memoryStrength: newMemoryStrength,
          nextReviewDate: sm2Result.nextReviewDate,
          totalReviews: reviewItem.totalReviews + 1,
          correctReviews: reviewItem.correctReviews + (isCorrect ? 1 : 0),
          consecutiveCorrect: newConsecutiveCorrect,
          consecutiveIncorrect: newConsecutiveIncorrect,
          status: isMastered ? 'mastered' : 'active',
        });

        // Record session in database
        await db.createReviewSession({
          userId: profile.id,
          reviewItemId,
          topicId: reviewItem.topicId,
          qualityRating,
          questionsAttempted: result.questionsAttempted,
          questionsCorrect: result.questionsCorrect,
          timeSpentSeconds: result.timeSpentSeconds,
          previousInterval: reviewItem.intervalDays,
          newInterval: sm2Result.newInterval,
          previousEaseFactor: reviewItem.easeFactor,
          newEaseFactor: sm2Result.newEaseFactor,
          sessionType: 'scheduled',
          hintsUsed: result.hintsUsed,
        });

        // Award XP
        const isPerfect = result.questionsCorrect === result.questionsAttempted;
        if (isMastered) {
          addXP({
            type: 'badge_earned', // Using existing type for mastery
            amount: REVIEW_XP.mastery_achieved,
            description: `Mastered ${reviewItem.topic?.name || 'topic'}!`,
          });
        } else if (isPerfect) {
          addXP({
            type: 'perfect_quiz',
            amount: REVIEW_XP.review_perfect,
            description: 'Perfect review!',
          });
        } else {
          addXP({
            type: 'lesson_complete', // Using existing type for review
            amount: REVIEW_XP.review_complete + newConsecutiveCorrect * REVIEW_XP.streak_maintained,
            description: 'Review completed!',
          });
        }

        // Refresh data
        await refreshData();
      } catch (err) {
        console.error('Failed to record review:', err);
        setError('Failed to save review results');
        throw err;
      }
    },
    [profile?.id, dueReviews, addXP, refreshData]
  );

  // ============================================================================
  // Pause/Resume Reviews
  // ============================================================================

  const pauseReview = useCallback(
    async (reviewItemId: string) => {
      if (!profile?.id) return;

      try {
        const reviewItem = [...dueReviews, ...upcomingReviews].find((r) => r.id === reviewItemId);
        if (!reviewItem) return;

        await db.updateReviewItem(reviewItemId, {
          easeFactor: reviewItem.easeFactor,
          intervalDays: reviewItem.intervalDays,
          repetitionCount: reviewItem.repetitionCount,
          memoryStrength: reviewItem.memoryStrength,
          nextReviewDate: reviewItem.nextReviewDate,
          totalReviews: reviewItem.totalReviews,
          correctReviews: reviewItem.correctReviews,
          consecutiveCorrect: reviewItem.consecutiveCorrect,
          consecutiveIncorrect: reviewItem.consecutiveIncorrect,
          status: 'paused',
        });

        await refreshData();
      } catch (err) {
        console.error('Failed to pause review:', err);
        setError('Failed to pause review');
      }
    },
    [profile?.id, dueReviews, upcomingReviews, refreshData]
  );

  const resumeReview = useCallback(
    async (reviewItemId: string) => {
      if (!profile?.id) return;

      try {
        const reviewItem = [...dueReviews, ...upcomingReviews].find((r) => r.id === reviewItemId);
        if (!reviewItem) return;

        // When resuming, set next review to now if it was in the past
        const now = new Date();
        const nextReviewDate = reviewItem.nextReviewDate < now ? now : reviewItem.nextReviewDate;

        await db.updateReviewItem(reviewItemId, {
          easeFactor: reviewItem.easeFactor,
          intervalDays: reviewItem.intervalDays,
          repetitionCount: reviewItem.repetitionCount,
          memoryStrength: reviewItem.memoryStrength,
          nextReviewDate,
          totalReviews: reviewItem.totalReviews,
          correctReviews: reviewItem.correctReviews,
          consecutiveCorrect: reviewItem.consecutiveCorrect,
          consecutiveIncorrect: reviewItem.consecutiveIncorrect,
          status: 'active',
        });

        await refreshData();
      } catch (err) {
        console.error('Failed to resume review:', err);
        setError('Failed to resume review');
      }
    },
    [profile?.id, dueReviews, upcomingReviews, refreshData]
  );

  // ============================================================================
  // Helper Functions
  // ============================================================================

  const getRecommendedCount = useCallback(
    (availableMinutes: number = 30) => {
      return getRecommendedReviewCount(stats.dueNow, availableMinutes);
    },
    [stats.dueNow]
  );

  // ============================================================================
  // Notification Scheduling for Reviews
  // ============================================================================

  useEffect(() => {
    // Check if notifications are enabled
    const settingsKey = 'tulomi_settings';
    const settings = storage.get<{ notifications?: { enabled?: boolean; reviewReminders?: boolean; reviewReminderHour?: number } }>(settingsKey, {});
    const notificationsEnabled = settings.notifications?.enabled ?? false;
    const reviewRemindersEnabled = settings.notifications?.reviewReminders ?? true;
    const reminderHour = settings.notifications?.reviewReminderHour ?? 10;

    if (notificationsEnabled && reviewRemindersEnabled && getNotificationPermission() === 'granted') {
      if (stats.dueNow > 0) {
        scheduleReviewReminder(stats.dueNow, reminderHour);
      } else {
        // No reviews due, cancel any scheduled review notifications
        cancelNotificationsByType('review_due');
      }
    }
  }, [stats.dueNow]);

  // ============================================================================
  // Context Value
  // ============================================================================

  const value: SpacedRepetitionContextType = {
    dueReviews,
    upcomingReviews,
    stats,
    loading,
    error,
    refreshData,
    initializeTopicForReview,
    recordReviewComplete,
    pauseReview,
    resumeReview,
    getMemoryStrengthLabel,
    getMemoryStrengthColor,
    getRecommendedCount,
  };

  return (
    <SpacedRepetitionContext.Provider value={value}>
      {children}
    </SpacedRepetitionContext.Provider>
  );
}

// ============================================================================
// Hook
// ============================================================================

export function useSpacedRepetition() {
  const context = useContext(SpacedRepetitionContext);
  if (context === undefined) {
    throw new Error('useSpacedRepetition must be used within a SpacedRepetitionProvider');
  }
  return context;
}
