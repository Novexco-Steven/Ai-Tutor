import { createContext, useContext, useEffect, useState, ReactNode, useCallback } from 'react';
import { useUser } from './UserContext';
import { storage } from '@/utils/helpers';
import type { GamificationData, Badge, UserBadge, XPEvent } from '@/types';

// Badge definitions
export const BADGES: Badge[] = [
  // Learning badges
  { id: 'first_lesson', name: 'First Steps', description: 'Complete your first lesson', icon: '🎯', category: 'learning', requirement: { type: 'lessons_completed', threshold: 1 }, xpReward: 50 },
  { id: 'lesson_5', name: 'Dedicated Learner', description: 'Complete 5 lessons', icon: '📚', category: 'learning', requirement: { type: 'lessons_completed', threshold: 5 }, xpReward: 100 },
  { id: 'lesson_10', name: 'Knowledge Seeker', description: 'Complete 10 lessons', icon: '🧠', category: 'learning', requirement: { type: 'lessons_completed', threshold: 10 }, xpReward: 200 },
  { id: 'lesson_25', name: 'Scholar', description: 'Complete 25 lessons', icon: '🎓', category: 'learning', requirement: { type: 'lessons_completed', threshold: 25 }, xpReward: 500 },
  { id: 'lesson_50', name: 'Master Scholar', description: 'Complete 50 lessons', icon: '👨‍🎓', category: 'learning', requirement: { type: 'lessons_completed', threshold: 50 }, xpReward: 1000 },

  // Quiz badges
  { id: 'first_quiz', name: 'Quiz Taker', description: 'Pass your first quiz', icon: '✅', category: 'mastery', requirement: { type: 'quizzes_passed', threshold: 1 }, xpReward: 50 },
  { id: 'quiz_10', name: 'Quiz Champion', description: 'Pass 10 quizzes', icon: '🏆', category: 'mastery', requirement: { type: 'quizzes_passed', threshold: 10 }, xpReward: 300 },
  { id: 'quiz_25', name: 'Quiz Master', description: 'Pass 25 quizzes', icon: '👑', category: 'mastery', requirement: { type: 'quizzes_passed', threshold: 25 }, xpReward: 750 },

  // Perfect score badges
  { id: 'perfect_1', name: 'Perfect Score', description: 'Get 100% on a quiz', icon: '⭐', category: 'mastery', requirement: { type: 'perfect_quiz', threshold: 1 }, xpReward: 100 },
  { id: 'perfect_5', name: 'Perfectionist', description: 'Get 100% on 5 quizzes', icon: '🌟', category: 'mastery', requirement: { type: 'perfect_quiz', threshold: 5 }, xpReward: 300 },
  { id: 'perfect_10', name: 'Flawless', description: 'Get 100% on 10 quizzes', icon: '💫', category: 'mastery', requirement: { type: 'perfect_quiz', threshold: 10 }, xpReward: 500 },

  // Streak badges
  { id: 'streak_3', name: 'On Fire', description: 'Maintain a 3-day streak', icon: '🔥', category: 'streak', requirement: { type: 'streak_days', threshold: 3 }, xpReward: 75 },
  { id: 'streak_7', name: 'Week Warrior', description: 'Maintain a 7-day streak', icon: '💪', category: 'streak', requirement: { type: 'streak_days', threshold: 7 }, xpReward: 200 },
  { id: 'streak_14', name: 'Unstoppable', description: 'Maintain a 14-day streak', icon: '🚀', category: 'streak', requirement: { type: 'streak_days', threshold: 14 }, xpReward: 500 },
  { id: 'streak_30', name: 'Legend', description: 'Maintain a 30-day streak', icon: '🏅', category: 'streak', requirement: { type: 'streak_days', threshold: 30 }, xpReward: 1000 },

  // XP milestones
  { id: 'xp_100', name: 'Rising Star', description: 'Earn 100 XP', icon: '✨', category: 'achievement', requirement: { type: 'xp_earned', threshold: 100 }, xpReward: 25 },
  { id: 'xp_500', name: 'Achiever', description: 'Earn 500 XP', icon: '🌈', category: 'achievement', requirement: { type: 'xp_earned', threshold: 500 }, xpReward: 50 },
  { id: 'xp_1000', name: 'High Achiever', description: 'Earn 1000 XP', icon: '🎆', category: 'achievement', requirement: { type: 'xp_earned', threshold: 1000 }, xpReward: 100 },
  { id: 'xp_5000', name: 'Elite', description: 'Earn 5000 XP', icon: '💎', category: 'achievement', requirement: { type: 'xp_earned', threshold: 5000 }, xpReward: 250 },

  // Questions correct badges
  { id: 'questions_10', name: 'Quick Thinker', description: 'Answer 10 questions correctly', icon: '💡', category: 'mastery', requirement: { type: 'questions_correct', threshold: 10 }, xpReward: 50 },
  { id: 'questions_50', name: 'Problem Solver', description: 'Answer 50 questions correctly', icon: '🔍', category: 'mastery', requirement: { type: 'questions_correct', threshold: 50 }, xpReward: 150 },
  { id: 'questions_100', name: 'Genius', description: 'Answer 100 questions correctly', icon: '🧩', category: 'mastery', requirement: { type: 'questions_correct', threshold: 100 }, xpReward: 300 },
  { id: 'questions_500', name: 'Mastermind', description: 'Answer 500 questions correctly', icon: '🎯', category: 'mastery', requirement: { type: 'questions_correct', threshold: 500 }, xpReward: 1000 },
];

// XP amounts for different actions
export const XP_VALUES = {
  lesson_complete: 25,
  quiz_complete: 50,
  perfect_quiz: 100,
  question_correct: 5,
  streak_bonus: 10, // Per day of streak
};

// Level thresholds
export const LEVEL_THRESHOLDS = [
  0, 100, 250, 500, 800, 1200, 1700, 2300, 3000, 3800,
  4700, 5700, 6800, 8000, 9300, 10700, 12200, 13800, 15500, 17300,
  19200, 21200, 23300, 25500, 27800, 30200, 32700, 35300, 38000, 40800,
];

const defaultGamificationData: GamificationData = {
  xp: 0,
  level: 1,
  currentStreak: 0,
  longestStreak: 0,
  lastActivityDate: null,
  badges: [],
  totalLessonsCompleted: 0,
  totalQuizzesPassed: 0,
  totalQuestionsCorrect: 0,
};

interface GamificationContextType {
  data: GamificationData;
  addXP: (event: Omit<XPEvent, 'timestamp'>) => void;
  recordLessonComplete: () => void;
  recordQuizComplete: (score: number, totalQuestions: number) => void;
  recordQuestionCorrect: () => void;
  checkAndUpdateStreak: () => void;
  getBadge: (badgeId: string) => Badge | undefined;
  hasBadge: (badgeId: string) => boolean;
  getXPForNextLevel: () => number;
  getXPProgress: () => number;
  recentXPEvents: XPEvent[];
}

const GamificationContext = createContext<GamificationContextType | undefined>(undefined);

export function GamificationProvider({ children }: { children: ReactNode }) {
  const { profile } = useUser();
  const [data, setData] = useState<GamificationData>(defaultGamificationData);
  const [recentXPEvents, setRecentXPEvents] = useState<XPEvent[]>([]);
  const [perfectQuizCount, setPerfectQuizCount] = useState(0);

  // Load gamification data
  useEffect(() => {
    const storageKey = profile?.id ? `learnlit_gamification_${profile.id}` : 'learnlit_gamification_guest';
    const saved = storage.get<GamificationData & { perfectQuizCount?: number }>(storageKey, defaultGamificationData);
    setData(saved);
    setPerfectQuizCount(saved.perfectQuizCount || 0);
  }, [profile]);

  // Save gamification data
  const saveData = useCallback((newData: GamificationData) => {
    const storageKey = profile?.id ? `learnlit_gamification_${profile.id}` : 'learnlit_gamification_guest';
    storage.set(storageKey, { ...newData, perfectQuizCount });
    setData(newData);
  }, [profile, perfectQuizCount]);

  // Calculate level from XP
  const calculateLevel = (xp: number): number => {
    for (let i = LEVEL_THRESHOLDS.length - 1; i >= 0; i--) {
      if (xp >= LEVEL_THRESHOLDS[i]) {
        return i + 1;
      }
    }
    return 1;
  };

  // Check for new badges
  const checkBadges = useCallback((currentData: GamificationData, newPerfectCount?: number): UserBadge[] => {
    const newBadges: UserBadge[] = [];
    const existingBadgeIds = new Set(currentData.badges.map(b => b.badgeId));
    const pCount = newPerfectCount ?? perfectQuizCount;

    for (const badge of BADGES) {
      if (existingBadgeIds.has(badge.id)) continue;

      let earned = false;
      switch (badge.requirement.type) {
        case 'lessons_completed':
          earned = currentData.totalLessonsCompleted >= badge.requirement.threshold;
          break;
        case 'quizzes_passed':
          earned = currentData.totalQuizzesPassed >= badge.requirement.threshold;
          break;
        case 'streak_days':
          earned = currentData.currentStreak >= badge.requirement.threshold;
          break;
        case 'xp_earned':
          earned = currentData.xp >= badge.requirement.threshold;
          break;
        case 'perfect_quiz':
          earned = pCount >= badge.requirement.threshold;
          break;
        case 'questions_correct':
          earned = currentData.totalQuestionsCorrect >= badge.requirement.threshold;
          break;
      }

      if (earned) {
        newBadges.push({ badgeId: badge.id, earnedAt: new Date().toISOString() });
      }
    }

    return newBadges;
  }, [perfectQuizCount]);

  // Add XP and check for level up and badges
  const addXP = useCallback((event: Omit<XPEvent, 'timestamp'>) => {
    const timestamp = new Date().toISOString();
    const fullEvent: XPEvent = { ...event, timestamp };

    setRecentXPEvents(prev => [fullEvent, ...prev.slice(0, 9)]); // Keep last 10

    setData(currentData => {
      const newXP = currentData.xp + event.amount;
      const newLevel = calculateLevel(newXP);

      let updatedData = {
        ...currentData,
        xp: newXP,
        level: newLevel,
      };

      // Check for new badges
      const newBadges = checkBadges(updatedData);
      if (newBadges.length > 0) {
        updatedData = {
          ...updatedData,
          badges: [...updatedData.badges, ...newBadges],
        };
        // Add XP for badges (without recursion)
        const badgeXP = newBadges.reduce((sum, b) => {
          const badge = BADGES.find(badge => badge.id === b.badgeId);
          return sum + (badge?.xpReward || 0);
        }, 0);
        if (badgeXP > 0) {
          updatedData.xp += badgeXP;
          updatedData.level = calculateLevel(updatedData.xp);
        }
      }

      saveData(updatedData);
      return updatedData;
    });
  }, [checkBadges, saveData]);

  // Check and update streak
  const checkAndUpdateStreak = useCallback(() => {
    const today = new Date().toISOString().split('T')[0];

    setData(currentData => {
      if (currentData.lastActivityDate === today) {
        return currentData; // Already recorded today
      }

      const yesterday = new Date();
      yesterday.setDate(yesterday.getDate() - 1);
      const yesterdayStr = yesterday.toISOString().split('T')[0];

      let newStreak = 1;
      if (currentData.lastActivityDate === yesterdayStr) {
        newStreak = currentData.currentStreak + 1;
      }

      const updatedData = {
        ...currentData,
        currentStreak: newStreak,
        longestStreak: Math.max(currentData.longestStreak, newStreak),
        lastActivityDate: today,
      };

      // Streak bonus XP
      if (newStreak > 1) {
        const streakBonus = Math.min(newStreak * XP_VALUES.streak_bonus, 100);
        addXP({
          type: 'streak_bonus',
          amount: streakBonus,
          description: `${newStreak} day streak bonus!`,
        });
      }

      saveData(updatedData);
      return updatedData;
    });
  }, [addXP, saveData]);

  // Record lesson completion
  const recordLessonComplete = useCallback(() => {
    checkAndUpdateStreak();

    setData(currentData => {
      const updatedData = {
        ...currentData,
        totalLessonsCompleted: currentData.totalLessonsCompleted + 1,
      };
      saveData(updatedData);
      return updatedData;
    });

    addXP({
      type: 'lesson_complete',
      amount: XP_VALUES.lesson_complete,
      description: 'Lesson completed!',
    });
  }, [addXP, checkAndUpdateStreak, saveData]);

  // Record quiz completion
  const recordQuizComplete = useCallback((score: number, totalQuestions: number) => {
    checkAndUpdateStreak();
    const isPerfect = score === totalQuestions;

    setData(currentData => {
      const updatedData = {
        ...currentData,
        totalQuizzesPassed: currentData.totalQuizzesPassed + 1,
      };
      saveData(updatedData);
      return updatedData;
    });

    if (isPerfect) {
      const newPerfectCount = perfectQuizCount + 1;
      setPerfectQuizCount(newPerfectCount);
      // Update storage with new perfect count
      const storageKey = profile?.id ? `learnlit_gamification_${profile.id}` : 'learnlit_gamification_guest';
      const current = storage.get<GamificationData & { perfectQuizCount?: number }>(storageKey, defaultGamificationData);
      storage.set(storageKey, { ...current, perfectQuizCount: newPerfectCount });

      addXP({
        type: 'perfect_quiz',
        amount: XP_VALUES.perfect_quiz,
        description: 'Perfect score!',
      });
    } else {
      addXP({
        type: 'quiz_complete',
        amount: XP_VALUES.quiz_complete,
        description: 'Quiz completed!',
      });
    }
  }, [addXP, checkAndUpdateStreak, perfectQuizCount, profile, saveData]);

  // Record correct question
  const recordQuestionCorrect = useCallback(() => {
    setData(currentData => {
      const updatedData = {
        ...currentData,
        totalQuestionsCorrect: currentData.totalQuestionsCorrect + 1,
      };
      saveData(updatedData);
      return updatedData;
    });

    addXP({
      type: 'question_correct',
      amount: XP_VALUES.question_correct,
      description: 'Correct answer!',
    });
  }, [addXP, saveData]);

  const getBadge = (badgeId: string): Badge | undefined => {
    return BADGES.find(b => b.id === badgeId);
  };

  const hasBadge = (badgeId: string): boolean => {
    return data.badges.some(b => b.badgeId === badgeId);
  };

  const getXPForNextLevel = (): number => {
    const nextLevelIndex = Math.min(data.level, LEVEL_THRESHOLDS.length - 1);
    return LEVEL_THRESHOLDS[nextLevelIndex];
  };

  const getXPProgress = (): number => {
    const currentLevelXP = LEVEL_THRESHOLDS[data.level - 1] || 0;
    const nextLevelXP = getXPForNextLevel();
    const progressXP = data.xp - currentLevelXP;
    const neededXP = nextLevelXP - currentLevelXP;
    return neededXP > 0 ? (progressXP / neededXP) * 100 : 100;
  };

  const value = {
    data,
    addXP,
    recordLessonComplete,
    recordQuizComplete,
    recordQuestionCorrect,
    checkAndUpdateStreak,
    getBadge,
    hasBadge,
    getXPForNextLevel,
    getXPProgress,
    recentXPEvents,
  };

  return (
    <GamificationContext.Provider value={value}>
      {children}
    </GamificationContext.Provider>
  );
}

export function useGamification() {
  const context = useContext(GamificationContext);
  if (context === undefined) {
    throw new Error('useGamification must be used within a GamificationProvider');
  }
  return context;
}
