import { type ClassValue, clsx } from 'clsx';
import { twMerge } from 'tailwind-merge';

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function formatDuration(seconds: number): string {
  if (seconds < 60) return `${seconds}s`;
  const minutes = Math.floor(seconds / 60);
  const remainingSeconds = seconds % 60;
  if (minutes < 60) return remainingSeconds > 0 ? `${minutes}m ${remainingSeconds}s` : `${minutes}m`;
  const hours = Math.floor(minutes / 60);
  const remainingMinutes = minutes % 60;
  return remainingMinutes > 0 ? `${hours}h ${remainingMinutes}m` : `${hours}h`;
}

export function calculatePercentage(part: number, total: number): number {
  if (total === 0) return 0;
  return Math.round((part / total) * 100);
}

export function ageToGradeLevel(age: number): number {
  if (age < 5) return 0;
  if (age >= 18) return 12;
  return age - 5;
}

export function getReadingLevelDescription(gradeLevel: number): string {
  if (gradeLevel <= 0) return 'Early Learning';
  if (gradeLevel <= 2) return 'Beginning Reader';
  if (gradeLevel <= 5) return 'Developing Reader';
  if (gradeLevel <= 8) return 'Proficient Reader';
  return 'Advanced Reader';
}

export function shuffleArray<T>(array: T[]): T[] {
  const newArray = [...array];
  for (let i = newArray.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [newArray[i], newArray[j]] = [newArray[j], newArray[i]];
  }
  return newArray;
}

export function debounce<T extends (...args: any[]) => any>(func: T, wait: number): (...args: Parameters<T>) => void {
  let timeout: NodeJS.Timeout | null = null;
  return function executedFunction(...args: Parameters<T>) {
    const later = () => {
      timeout = null;
      func(...args);
    };
    if (timeout) clearTimeout(timeout);
    timeout = setTimeout(later, wait);
  };
}

export function truncate(text: string, maxLength: number): string {
  if (text.length <= maxLength) return text;
  return text.slice(0, maxLength - 3) + '...';
}

export function sleep(ms: number): Promise<void> {
  return new Promise(resolve => setTimeout(resolve, ms));
}

export function getTimeBasedGreeting(): string {
  const hour = new Date().getHours();
  if (hour < 12) return 'Good morning';
  if (hour < 17) return 'Good afternoon';
  return 'Good evening';
}

export function isValidEmail(email: string): boolean {
  const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
  return emailRegex.test(email);
}

export function generateId(prefix = ''): string {
  const timestamp = Date.now().toString(36);
  const randomStr = Math.random().toString(36).substring(2, 9);
  return prefix ? `${prefix}_${timestamp}_${randomStr}` : `${timestamp}_${randomStr}`;
}

export function getPerformanceLevel(successRate: number): {
  level: 'excellent' | 'good' | 'fair' | 'needs-improvement';
  message: string;
  color: string;
} {
  if (successRate >= 90) return { level: 'excellent', message: 'Excellent work!', color: 'green' };
  if (successRate >= 70) return { level: 'good', message: 'Great job!', color: 'blue' };
  if (successRate >= 50) return { level: 'fair', message: 'Keep practicing!', color: 'yellow' };
  return { level: 'needs-improvement', message: "Let's work on this together!", color: 'orange' };
}

export interface DifficultyAdjustmentResult {
  newDifficulty: number;
  adjustment: number; // positive = increased, negative = decreased, 0 = no change
  reason: string;
}

/**
 * Get effective difficulty using cascade: topic > subject > global
 */
export function getEffectiveDifficulty(
  globalDifficulty: number,
  subjectDifficulties?: Record<string, number>,
  topicDifficulties?: Record<string, number>,
  subjectId?: string,
  topicId?: string
): number {
  // Topic-level override takes precedence
  if (topicId && topicDifficulties?.[topicId]) {
    return topicDifficulties[topicId];
  }
  // Subject-level override is next
  if (subjectId && subjectDifficulties?.[subjectId]) {
    return subjectDifficulties[subjectId];
  }
  // Fall back to global difficulty
  return globalDifficulty;
}

export function calculateAdaptiveDifficulty(
  currentDifficulty: number,
  score: number,
  difficultyMode: 'auto' | 'challenge' | 'easier'
): DifficultyAdjustmentResult {
  const MIN_DIFFICULTY = 1;
  const MAX_DIFFICULTY = 10;

  let newDifficulty = currentDifficulty;
  let adjustment = 0;
  let reason = '';

  switch (difficultyMode) {
    case 'auto':
      if (score >= 85) {
        // Excellent performance - increase difficulty
        adjustment = 1;
        reason = 'Great job! Increasing difficulty to challenge you more.';
      } else if (score >= 60) {
        // Good performance - maintain level
        adjustment = 0;
        reason = 'Good work! Staying at current difficulty level.';
      } else {
        // Struggling - decrease difficulty
        adjustment = -1;
        reason = 'Adjusting to an easier level to build confidence.';
      }
      break;

    case 'challenge':
      // Always try to increase
      adjustment = 1;
      reason = 'Challenge mode: Increasing difficulty!';
      break;

    case 'easier':
      // Always try to decrease
      adjustment = -1;
      reason = 'Easier mode: Adjusting to a more comfortable level.';
      break;
  }

  newDifficulty = Math.max(MIN_DIFFICULTY, Math.min(MAX_DIFFICULTY, currentDifficulty + adjustment));

  // Adjust if we hit bounds
  if (newDifficulty === currentDifficulty && adjustment !== 0) {
    adjustment = 0;
    reason = adjustment > 0
      ? "You're already at maximum difficulty!"
      : "You're already at the easiest level.";
  }

  return {
    newDifficulty,
    adjustment: newDifficulty - currentDifficulty,
    reason
  };
}

export const storage = {
  get<T>(key: string, defaultValue: T): T {
    try {
      const item = window.localStorage.getItem(key);
      return item ? JSON.parse(item) : defaultValue;
    } catch {
      return defaultValue;
    }
  },
  set(key: string, value: any): void {
    try {
      window.localStorage.setItem(key, JSON.stringify(value));
    } catch (error) {
      console.error('Error saving to localStorage:', error);
    }
  },
  remove(key: string): void {
    try {
      window.localStorage.removeItem(key);
    } catch (error) {
      console.error('Error removing from localStorage:', error);
    }
  },
  clear(): void {
    try {
      window.localStorage.clear();
    } catch (error) {
      console.error('Error clearing localStorage:', error);
    }
  }
};
