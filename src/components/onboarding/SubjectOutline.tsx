import { useState } from 'react';
import Card from '../shared/Card';
import Button from '../shared/Button';
import {
  SUBJECT_OUTLINES,
  getSubjectOutlineForGrade,
  getRecommendedCoursePath
} from '@/services/prompts';
import { BookOpen, Target, GraduationCap, ChevronRight } from 'lucide-react';
import { cn } from '@/utils/helpers';

interface SubjectOutlineProps {
  subjectId: string;
  grade: number;
  onSelectPath: (data: {
    mode: 'complete-course' | 'focused-material';
    subSubjects?: string[];
    topics?: string[];
  }) => void;
}

export default function SubjectOutline({ subjectId, grade, onSelectPath }: SubjectOutlineProps) {
  const [learningMode, setLearningMode] = useState<'complete-course' | 'focused-material' | null>(null);
  const [selectedLevel, setSelectedLevel] = useState<'beginner' | 'intermediate' | 'advanced'>('beginner');
  const [selectedSubSubjects, setSelectedSubSubjects] = useState<string[]>([]);

  const outline = SUBJECT_OUTLINES[subjectId];
  const availableSubSubjects = getSubjectOutlineForGrade(subjectId, grade as any);
  const coursePath = getRecommendedCoursePath(subjectId, selectedLevel);

  if (!outline) {
    return <div>Subject not found</div>;
  }

  const toggleSubSubject = (subId: string) => {
    setSelectedSubSubjects(prev =>
      prev.includes(subId)
        ? prev.filter(id => id !== subId)
        : [...prev, subId]
    );
  };

  const handleContinue = () => {
    if (learningMode === 'complete-course') {
      onSelectPath({ mode: 'complete-course', topics: coursePath });
    } else {
      onSelectPath({ mode: 'focused-material', subSubjects: selectedSubSubjects });
    }
  };

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 p-4 py-8">
      <div className="container-app max-w-6xl">
        <div className="mb-8 animate-fade-in">
          <h1 className="text-4xl font-bold text-gray-900 dark:text-white mb-3">
            {outline.name} Learning Path
          </h1>
          <p className="text-xl text-gray-600 dark:text-gray-300">
            {outline.description}
          </p>
        </div>

        {/* Step 1: Choose Learning Mode */}
        <Card className="mb-6">
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-4 flex items-center">
            <BookOpen className="w-6 h-6 mr-2" />
            Step 1: Choose Your Learning Path
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <button
              onClick={() => setLearningMode('complete-course')}
              className={cn(
                'p-6 rounded-xl border-2 transition-all text-left',
                learningMode === 'complete-course'
                  ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20 shadow-lg'
                  : 'border-gray-200 dark:border-gray-700 hover:border-gray-300'
              )}
            >
              <GraduationCap className={cn(
                'w-10 h-10 mb-3',
                learningMode === 'complete-course' ? 'text-primary-600' : 'text-gray-400'
              )} />
              <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-2">
                Complete Course
              </h3>
              <p className="text-sm text-gray-600 dark:text-gray-300 mb-3">
                Comprehensive learning path covering all major topics from start to finish
              </p>
              <ul className="text-xs text-gray-500 dark:text-gray-400 space-y-1">
                <li>✓ Structured curriculum</li>
                <li>✓ Progressive skill building</li>
                <li>✓ All foundational concepts</li>
              </ul>
            </button>

            <button
              onClick={() => setLearningMode('focused-material')}
              className={cn(
                'p-6 rounded-xl border-2 transition-all text-left',
                learningMode === 'focused-material'
                  ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20 shadow-lg'
                  : 'border-gray-200 dark:border-gray-700 hover:border-gray-300'
              )}
            >
              <Target className={cn(
                'w-10 h-10 mb-3',
                learningMode === 'focused-material' ? 'text-primary-600' : 'text-gray-400'
              )} />
              <h3 className="text-xl font-bold text-gray-900 dark:text-white mb-2">
                Focused Practice
              </h3>
              <p className="text-sm text-gray-600 dark:text-gray-300 mb-3">
                Target specific topics you want to learn or areas that need improvement
              </p>
              <ul className="text-xs text-gray-500 dark:text-gray-400 space-y-1">
                <li>✓ Choose your own topics</li>
                <li>✓ Deep dive into specifics</li>
                <li>✓ Flexible learning</li>
              </ul>
            </button>
          </div>
        </Card>

        {/* Step 2: Complete Course - Select Level */}
        {learningMode === 'complete-course' && (
          <Card className="mb-6 animate-fade-in">
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-4">
              Step 2: Select Your Starting Level
            </h2>
            <div className="flex gap-3 mb-4">
              {(['beginner', 'intermediate', 'advanced'] as const).map(level => (
                <button
                  key={level}
                  onClick={() => setSelectedLevel(level)}
                  className={cn(
                    'flex-1 px-4 py-3 rounded-lg font-medium transition-all capitalize',
                    selectedLevel === level
                      ? 'bg-primary-600 text-white shadow-lg'
                      : 'bg-gray-100 text-gray-700 hover:bg-gray-200 dark:bg-gray-700 dark:text-gray-300'
                  )}
                >
                  {level}
                </button>
              ))}
            </div>
            <div className="bg-blue-50 dark:bg-blue-900/20 p-4 rounded-lg">
              <h3 className="font-semibold text-gray-900 dark:text-white mb-2">
                Your {selectedLevel} course will cover:
              </h3>
              <ul className="space-y-1">
                {coursePath.map((topic, idx) => (
                  <li key={idx} className="flex items-center text-gray-700 dark:text-gray-300">
                    <ChevronRight className="w-4 h-4 mr-2 text-primary-600" />
                    {topic}
                  </li>
                ))}
              </ul>
            </div>
          </Card>
        )}

        {/* Step 2: Focused Material - Select Topics */}
        {learningMode === 'focused-material' && (
          <Card className="mb-6 animate-fade-in">
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-4">
              Step 2: Choose Topics to Focus On
            </h2>
            <p className="text-gray-600 dark:text-gray-300 mb-4">
              Select one or more topics you'd like to practice:
            </p>
            <div className="space-y-3">
              {availableSubSubjects.map(subSubject => (
                <button
                  key={subSubject.id}
                  onClick={() => toggleSubSubject(subSubject.id)}
                  className={cn(
                    'w-full p-4 rounded-xl border-2 transition-all text-left',
                    selectedSubSubjects.includes(subSubject.id)
                      ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20'
                      : 'border-gray-200 dark:border-gray-700 hover:border-gray-300'
                  )}
                >
                  <div className="flex items-start justify-between">
                    <div className="flex-1">
                      <h3 className="text-lg font-bold text-gray-900 dark:text-white mb-1">
                        {subSubject.name}
                      </h3>
                      <p className="text-sm text-gray-600 dark:text-gray-300 mb-2">
                        {subSubject.description}
                      </p>
                      <div className="flex flex-wrap gap-2">
                        {subSubject.topics.map((topic, idx) => (
                          <span
                            key={idx}
                            className="px-2 py-1 text-xs rounded-full bg-gray-100 text-gray-600 dark:bg-gray-700 dark:text-gray-300"
                          >
                            {topic}
                          </span>
                        ))}
                      </div>
                    </div>
                    <div className={cn(
                      'w-6 h-6 rounded-full border-2 flex items-center justify-center ml-3 flex-shrink-0',
                      selectedSubSubjects.includes(subSubject.id)
                        ? 'border-primary-600 bg-primary-600'
                        : 'border-gray-300'
                    )}>
                      {selectedSubSubjects.includes(subSubject.id) && (
                        <svg className="w-4 h-4 text-white" fill="currentColor" viewBox="0 0 20 20">
                          <path d="M16.707 5.293a1 1 0 010 1.414l-8 8a1 1 0 01-1.414 0l-4-4a1 1 0 011.414-1.414L8 12.586l7.293-7.293a1 1 0 011.414 0z" />
                        </svg>
                      )}
                    </div>
                  </div>
                </button>
              ))}
            </div>
          </Card>
        )}

        {/* Continue Button */}
        {learningMode && (learningMode === 'complete-course' || selectedSubSubjects.length > 0) && (
          <div className="flex justify-center animate-fade-in">
            <Button
              variant="primary"
              size="lg"
              onClick={handleContinue}
            >
              Start Learning
              <ChevronRight className="w-5 h-5 ml-2" />
            </Button>
          </div>
        )}
      </div>
    </div>
  );
}
