import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useSpacedRepetition, ReviewItem } from '@/contexts/SpacedRepetitionContext';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { generateQuestions } from '@/services/ai';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Header from '../shared/Header';
import {
  Brain,
  ChevronRight,
  Check,
  X,
  Lightbulb,
  Trophy,
  RotateCcw,
} from 'lucide-react';
import type { Question } from '@/types';

interface ReviewSessionState {
  currentItemIndex: number;
  questions: Question[];
  currentQuestionIndex: number;
  answers: Map<number, { answer: string; isCorrect: boolean }>;
  hintsUsed: number;
  showHint: boolean;
  showResult: boolean;
  isCorrect: boolean;
  feedback: string;
  startTime: number;
}

export default function ReviewSession() {
  const navigate = useNavigate();
  const { profile } = useUser();
  const { settings } = useSettings();
  const {
    dueReviews,
    stats,
    loading: srsLoading,
    recordReviewComplete,
    getMemoryStrengthLabel,
    getMemoryStrengthColor,
  } = useSpacedRepetition();

  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);
  const [sessionComplete, setSessionComplete] = useState(false);
  const [state, setState] = useState<ReviewSessionState>({
    currentItemIndex: 0,
    questions: [],
    currentQuestionIndex: 0,
    answers: new Map(),
    hintsUsed: 0,
    showHint: false,
    showResult: false,
    isCorrect: false,
    feedback: '',
    startTime: Date.now(),
  });
  const [sessionResults, setSessionResults] = useState<{
    topicsReviewed: number;
    totalCorrect: number;
    totalQuestions: number;
    timeSpent: number;
  }>({ topicsReviewed: 0, totalCorrect: 0, totalQuestions: 0, timeSpent: 0 });

  const currentItem = dueReviews[state.currentItemIndex];
  const currentQuestion = state.questions[state.currentQuestionIndex];
  const questionsPerTopic = settings?.learning?.practiceQuestionCount || 5;

  // Load questions for current review item
  useEffect(() => {
    if (currentItem && !srsLoading) {
      loadQuestionsForTopic(currentItem);
    }
  }, [state.currentItemIndex, currentItem, srsLoading]);

  const loadQuestionsForTopic = async (item: ReviewItem) => {
    if (!profile || !item.topic) return;

    setLoading(true);
    setError(null);

    try {
      const questions = await generateQuestions({
        topicId: item.topicId,
        topicName: item.topic.name,
        concepts: [], // Will use topic name
        interestTheme: profile.primary_interest || 'general',
        difficultyLevel: profile.difficulty_level || 5,
        gradeLevel: profile.grade_level || 7,
        count: Math.min(questionsPerTopic, 5), // Max 5 for reviews
        questionTypes: ['multiple_choice', 'true_false'],
      });

      setState((prev) => ({
        ...prev,
        questions,
        currentQuestionIndex: 0,
        answers: new Map(),
        hintsUsed: 0,
        showHint: false,
        showResult: false,
        startTime: Date.now(),
      }));
    } catch (err) {
      console.error('Failed to load review questions:', err);
      setError('Failed to load questions. Please try again.');
    } finally {
      setLoading(false);
    }
  };

  const handleAnswer = (answer: string) => {
    if (state.showResult) return;

    const isCorrect = answer.toLowerCase() === currentQuestion.correct_answer.toLowerCase();
    const feedback = isCorrect
      ? 'Great job! You remembered this correctly.'
      : `Not quite. The correct answer is: ${currentQuestion.correct_answer}`;

    setState((prev) => ({
      ...prev,
      answers: new Map(prev.answers).set(prev.currentQuestionIndex, { answer, isCorrect }),
      showResult: true,
      isCorrect,
      feedback,
    }));
  };

  const handleShowHint = () => {
    setState((prev) => ({
      ...prev,
      showHint: true,
      hintsUsed: prev.hintsUsed + 1,
    }));
  };

  const handleNextQuestion = async () => {
    const nextQuestionIndex = state.currentQuestionIndex + 1;

    if (nextQuestionIndex >= state.questions.length) {
      // Topic review complete, record results
      await recordTopicReview();
    } else {
      // Next question
      setState((prev) => ({
        ...prev,
        currentQuestionIndex: nextQuestionIndex,
        showResult: false,
        showHint: false,
      }));
    }
  };

  const recordTopicReview = async () => {
    if (!currentItem) return;

    const correctAnswers = Array.from(state.answers.values()).filter((a) => a.isCorrect).length;
    const totalQuestions = state.questions.length;
    const timeSpent = Math.round((Date.now() - state.startTime) / 1000);

    try {
      await recordReviewComplete(currentItem.id, {
        qualityRating: 0, // Will be calculated from results
        questionsAttempted: totalQuestions,
        questionsCorrect: correctAnswers,
        hintsUsed: state.hintsUsed,
        timeSpentSeconds: timeSpent,
      });

      // Update session results
      setSessionResults((prev) => ({
        topicsReviewed: prev.topicsReviewed + 1,
        totalCorrect: prev.totalCorrect + correctAnswers,
        totalQuestions: prev.totalQuestions + totalQuestions,
        timeSpent: prev.timeSpent + timeSpent,
      }));

      // Move to next topic or end session
      const nextItemIndex = state.currentItemIndex + 1;
      if (nextItemIndex >= dueReviews.length) {
        setSessionComplete(true);
      } else {
        setState((prev) => ({
          ...prev,
          currentItemIndex: nextItemIndex,
        }));
      }
    } catch (err) {
      console.error('Failed to record review:', err);
      setError('Failed to save review. Please try again.');
    }
  };

  // No reviews due
  if (!srsLoading && dueReviews.length === 0) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
        <Header
          title="Review Session"
          subtitle="Keep your knowledge fresh!"
          showBackButton
          onBackClick={() => navigate('/')}
        />
        <main className="container-app py-8">
          <Card className="text-center py-12">
            <div className="text-6xl mb-4">🎉</div>
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
              All Caught Up!
            </h2>
            <p className="text-gray-600 dark:text-gray-400 mb-6">
              You have no topics due for review right now.
              {stats.dueThisWeek > 0 && (
                <span className="block mt-2">
                  {stats.dueThisWeek} review{stats.dueThisWeek > 1 ? 's' : ''} coming this week.
                </span>
              )}
            </p>
            <button onClick={() => navigate('/')} className="btn-primary">
              Return to Dashboard
            </button>
          </Card>
        </main>
      </div>
    );
  }

  // Session complete
  if (sessionComplete) {
    const accuracy = sessionResults.totalQuestions > 0
      ? Math.round((sessionResults.totalCorrect / sessionResults.totalQuestions) * 100)
      : 0;

    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
        <Header
          title="Review Complete!"
          subtitle="Great work keeping your memory strong!"
        />
        <main className="container-app py-8">
          <Card className="text-center py-8">
            <div className="text-6xl mb-4">
              {accuracy >= 80 ? '🏆' : accuracy >= 60 ? '👍' : '💪'}
            </div>
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-4">
              Session Complete!
            </h2>

            <div className="grid grid-cols-2 sm:grid-cols-4 gap-4 mb-8">
              <div className="bg-blue-50 dark:bg-blue-900/20 p-4 rounded-lg">
                <p className="text-2xl font-bold text-blue-600 dark:text-blue-400">
                  {sessionResults.topicsReviewed}
                </p>
                <p className="text-sm text-blue-600/70 dark:text-blue-400/70">
                  Topics Reviewed
                </p>
              </div>
              <div className="bg-green-50 dark:bg-green-900/20 p-4 rounded-lg">
                <p className="text-2xl font-bold text-green-600 dark:text-green-400">
                  {accuracy}%
                </p>
                <p className="text-sm text-green-600/70 dark:text-green-400/70">
                  Accuracy
                </p>
              </div>
              <div className="bg-purple-50 dark:bg-purple-900/20 p-4 rounded-lg">
                <p className="text-2xl font-bold text-purple-600 dark:text-purple-400">
                  {sessionResults.totalCorrect}/{sessionResults.totalQuestions}
                </p>
                <p className="text-sm text-purple-600/70 dark:text-purple-400/70">
                  Correct Answers
                </p>
              </div>
              <div className="bg-amber-50 dark:bg-amber-900/20 p-4 rounded-lg">
                <p className="text-2xl font-bold text-amber-600 dark:text-amber-400">
                  {formatTime(sessionResults.timeSpent)}
                </p>
                <p className="text-sm text-amber-600/70 dark:text-amber-400/70">
                  Time Spent
                </p>
              </div>
            </div>

            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <button onClick={() => navigate('/')} className="btn-secondary">
                Return to Dashboard
              </button>
              {stats.dueNow > sessionResults.topicsReviewed && (
                <button
                  onClick={() => {
                    setSessionComplete(false);
                    setSessionResults({ topicsReviewed: 0, totalCorrect: 0, totalQuestions: 0, timeSpent: 0 });
                    setState((prev) => ({ ...prev, currentItemIndex: 0 }));
                  }}
                  className="btn-primary"
                >
                  Review More Topics
                </button>
              )}
            </div>
          </Card>
        </main>
      </div>
    );
  }

  // Loading state
  if (loading || srsLoading) {
    return <Loading fullScreen message="Loading review questions..." />;
  }

  // Error state
  if (error) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
        <Header title="Review Session" showBackButton onBackClick={() => navigate('/')} />
        <main className="container-app py-8">
          <Card className="text-center py-8">
            <div className="text-6xl mb-4">😕</div>
            <h2 className="text-xl font-bold text-gray-900 dark:text-white mb-2">{error}</h2>
            <button onClick={() => loadQuestionsForTopic(currentItem)} className="btn-primary mt-4">
              <RotateCcw className="w-4 h-4 mr-2" />
              Try Again
            </button>
          </Card>
        </main>
      </div>
    );
  }

  if (!currentItem || !currentQuestion) {
    return <Loading fullScreen message="Preparing review..." />;
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <Header
        title={
          <div className="flex items-center gap-2">
            <Brain className="w-5 h-5 text-primary-500" />
            <span>Review: {currentItem.topic?.name || 'Topic'}</span>
          </div>
        }
        subtitle={`Topic ${state.currentItemIndex + 1} of ${dueReviews.length}`}
        showBackButton
        onBackClick={() => navigate('/')}
      />

      <main className="container-app py-8 max-w-2xl mx-auto">
        {/* Progress indicators */}
        <div className="mb-6">
          {/* Topic progress */}
          <div className="flex items-center justify-between text-sm text-gray-600 dark:text-gray-400 mb-2">
            <span>Topic Progress</span>
            <span>{state.currentItemIndex + 1} / {dueReviews.length}</span>
          </div>
          <div className="h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden mb-4">
            <div
              className="h-full bg-primary-500 transition-all duration-300"
              style={{ width: `${((state.currentItemIndex) / dueReviews.length) * 100}%` }}
            />
          </div>

          {/* Question progress */}
          <div className="flex items-center justify-between text-sm text-gray-600 dark:text-gray-400 mb-2">
            <span>Question {state.currentQuestionIndex + 1} of {state.questions.length}</span>
            <span className={getMemoryStrengthColor(currentItem.memoryStrength)}>
              Memory: {getMemoryStrengthLabel(currentItem.memoryStrength)}
            </span>
          </div>
          <div className="flex gap-1">
            {state.questions.map((_, idx) => {
              const answer = state.answers.get(idx);
              let bgClass = 'bg-gray-200 dark:bg-gray-700';
              if (answer) {
                bgClass = answer.isCorrect
                  ? 'bg-green-500'
                  : 'bg-red-500';
              } else if (idx === state.currentQuestionIndex) {
                bgClass = 'bg-primary-500';
              }
              return <div key={idx} className={`h-2 flex-1 rounded-full ${bgClass}`} />;
            })}
          </div>
        </div>

        {/* Question Card */}
        <Card className="mb-6">
          <div className="mb-6">
            <span className="inline-block px-2 py-1 text-xs font-medium bg-gray-100 dark:bg-gray-800 text-gray-600 dark:text-gray-400 rounded mb-3">
              {currentQuestion.concept}
            </span>
            <h2 className="text-xl font-semibold text-gray-900 dark:text-white">
              {currentQuestion.question}
            </h2>
          </div>

          {/* Options */}
          {currentQuestion.type === 'multiple_choice' && currentQuestion.options && (
            <div className="space-y-3">
              {currentQuestion.options.map((option, idx) => {
                const isSelected = state.answers.get(state.currentQuestionIndex)?.answer === option;
                const isCorrectAnswer = option.toLowerCase() === currentQuestion.correct_answer.toLowerCase();
                const showCorrect = state.showResult && isCorrectAnswer;
                const showWrong = state.showResult && isSelected && !isCorrectAnswer;

                return (
                  <button
                    key={idx}
                    onClick={() => handleAnswer(option)}
                    disabled={state.showResult}
                    className={`w-full p-4 text-left rounded-lg border-2 transition-all ${
                      showCorrect
                        ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
                        : showWrong
                        ? 'border-red-500 bg-red-50 dark:bg-red-900/20'
                        : isSelected
                        ? 'border-primary-500 bg-primary-50 dark:bg-primary-900/20'
                        : 'border-gray-200 dark:border-gray-700 hover:border-primary-300 dark:hover:border-primary-700'
                    } ${state.showResult ? 'cursor-default' : 'cursor-pointer'}`}
                  >
                    <div className="flex items-center justify-between">
                      <span className="text-gray-900 dark:text-white">{option}</span>
                      {showCorrect && <Check className="w-5 h-5 text-green-500" />}
                      {showWrong && <X className="w-5 h-5 text-red-500" />}
                    </div>
                  </button>
                );
              })}
            </div>
          )}

          {/* True/False */}
          {currentQuestion.type === 'true_false' && (
            <div className="flex gap-4">
              {['True', 'False'].map((option) => {
                const isSelected = state.answers.get(state.currentQuestionIndex)?.answer === option;
                const isCorrectAnswer = option.toLowerCase() === currentQuestion.correct_answer.toLowerCase();
                const showCorrect = state.showResult && isCorrectAnswer;
                const showWrong = state.showResult && isSelected && !isCorrectAnswer;

                return (
                  <button
                    key={option}
                    onClick={() => handleAnswer(option)}
                    disabled={state.showResult}
                    className={`flex-1 p-4 text-center rounded-lg border-2 transition-all ${
                      showCorrect
                        ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
                        : showWrong
                        ? 'border-red-500 bg-red-50 dark:bg-red-900/20'
                        : isSelected
                        ? 'border-primary-500 bg-primary-50 dark:bg-primary-900/20'
                        : 'border-gray-200 dark:border-gray-700 hover:border-primary-300 dark:hover:border-primary-700'
                    } ${state.showResult ? 'cursor-default' : 'cursor-pointer'}`}
                  >
                    <span className="font-medium text-gray-900 dark:text-white">{option}</span>
                  </button>
                );
              })}
            </div>
          )}
        </Card>

        {/* Hint Section */}
        {!state.showResult && currentQuestion.hint && (
          <div className="mb-6">
            {state.showHint ? (
              <Card className="bg-amber-50 dark:bg-amber-900/20 border-amber-200 dark:border-amber-800">
                <div className="flex items-start gap-3">
                  <Lightbulb className="w-5 h-5 text-amber-600 dark:text-amber-400 mt-0.5" />
                  <p className="text-amber-800 dark:text-amber-200">{currentQuestion.hint}</p>
                </div>
              </Card>
            ) : (
              <button
                onClick={handleShowHint}
                className="flex items-center gap-2 text-amber-600 dark:text-amber-400 hover:text-amber-700 dark:hover:text-amber-300"
              >
                <Lightbulb className="w-4 h-4" />
                <span className="text-sm">Need a hint?</span>
              </button>
            )}
          </div>
        )}

        {/* Result Feedback */}
        {state.showResult && (
          <Card
            className={`mb-6 ${
              state.isCorrect
                ? 'bg-green-50 dark:bg-green-900/20 border-green-200 dark:border-green-800'
                : 'bg-red-50 dark:bg-red-900/20 border-red-200 dark:border-red-800'
            }`}
          >
            <div className="flex items-start gap-3">
              {state.isCorrect ? (
                <Check className="w-5 h-5 text-green-600 dark:text-green-400 mt-0.5" />
              ) : (
                <X className="w-5 h-5 text-red-600 dark:text-red-400 mt-0.5" />
              )}
              <div>
                <p
                  className={`font-medium ${
                    state.isCorrect
                      ? 'text-green-800 dark:text-green-200'
                      : 'text-red-800 dark:text-red-200'
                  }`}
                >
                  {state.isCorrect ? 'Correct!' : 'Not Quite'}
                </p>
                <p
                  className={`text-sm mt-1 ${
                    state.isCorrect
                      ? 'text-green-700 dark:text-green-300'
                      : 'text-red-700 dark:text-red-300'
                  }`}
                >
                  {state.feedback}
                </p>
                {currentQuestion.explanation && (
                  <p className="text-sm text-gray-600 dark:text-gray-400 mt-2">
                    {currentQuestion.explanation}
                  </p>
                )}
              </div>
            </div>
          </Card>
        )}

        {/* Navigation */}
        {state.showResult && (
          <div className="flex justify-end">
            <button onClick={handleNextQuestion} className="btn-primary">
              {state.currentQuestionIndex < state.questions.length - 1 ? (
                <>
                  Next Question
                  <ChevronRight className="w-4 h-4 ml-2" />
                </>
              ) : state.currentItemIndex < dueReviews.length - 1 ? (
                <>
                  Next Topic
                  <ChevronRight className="w-4 h-4 ml-2" />
                </>
              ) : (
                <>
                  Finish Review
                  <Trophy className="w-4 h-4 ml-2" />
                </>
              )}
            </button>
          </div>
        )}
      </main>
    </div>
  );
}

function formatTime(seconds: number): string {
  if (seconds < 60) return `${seconds}s`;
  const mins = Math.floor(seconds / 60);
  const secs = seconds % 60;
  return secs > 0 ? `${mins}m ${secs}s` : `${mins}m`;
}
