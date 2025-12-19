import { createContext, useContext, useState, ReactNode } from 'react';
import { generateExample, simplifyExplanation, rethemeContent } from '@/services/ai';
import type { Lesson, LessonContextValue } from '@/types';

const LessonContext = createContext<LessonContextValue | undefined>(undefined);

interface LessonProviderProps {
  children: ReactNode;
  lesson: Lesson;
  interestTheme: string;
  gradeLevel: number;
}

export function LessonProvider({ children, lesson, interestTheme, gradeLevel }: LessonProviderProps) {
  const [currentSection, setCurrentSection] = useState(0);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string>();

  const totalSections = lesson.content.sections.length;

  const nextSection = () => {
    if (currentSection < totalSections - 1) {
      setCurrentSection(prev => prev + 1);
    }
  };

  const previousSection = () => {
    if (currentSection > 0) {
      setCurrentSection(prev => prev - 1);
    }
  };

  const requestExample = async (concept: string): Promise<string> => {
    setLoading(true);
    setError(undefined);

    try {
      const currentExamples = lesson.content.sections[currentSection].examples;

      const newExample = await generateExample({
        concept,
        interestTheme,
        difficultyLevel: 5, // Could be dynamic
        previousExamples: currentExamples,
      });

      return newExample;
    } catch (err) {
      const errorMsg = err instanceof Error ? err.message : 'Failed to generate example';
      setError(errorMsg);
      throw err;
    } finally {
      setLoading(false);
    }
  };

  const requestSimplification = async (): Promise<string> => {
    setLoading(true);
    setError(undefined);

    try {
      const currentExplanation = lesson.content.sections[currentSection].explanation;

      const simplified = await simplifyExplanation({
        originalText: currentExplanation,
        targetGradeLevel: Math.max(1, gradeLevel - 2), // Simplify by 2 grades
      });

      return simplified;
    } catch (err) {
      const errorMsg = err instanceof Error ? err.message : 'Failed to simplify explanation';
      setError(errorMsg);
      throw err;
    } finally {
      setLoading(false);
    }
  };

  const changeTheme = async (newTheme: string): Promise<void> => {
    setLoading(true);
    setError(undefined);

    try {
      const currentExplanation = lesson.content.sections[currentSection].explanation;
      const concept = lesson.content.sections[currentSection].title;

      const rethemed = await rethemeContent(currentExplanation, newTheme, concept);

      // Update the lesson content
      lesson.content.sections[currentSection].explanation = rethemed;

      // Could also regenerate examples here
    } catch (err) {
      const errorMsg = err instanceof Error ? err.message : 'Failed to change theme';
      setError(errorMsg);
      throw err;
    } finally {
      setLoading(false);
    }
  };

  const value: LessonContextValue = {
    currentLesson: lesson,
    currentSection,
    totalSections,
    loading,
    error,
    nextSection,
    previousSection,
    requestExample,
    requestSimplification,
    changeTheme,
  };

  return <LessonContext.Provider value={value}>{children}</LessonContext.Provider>;
}

export function useLesson() {
  const context = useContext(LessonContext);
  if (context === undefined) {
    throw new Error('useLesson must be used within a LessonProvider');
  }
  return context;
}
