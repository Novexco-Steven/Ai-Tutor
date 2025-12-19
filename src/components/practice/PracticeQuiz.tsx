import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { db } from '@/services/supabase';
import { generateQuestions, assessAnswer } from '@/services/ai';
import { speakText, stopSpeaking, listenForSpeech } from '@/services/voice';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import type { Question, AIAssessAnswerResponse } from '@/types';
import { CheckCircle2, XCircle, Mic, ArrowRight } from 'lucide-react';
import { cn } from '@/utils/helpers';

export default function PracticeQuiz() {
  const { topicId } = useParams<{ topicId: string }>();
  const navigate = useNavigate();
  const { profile, interests } = useUser();
  const { settings } = useSettings();

  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [answers, setAnswers] = useState<Map<number, string>>(new Map());
  const [feedback, setFeedback] = useState<Map<number, AIAssessAnswerResponse>>(new Map());
  const [loading, setLoading] = useState(true);
  const [assessing, setAssessing] = useState(false);
  const [listening, setListening] = useState(false);

  useEffect(() => {
    if (topicId) {
      loadQuestions();
    }
  }, [topicId]);

  useEffect(() => {
    if (settings.audio.voiceMode && questions[currentIndex]) {
      speakText(questions[currentIndex].question, {
        rate: settings.audio.voiceSpeed
      });
    }
    return () => stopSpeaking();
  }, [currentIndex, settings.audio.voiceMode]);

  const loadQuestions = async () => {
    if (!topicId) return;
    try {
      setLoading(true);
      const topic = await db.getTopic(topicId);
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general';
      const practiceQuestions = await generateQuestions({
        topicId: topicId,
        topicName: topic.name,
        concepts: [topic.description || 'core concepts'],
        interestTheme: primaryInterest,
        difficultyLevel: profile?.difficulty_level || 5,
        gradeLevel: profile?.grade_level || 5,
        count: settings.learning.practiceQuestionCount,
        questionTypes: ['multiple_choice', 'true_false']
      });
      setQuestions(practiceQuestions);
    } catch (error) {
      console.error('Error loading questions:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleAnswer = async (answer: string) => {
    const question = questions[currentIndex];
    if (!question) return;

    const newAnswers = new Map(answers);
    newAnswers.set(currentIndex, answer);
    setAnswers(newAnswers);

    setAssessing(true);
    try {
      const assessment = await assessAnswer({
        question: question.question,
        studentAnswer: answer,
        correctAnswer: question.correct_answer,
        concept: question.concept
      });
      const newFeedback = new Map(feedback);
      newFeedback.set(currentIndex, assessment);
      setFeedback(newFeedback);

      if (settings.audio.voiceMode) {
        speakText(assessment.feedback, {
          rate: settings.audio.voiceSpeed
        });
      }

      if (profile && topicId) {
        const sessionId = await createOrGetSession();
        await db.saveQuestionResponse({
          sessionLogId: sessionId,
          userId: profile.id,
          questionText: question.question,
          userAnswer: answer,
          correctAnswer: question.correct_answer,
          isCorrect: assessment.isCorrect,
          concept: question.concept,
          difficultyLevel: question.difficulty_level || 5,
          hintsUsed: 0
        });
      }
    } catch (error) {
      console.error('Error assessing answer:', error);
    } finally {
      setAssessing(false);
    }
  };

  const createOrGetSession = async (): Promise<string> => {
    if (!profile || !topicId) return '';
    const topic = await db.getTopic(topicId);
    const session = await db.createSession(profile.id, topicId, topic.subject_id);
    return session.id;
  };

  const handleVoiceInput = async () => {
    try {
      setListening(true);
      const transcript = await listenForSpeech();
      await handleAnswer(transcript);
    } catch (error) {
      console.error('Error with voice input:', error);
    } finally {
      setListening(false);
    }
  };

  const handleNext = () => {
    if (currentIndex < questions.length - 1) {
      setCurrentIndex(prev => prev + 1);
    } else {
      navigate(`/summary/${topicId}`);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Generating practice questions..." />;
  }

  const question = questions[currentIndex];
  const currentAnswer = answers.get(currentIndex);
  const currentFeedback = feedback.get(currentIndex);
  const correctCount = Array.from(feedback.values()).filter(f => f.isCorrect).length;
  const progress = ((currentIndex + 1) / questions.length) * 100;

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <header className="bg-white dark:bg-gray-800 shadow-sm sticky top-0 z-10">
        <div className="container-app py-4">
          <div className="flex items-center justify-between mb-2">
            <h1 className="text-2xl font-bold text-gray-900 dark:text-white">Practice Time!</h1>
            <span className="text-sm text-gray-600 dark:text-gray-400">{currentIndex + 1} / {questions.length}</span>
          </div>
          <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
            <div className="bg-primary-600 h-2 rounded-full transition-all" style={{ width: `${progress}%` }} />
          </div>
          <p className="text-sm text-gray-600 dark:text-gray-400 mt-2">Score: {correctCount} / {feedback.size}</p>
        </div>
      </header>

      <main className="container-app py-8 max-w-2xl">
        {question && (
          <Card className="mb-6">
            <div className="flex items-start justify-between mb-6">
              <div className="flex-1">
                <p className="text-xl font-medium text-gray-900 dark:text-white">{question.question}</p>
              </div>
              {settings.audio.voiceMode && (
                <Button variant="ghost" size="sm" onClick={handleVoiceInput} disabled={listening || !!currentAnswer}>
                  <Mic className={cn("w-5 h-5", listening && "text-red-600 animate-pulse")} />
                </Button>
              )}
            </div>

            <div className="space-y-3">
              {question.options?.map((option, idx) => {
                const isSelected = currentAnswer === option;
                const isCorrect = option === question.correct_answer;
                const showFeedback = !!currentFeedback;

                return (
                  <button
                    key={idx}
                    onClick={() => !currentAnswer && handleAnswer(option)}
                    disabled={!!currentAnswer || assessing}
                    className={cn(
                      'w-full p-4 rounded-xl border-2 text-left transition-all flex items-center justify-between',
                      showFeedback
                        ? isCorrect
                          ? 'border-green-500 bg-green-50 dark:bg-green-900/20'
                          : isSelected
                          ? 'border-red-500 bg-red-50 dark:bg-red-900/20'
                          : 'border-gray-200 dark:border-gray-700'
                        : isSelected
                        ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20'
                        : 'border-gray-200 dark:border-gray-700 hover:border-gray-300'
                    )}
                  >
                    <span className={cn(
                      'text-gray-900 dark:text-white',
                      showFeedback && isCorrect && 'font-semibold text-green-700 dark:text-green-300',
                      showFeedback && isSelected && !isCorrect && 'text-red-700 dark:text-red-300'
                    )}>{option}</span>
                    {showFeedback && isCorrect && <CheckCircle2 className="w-6 h-6 text-green-600" />}
                    {showFeedback && isSelected && !isCorrect && <XCircle className="w-6 h-6 text-red-600" />}
                  </button>
                );
              })}
            </div>

            {assessing && (
              <div className="mt-4 text-center"><Loading size="sm" message="Checking your answer..." /></div>
            )}

            {currentFeedback && (
              <div className={cn('mt-6 p-4 rounded-lg animate-fade-in',
                currentFeedback.isCorrect
                  ? 'bg-green-50 dark:bg-green-900/20 border border-green-200 dark:border-green-800'
                  : 'bg-orange-50 dark:bg-orange-900/20 border border-orange-200 dark:border-orange-800'
              )}>
                <p className={cn('font-medium mb-2',
                  currentFeedback.isCorrect ? 'text-green-800 dark:text-green-300' : 'text-orange-800 dark:text-orange-300'
                )}>{currentFeedback.feedback}</p>
                {!currentFeedback.isCorrect && currentFeedback.reteachingSuggestion && (
                  <p className="text-sm text-gray-700 dark:text-gray-300 mt-3 p-3 bg-white dark:bg-gray-800 rounded">{currentFeedback.reteachingSuggestion}</p>
                )}
              </div>
            )}

            {currentFeedback && (
              <div className="mt-6">
                <Button variant="primary" onClick={handleNext} fullWidth>
                  {currentIndex < questions.length - 1 ? 'Next Question' : 'See Results'}
                  <ArrowRight className="w-4 h-4 ml-2" />
                </Button>
              </div>
            )}
          </Card>
        )}
      </main>
    </div>
  );
}
