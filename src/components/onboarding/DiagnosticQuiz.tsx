import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '@/contexts/AuthContext';
import { db, supabase } from '@/services/supabase';
import { generateQuestions } from '@/services/ai';
import { storage } from '@/utils/helpers';
import { getDefaultDifficultyForGrade } from '@/utils/difficulty';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import type { Question } from '@/types';
import { cn } from '@/utils/helpers';
import { CheckCircle2, XCircle } from 'lucide-react';

export default function DiagnosticQuiz() {
  const navigate = useNavigate();
  const { user } = useAuth();
  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [answers, setAnswers] = useState<string[]>([]);
  const [loading, setLoading] = useState(true);
  const [submitting, setSubmitting] = useState(false);
  const [showFeedback, setShowFeedback] = useState(false);

  useEffect(() => {
    loadDiagnosticQuestions();
  }, []);

  const loadDiagnosticQuestions = async () => {
    try {
      const onboardingData = storage.get<any>('learnlit_onboarding', {});
      const gradeLevel = onboardingData.gradeLevel || 5;
      const primaryInterest = onboardingData.primaryInterest || 'general';

      // Get subject name
      const subjects = await db.getAllSubjects();
      const subject = subjects.find(s => s.id === onboardingData.subject);
      const subjectName = subject?.name || 'Math';

      // Generate diagnostic questions
      const diagnosticQuestions = await generateQuestions({
        topicId: 'diagnostic',
        topicName: `${subjectName} Assessment`,
        concepts: ['basic understanding', 'problem solving', 'critical thinking'],
        interestTheme: primaryInterest,
        difficultyLevel: getDefaultDifficultyForGrade(gradeLevel),
        gradeLevel,
        count: 5,
        questionTypes: ['multiple_choice'],
      });

      setQuestions(diagnosticQuestions);
      setAnswers(new Array(diagnosticQuestions.length).fill(''));
    } catch (error) {
      console.error('Error loading diagnostic questions:', error);
      // Skip diagnostic on error
      completeOnboarding(5);
    } finally {
      setLoading(false);
    }
  };

  const handleAnswer = (answer: string) => {
    const newAnswers = [...answers];
    newAnswers[currentQuestion] = answer;
    setAnswers(newAnswers);
    setShowFeedback(true);

    // Auto-advance after 1.5 seconds
    setTimeout(() => {
      setShowFeedback(false);
      if (currentQuestion < questions.length - 1) {
        setCurrentQuestion(prev => prev + 1);
      } else {
        handleComplete();
      }
    }, 1500);
  };

  const handleComplete = async () => {
    setSubmitting(true);

    try {
      // Calculate score
      const correctAnswers = answers.filter(
        (answer, idx) => answer === questions[idx]?.correct_answer
      ).length;
      const score = Math.round((correctAnswers / questions.length) * 100);

      // Determine difficulty based on score
      let suggestedDifficulty = 5;
      if (score >= 90) suggestedDifficulty = 7;
      else if (score >= 70) suggestedDifficulty = 6;
      else if (score >= 50) suggestedDifficulty = 5;
      else if (score >= 30) suggestedDifficulty = 4;
      else suggestedDifficulty = 3;

      await completeOnboarding(suggestedDifficulty);
    } catch (error) {
      console.error('Error completing diagnostic:', error);
    } finally {
      setSubmitting(false);
    }
  };

  const completeOnboarding = async (difficulty: number) => {
    const onboardingData = storage.get<any>('learnlit_onboarding', {});

    try {
      // Create user profile if authenticated
      if (user) {
        const { error } = await supabase.from('users').insert({
          id: user.id,
          email: user.email,
          name: onboardingData.name,
          age: onboardingData.age,
          grade_level: onboardingData.gradeLevel,
          primary_interest: onboardingData.primaryInterest,
          difficulty_level: difficulty,
        });

        if (error) throw error;

        // Add user interests
        if (onboardingData.interests) {
          for (const interestId of onboardingData.interests) {
            await db.addUserInterest(
              user.id,
              interestId,
              interestId === onboardingData.primaryInterest
            );
          }
        }
      }

      // Mark onboarding as complete (preserve the data for Dashboard to use)
      storage.set('learnlit_onboarding', {
        ...onboardingData,
        completed: true,
        difficulty_level: difficulty,
      });

      // Navigate to home
      navigate('/');
    } catch (error) {
      console.error('Error completing onboarding:', error);
      // Still mark as complete and navigate to home even if there's an error saving to DB
      storage.set('learnlit_onboarding', {
        ...onboardingData,
        completed: true,
        difficulty_level: difficulty,
      });
      navigate('/');
    }
  };

  if (loading) {
    return <Loading fullScreen message="Preparing your assessment..." />;
  }

  if (submitting) {
    return <Loading fullScreen message="Finishing up..." />;
  }

  const question = questions[currentQuestion];
  const isAnswered = !!answers[currentQuestion];
  const isCorrect = answers[currentQuestion] === question?.correct_answer;

  return (
    <div className="min-h-screen bg-gradient-primary p-4 py-8">
      <div className="container-app max-w-2xl">
        <Card className="animate-fade-in">
          <div className="mb-8">
            <div className="flex items-center justify-between mb-4">
              <h1 className="text-2xl font-bold text-gray-900 dark:text-white">
                Quick Assessment
              </h1>
              <span className="text-sm text-gray-500 dark:text-gray-400">
                Question {currentQuestion + 1} of {questions.length}
              </span>
            </div>
            <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
              <div
                className="bg-primary-600 h-2 rounded-full transition-all duration-300"
                style={{ width: `${((currentQuestion + 1) / questions.length) * 100}%` }}
              />
            </div>
          </div>

          {question && (
            <div className="space-y-6">
              <div className="bg-gray-50 dark:bg-gray-800 p-6 rounded-xl">
                <p className="text-lg text-gray-900 dark:text-white">
                  {question.question}
                </p>
              </div>

              <div className="space-y-3">
                {question.options?.map((option, idx) => {
                  const isSelected = answers[currentQuestion] === option;
                  const showCorrect = showFeedback && option === question.correct_answer;
                  const showWrong = showFeedback && isSelected && !isCorrect;

                  return (
                    <button
                      key={idx}
                      onClick={() => !isAnswered && handleAnswer(option)}
                      disabled={isAnswered}
                      className={cn(
                        'w-full p-4 rounded-xl border-2 text-left transition-all duration-200 flex items-center justify-between',
                        isAnswered
                          ? showCorrect
                            ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
                            : showWrong
                            ? 'border-red-500 bg-red-50 dark:bg-red-900/20'
                            : 'border-gray-200 dark:border-gray-700'
                          : isSelected
                          ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20'
                          : 'border-gray-200 dark:border-gray-700 hover:border-gray-300 dark:hover:border-gray-600'
                      )}
                    >
                      <span className={cn(
                        'text-gray-900 dark:text-white',
                        showCorrect && 'font-semibold text-green-700 dark:text-green-300',
                        showWrong && 'text-red-700 dark:text-red-300'
                      )}>
                        {option}
                      </span>

                      {showCorrect && <CheckCircle2 className="w-6 h-6 text-green-600" />}
                      {showWrong && <XCircle className="w-6 h-6 text-red-600" />}
                    </button>
                  );
                })}
              </div>

              {showFeedback && (
                <div className={cn(
                  'p-4 rounded-xl animate-fade-in',
                  isCorrect
                    ? 'bg-green-50 dark:bg-green-900/20 text-green-800 dark:text-green-300'
                    : 'bg-orange-50 dark:bg-orange-900/20 text-orange-800 dark:text-orange-300'
                )}>
                  {isCorrect ? (
                    <p>✨ Great job! That's correct!</p>
                  ) : (
                    <p>That's okay! We'll work on this together.</p>
                  )}
                </div>
              )}
            </div>
          )}

          <div className="mt-8 text-center">
            <p className="text-sm text-gray-500 dark:text-gray-400">
              Step 4 of 4 - Almost done!
            </p>
            <div className="mt-2 w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
              <div className="bg-primary-600 h-2 rounded-full w-full transition-all duration-300" />
            </div>
          </div>
        </Card>
      </div>
    </div>
  );
}
