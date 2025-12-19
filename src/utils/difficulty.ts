import type { QuestionResponse } from '@/types';

/**
 * Calculate difficulty adjustment based on recent performance
 */
export function calculateDifficultyAdjustment(
  recentResponses: QuestionResponse[],
  currentDifficulty: number
): { newDifficulty: number; reason: string } | null {
  // Need at least 3 consecutive responses to adjust
  if (recentResponses.length < 3) {
    return null;
  }

  const last3 = recentResponses.slice(-3);
  const allCorrect = last3.every(r => r.is_correct);
  const allIncorrect = last3.every(r => !r.is_correct);

  // Increase difficulty if 3 consecutive correct
  if (allCorrect && currentDifficulty < 10) {
    return {
      newDifficulty: Math.min(currentDifficulty + 1, 10),
      reason: 'Three consecutive correct answers'
    };
  }

  // Decrease difficulty if 3 consecutive incorrect
  if (allIncorrect && currentDifficulty > 1) {
    return {
      newDifficulty: Math.max(currentDifficulty - 1, 1),
      reason: 'Three consecutive incorrect answers'
    };
  }

  return null;
}

/**
 * Get difficulty level description
 */
export function getDifficultyDescription(level: number): string {
  if (level <= 2) return 'Very Easy';
  if (level <= 4) return 'Easy';
  if (level <= 6) return 'Medium';
  if (level <= 8) return 'Hard';
  return 'Very Hard';
}

/**
 * Determine appropriate difficulty for grade level
 */
export function getDefaultDifficultyForGrade(gradeLevel: number): number {
  // K-1: difficulty 2-3
  if (gradeLevel <= 1) return 2;
  // 2-3: difficulty 4-5
  if (gradeLevel <= 3) return 4;
  // 4-5: difficulty 5-6
  if (gradeLevel <= 5) return 5;
  // 6-7: difficulty 6-7
  if (gradeLevel <= 7) return 6;
  // 8+: difficulty 7-8
  return 7;
}

/**
 * Calculate success rate from responses
 */
export function calculateSuccessRate(responses: QuestionResponse[]): number {
  if (responses.length === 0) return 0;

  const correctCount = responses.filter(r => r.is_correct).length;
  return Math.round((correctCount / responses.length) * 100);
}

/**
 * Determine if student is struggling with a concept
 */
export function isStrugglingWithConcept(
  responses: QuestionResponse[],
  concept: string,
  threshold = 0.5 // 50% or less correct
): boolean {
  const conceptResponses = responses.filter(r => r.concept === concept);

  if (conceptResponses.length < 2) {
    return false; // Need at least 2 questions to determine struggle
  }

  const successRate = calculateSuccessRate(conceptResponses);
  return successRate <= (threshold * 100);
}

/**
 * Get struggling concepts from responses
 */
export function getStrugglingConcepts(
  responses: QuestionResponse[]
): string[] {
  const concepts = [...new Set(responses.map(r => r.concept))];

  return concepts.filter(concept =>
    isStrugglingWithConcept(responses, concept)
  );
}

/**
 * Calculate average time to answer
 */
export function getAverageResponseTime(responses: QuestionResponse[]): number {
  const responsesWithTime = responses.filter(r => r.time_to_answer);

  if (responsesWithTime.length === 0) return 0;

  const totalTime = responsesWithTime.reduce(
    (sum, r) => sum + (r.time_to_answer || 0),
    0
  );

  return Math.round(totalTime / responsesWithTime.length);
}

/**
 * Determine if student is excelling (for positive reinforcement)
 */
export function isExcelling(responses: QuestionResponse[]): boolean {
  if (responses.length < 5) return false;

  const recent = responses.slice(-5);
  const correctCount = recent.filter(r => r.is_correct).length;

  // 80% or higher on recent questions
  return (correctCount / recent.length) >= 0.8;
}

/**
 * Get performance level description
 */
export function getPerformanceLevel(successRate: number): {
  level: 'excellent' | 'good' | 'fair' | 'needs-improvement';
  message: string;
  color: string;
} {
  if (successRate >= 90) {
    return {
      level: 'excellent',
      message: 'Excellent work!',
      color: 'green'
    };
  }

  if (successRate >= 70) {
    return {
      level: 'good',
      message: 'Great job!',
      color: 'blue'
    };
  }

  if (successRate >= 50) {
    return {
      level: 'fair',
      message: 'Keep practicing!',
      color: 'yellow'
    };
  }

  return {
    level: 'needs-improvement',
    message: "Let's work on this together!",
    color: 'orange'
  };
}
