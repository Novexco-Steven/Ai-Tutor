/**
 * Session Cache - Persists lesson and quiz state across page refreshes
 * Uses localStorage with automatic expiry (24 hours default)
 */

import type { LessonContent, Question, AIAssessAnswerResponse } from '@/types';

const CACHE_PREFIX = 'learnlit_session_';
const DEFAULT_EXPIRY_HOURS = 24;

interface CachedLesson {
  topicId: string;
  lesson: LessonContent;
  currentSection: number;
  timestamp: number;
}

interface CachedQuiz {
  topicId: string;
  questions: Question[];
  currentIndex: number;
  answers: Record<number, string>;
  feedback: Record<number, AIAssessAnswerResponse>;
  timestamp: number;
}

function isExpired(timestamp: number, expiryHours: number = DEFAULT_EXPIRY_HOURS): boolean {
  const now = Date.now();
  const expiryMs = expiryHours * 60 * 60 * 1000;
  return now - timestamp > expiryMs;
}

function getKey(type: 'lesson' | 'quiz', topicId: string): string {
  return `${CACHE_PREFIX}${type}_${topicId}`;
}

export const sessionCache = {
  // ============ LESSON METHODS ============

  /**
   * Save lesson state to localStorage
   */
  saveLesson(topicId: string, lesson: LessonContent, currentSection: number): void {
    try {
      const cached: CachedLesson = {
        topicId,
        lesson,
        currentSection,
        timestamp: Date.now()
      };
      localStorage.setItem(getKey('lesson', topicId), JSON.stringify(cached));
    } catch (error) {
      console.warn('Failed to save lesson to cache:', error);
    }
  },

  /**
   * Get cached lesson if it exists and hasn't expired
   */
  getLesson(topicId: string): CachedLesson | null {
    try {
      const data = localStorage.getItem(getKey('lesson', topicId));
      if (!data) return null;

      const cached: CachedLesson = JSON.parse(data);

      if (isExpired(cached.timestamp)) {
        this.clearLesson(topicId);
        return null;
      }

      return cached;
    } catch (error) {
      console.warn('Failed to get lesson from cache:', error);
      return null;
    }
  },

  /**
   * Clear cached lesson
   */
  clearLesson(topicId: string): void {
    try {
      localStorage.removeItem(getKey('lesson', topicId));
    } catch (error) {
      console.warn('Failed to clear lesson from cache:', error);
    }
  },

  // ============ QUIZ METHODS ============

  /**
   * Save quiz state to localStorage
   */
  saveQuiz(
    topicId: string,
    questions: Question[],
    currentIndex: number,
    answers: Map<number, string>,
    feedback: Map<number, AIAssessAnswerResponse>
  ): void {
    try {
      const cached: CachedQuiz = {
        topicId,
        questions,
        currentIndex,
        answers: Object.fromEntries(answers),
        feedback: Object.fromEntries(feedback),
        timestamp: Date.now()
      };
      localStorage.setItem(getKey('quiz', topicId), JSON.stringify(cached));
    } catch (error) {
      console.warn('Failed to save quiz to cache:', error);
    }
  },

  /**
   * Get cached quiz if it exists and hasn't expired
   */
  getQuiz(topicId: string): CachedQuiz | null {
    try {
      const data = localStorage.getItem(getKey('quiz', topicId));
      if (!data) return null;

      const cached: CachedQuiz = JSON.parse(data);

      if (isExpired(cached.timestamp)) {
        this.clearQuiz(topicId);
        return null;
      }

      return cached;
    } catch (error) {
      console.warn('Failed to get quiz from cache:', error);
      return null;
    }
  },

  /**
   * Clear cached quiz
   */
  clearQuiz(topicId: string): void {
    try {
      localStorage.removeItem(getKey('quiz', topicId));
    } catch (error) {
      console.warn('Failed to clear quiz from cache:', error);
    }
  },

  // ============ UTILITY METHODS ============

  /**
   * Clear all session caches
   */
  clearAll(): void {
    try {
      const keys = Object.keys(localStorage);
      keys.forEach(key => {
        if (key.startsWith(CACHE_PREFIX)) {
          localStorage.removeItem(key);
        }
      });
    } catch (error) {
      console.warn('Failed to clear all session caches:', error);
    }
  },

  /**
   * Clean up expired caches
   */
  cleanupExpired(): void {
    try {
      const keys = Object.keys(localStorage);
      keys.forEach(key => {
        if (key.startsWith(CACHE_PREFIX)) {
          const data = localStorage.getItem(key);
          if (data) {
            const parsed = JSON.parse(data);
            if (parsed.timestamp && isExpired(parsed.timestamp)) {
              localStorage.removeItem(key);
            }
          }
        }
      });
    } catch (error) {
      console.warn('Failed to cleanup expired caches:', error);
    }
  }
};

// Export types for use in components
export type { CachedLesson, CachedQuiz };
