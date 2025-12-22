/**
 * Spaced Repetition Service
 * Implements the SM-2 algorithm for optimal review scheduling
 *
 * SM-2 Algorithm Overview:
 * - Quality ratings 0-5: 0 = complete blackout, 5 = perfect recall
 * - Ease Factor (EF): Multiplier for interval calculation (minimum 1.3)
 * - Interval: Days until next review
 * - If quality < 3: Reset repetition count (start over)
 * - If quality >= 3: Increase interval based on EF
 */

// SM-2 Algorithm Constants
const MIN_EASE_FACTOR = 1.3;
const DEFAULT_EASE_FACTOR = 2.5;
const MAX_INTERVAL_DAYS = 365;

// Quality ratings (0-5 scale matching SM-2)
export type QualityRating = 0 | 1 | 2 | 3 | 4 | 5;

export interface ReviewItemState {
  easeFactor: number;
  intervalDays: number;
  repetitionCount: number;
  memoryStrength: number;
  nextReviewDate: Date;
  consecutiveCorrect: number;
  consecutiveIncorrect: number;
}

export interface SM2Result {
  newEaseFactor: number;
  newInterval: number;
  newRepetitionCount: number;
  nextReviewDate: Date;
}

/**
 * Calculate quality rating from quiz performance
 * Maps percentage scores to SM-2 quality ratings (0-5)
 *
 * @param correctAnswers - Number of correct answers
 * @param totalQuestions - Total questions attempted
 * @param hintsUsed - Number of hints used (optional penalty)
 * @returns Quality rating 0-5
 */
export function calculateQualityRating(
  correctAnswers: number,
  totalQuestions: number,
  hintsUsed: number = 0
): QualityRating {
  if (totalQuestions === 0) return 0;

  const percentage = (correctAnswers / totalQuestions) * 100;
  // Each hint reduces score by 5%, max 20% penalty
  const hintPenalty = Math.min(hintsUsed * 5, 20);
  const adjustedPercentage = Math.max(0, percentage - hintPenalty);

  // Map percentage to SM-2 quality rating
  if (adjustedPercentage >= 95) return 5; // Perfect or near-perfect
  if (adjustedPercentage >= 80) return 4; // Good, minor hesitation
  if (adjustedPercentage >= 65) return 3; // Correct with difficulty
  if (adjustedPercentage >= 50) return 2; // Correct after much thought
  if (adjustedPercentage >= 30) return 1; // Wrong, but remembered after prompt
  return 0; // Complete blackout
}

/**
 * SM-2 Algorithm Implementation
 * Calculates the next review interval based on performance
 *
 * @param quality - Quality rating 0-5
 * @param currentState - Current review item state
 * @returns New algorithm state with next review date
 */
export function calculateSM2(
  quality: QualityRating,
  currentState: ReviewItemState
): SM2Result {
  let { easeFactor, intervalDays, repetitionCount } = currentState;

  // If quality < 3, restart the learning process
  if (quality < 3) {
    repetitionCount = 0;
    intervalDays = 1;
  } else {
    // Successful recall - increase interval based on repetition count
    if (repetitionCount === 0) {
      intervalDays = 1;
    } else if (repetitionCount === 1) {
      intervalDays = 6;
    } else {
      intervalDays = Math.round(intervalDays * easeFactor);
    }
    repetitionCount += 1;
  }

  // Update ease factor based on quality
  // EF' = EF + (0.1 - (5 - q) * (0.08 + (5 - q) * 0.02))
  const easeDelta = 0.1 - (5 - quality) * (0.08 + (5 - quality) * 0.02);
  easeFactor = Math.max(MIN_EASE_FACTOR, easeFactor + easeDelta);

  // Cap maximum interval to prevent extremely long gaps
  intervalDays = Math.min(intervalDays, MAX_INTERVAL_DAYS);

  // Calculate next review date
  const nextReviewDate = new Date();
  nextReviewDate.setDate(nextReviewDate.getDate() + intervalDays);
  nextReviewDate.setHours(9, 0, 0, 0); // Set to 9 AM for consistent scheduling

  return {
    newEaseFactor: Math.round(easeFactor * 100) / 100, // Round to 2 decimal places
    newInterval: intervalDays,
    newRepetitionCount: repetitionCount,
    nextReviewDate,
  };
}

/**
 * Calculate memory strength decay using Ebbinghaus forgetting curve
 * Returns value between 0 and 1
 *
 * Formula: R = e^(-t/S)
 * where t = time since review, S = stability factor
 *
 * @param lastReviewDate - Date of last review
 * @param stability - Stability factor (higher = slower forgetting)
 * @returns Memory retention value 0-1
 */
export function calculateMemoryStrength(
  lastReviewDate: Date,
  stability: number
): number {
  const now = new Date();
  const daysSinceReview =
    (now.getTime() - lastReviewDate.getTime()) / (1000 * 60 * 60 * 24);

  if (daysSinceReview <= 0) return 1;

  // Memory retention formula: R = e^(-t/S)
  const retention = Math.exp(-daysSinceReview / Math.max(stability, 1));

  return Math.max(0, Math.min(1, retention));
}

/**
 * Calculate stability factor for forgetting curve
 * Higher values = slower forgetting
 *
 * @param repetitionCount - Number of successful reviews
 * @param easeFactor - Current ease factor
 * @param consecutiveCorrect - Consecutive correct reviews
 * @returns Stability factor
 */
export function calculateStability(
  repetitionCount: number,
  easeFactor: number,
  consecutiveCorrect: number
): number {
  // Base stability increases exponentially with repetitions
  const baseStability = Math.pow(2, repetitionCount) * 3;

  // Ease factor bonus (higher EF = easier recall = more stable)
  const easeBonus = (easeFactor - MIN_EASE_FACTOR) * 5;

  // Consecutive correct bonus (capped at 10)
  const streakBonus = Math.min(consecutiveCorrect * 2, 10);

  return baseStability + easeBonus + streakBonus;
}

/**
 * Determine initial memory strength from first quiz performance
 *
 * @param score - Score as percentage (0-100)
 * @param questionCount - Number of questions
 * @param hintsUsed - Number of hints used
 * @returns Initial state values
 */
export function calculateInitialStrength(
  score: number,
  questionCount: number,
  hintsUsed: number
): { strength: number; easeFactor: number; interval: number } {
  const hintPenalty = Math.min(hintsUsed / Math.max(questionCount, 1) * 0.2, 0.2);
  const adjustedScore = Math.max(0, score / 100 - hintPenalty);

  return {
    strength: Math.max(0.3, adjustedScore),
    easeFactor: (DEFAULT_EASE_FACTOR - 0.5) + adjustedScore * 0.5, // Range: 2.0 to 2.5
    interval: adjustedScore >= 0.8 ? 3 : 1, // Good scores get longer initial interval
  };
}

/**
 * Check if a topic should be considered "mastered"
 * Mastery criteria:
 * - 5+ consecutive correct reviews
 * - Memory strength >= 95%
 * - Interval >= 60 days
 *
 * @param state - Current review item state
 * @returns Whether the topic is mastered
 */
export function shouldMarkAsMastered(state: ReviewItemState): boolean {
  return (
    state.consecutiveCorrect >= 5 &&
    state.memoryStrength >= 0.95 &&
    state.intervalDays >= 60
  );
}

/**
 * Get human-readable memory strength label
 */
export function getMemoryStrengthLabel(strength: number): string {
  if (strength >= 0.8) return 'Strong';
  if (strength >= 0.6) return 'Good';
  if (strength >= 0.4) return 'Fading';
  if (strength >= 0.2) return 'Weak';
  return 'Forgotten';
}

/**
 * Get color class for memory strength visualization
 */
export function getMemoryStrengthColor(strength: number): string {
  if (strength >= 0.8) return 'text-green-500';
  if (strength >= 0.6) return 'text-lime-500';
  if (strength >= 0.4) return 'text-yellow-500';
  if (strength >= 0.2) return 'text-orange-500';
  return 'text-red-500';
}

/**
 * Calculate urgency score for prioritizing reviews
 * Higher = more urgent (closer to or past due)
 */
export function calculateReviewUrgency(
  nextReviewDate: Date,
  memoryStrength: number
): number {
  const now = new Date();
  const daysUntilDue =
    (nextReviewDate.getTime() - now.getTime()) / (1000 * 60 * 60 * 24);

  // Base urgency from days until due (negative = overdue)
  let urgency = -daysUntilDue;

  // Boost urgency for weak memories
  if (memoryStrength < 0.5) {
    urgency += (0.5 - memoryStrength) * 10;
  }

  return urgency;
}

/**
 * Get recommended review count for today
 * Based on user's available time and backlog
 */
export function getRecommendedReviewCount(
  dueCount: number,
  availableMinutes: number = 30,
  avgReviewMinutes: number = 3
): number {
  const maxByTime = Math.floor(availableMinutes / avgReviewMinutes);
  const recommended = Math.min(dueCount, maxByTime, 20); // Cap at 20 per session
  return Math.max(recommended, Math.min(dueCount, 5)); // At least 5 if there are due reviews
}
