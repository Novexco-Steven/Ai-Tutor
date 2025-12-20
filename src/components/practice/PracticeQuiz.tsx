import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { db } from '@/services/supabase';
import { generateQuestions, assessAnswer, provideSocraticGuidance } from '@/services/ai';
import { speakText, listenForSpeech } from '@/services/voice';
import { sessionCache } from '@/utils/sessionCache';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Header from '../shared/Header';
import StudyTimer from '../shared/StudyTimer';
import QuestionCard from './QuestionCard';
import SocraticFeedback from './SocraticFeedback';
import type { Question, AIAssessAnswerResponse, AISocraticGuidanceResponse, Topic, ChatContext } from '@/types';
import { Mic, ArrowRight, AlertCircle, RefreshCw, ArrowLeft, Trophy, Target, Brain } from 'lucide-react';
import { cn, getEffectiveDifficulty } from '@/utils/helpers';
import { ChatTutor } from '../chat';

export default function PracticeQuiz() {
  const { topicId } = useParams<{ topicId: string }>();
  const navigate = useNavigate();
  const { profile, interests } = useUser();
  const { settings } = useSettings();

  const [topic, setTopic] = useState<Topic | null>(null);
  const [questions, setQuestions] = useState<Question[]>([]);
  const [currentIndex, setCurrentIndex] = useState(0);
  const [answers, setAnswers] = useState<Map<number, string>>(new Map());
  const [feedback, setFeedback] = useState<Map<number, AIAssessAnswerResponse>>(new Map());
  const [socraticFeedback, setSocraticFeedback] = useState<Map<number, AISocraticGuidanceResponse>>(new Map());
  const [socraticHints, setSocraticHints] = useState<Map<number, string[]>>(new Map());
  const [loading, setLoading] = useState(true);
  const [assessing, setAssessing] = useState(false);
  const [listening, setListening] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [socraticModeEnabled, setSocraticModeEnabled] = useState(settings.learning.socraticMode);

  useEffect(() => {
    if (topicId) {
      loadQuestions();
    }
  }, [topicId]);

  // Save session cache whenever quiz state changes
  useEffect(() => {
    if (topicId && questions.length > 0) {
      sessionCache.saveQuiz(topicId, questions, currentIndex, answers, feedback);
    }
  }, [topicId, questions, currentIndex, answers, feedback]);

  // Voice auto-play disabled for now
  // useEffect(() => {
  //   if (settings.audio.voiceMode && questions[currentIndex]) {
  //     speakText(questions[currentIndex].question, {
  //       rate: settings.audio.voiceSpeed
  //     });
  //   }
  //   return () => stopSpeaking();
  // }, [currentIndex, settings.audio.voiceMode]);

  const loadQuestions = async () => {
    if (!topicId) return;
    try {
      setLoading(true);
      setError(null);

      // 1. Check session cache first for existing quiz state
      const cached = sessionCache.getQuiz(topicId);
      if (cached) {
        console.log('Restored quiz from session cache');
        setQuestions(cached.questions);
        setCurrentIndex(cached.currentIndex);
        setAnswers(new Map(Object.entries(cached.answers).map(([k, v]) => [Number(k), v])));
        setFeedback(new Map(Object.entries(cached.feedback).map(([k, v]) => [Number(k), v])));
        setLoading(false);
        return;
      }

      // 2. Load topic data
      const topicData = await db.getTopic(topicId);
      if (!topicData) {
        setError('Topic not found. It may have been removed.');
        return;
      }
      setTopic(topicData);

      // 3. Generate questions (uses content library cache internally)
      const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general';
      const effectiveDifficulty = getEffectiveDifficulty(
        profile?.difficulty_level || 5,
        settings.learning.subjectDifficulties,
        settings.learning.topicDifficulties,
        topicData.subject_id,
        topicId
      );
      const practiceQuestions = await generateQuestions({
        topicId: topicId,
        topicName: topicData.name,
        concepts: [topicData.description || 'core concepts'],
        interestTheme: primaryInterest,
        difficultyLevel: effectiveDifficulty,
        gradeLevel: profile?.grade_level || 5,
        count: settings.learning.practiceQuestionCount,
        questionTypes: ['multiple_choice', 'true_false']
      });
      setQuestions(practiceQuestions);

      // 4. Save initial state to session cache
      sessionCache.saveQuiz(topicId, practiceQuestions, 0, new Map(), new Map());
    } catch (err) {
      console.error('Error loading questions:', err);
      setError('Failed to generate practice questions. Please try again.');
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
      if (socraticModeEnabled) {
        // Socratic mode: Guide with questions instead of direct feedback
        const primaryInterest = interests.find(i => i.is_primary)?.interest?.name || 'general';
        const previousHints = socraticHints.get(currentIndex) || [];

        const guidance = await provideSocraticGuidance({
          question: question.question,
          studentAnswer: answer,
          correctAnswer: question.correct_answer,
          concept: question.concept,
          gradeLevel: profile?.grade_level || 5,
          interestTheme: primaryInterest,
          previousHints
        });

        const newSocraticFeedback = new Map(socraticFeedback);
        newSocraticFeedback.set(currentIndex, guidance);
        setSocraticFeedback(newSocraticFeedback);

        // Save the hint for progressive guidance
        const newHints = new Map(socraticHints);
        newHints.set(currentIndex, [...previousHints, guidance.guidingQuestion]);
        setSocraticHints(newHints);

        if (settings.audio.voiceMode) {
          speakText(guidance.guidingQuestion, {
            rate: settings.audio.voiceSpeed
          });
        }
      } else {
        // Regular mode: Direct feedback
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
      }
    } catch (error) {
      console.error('Error assessing answer:', error);
    } finally {
      setAssessing(false);
    }
  };

  const handleTryAgain = () => {
    // Clear the current answer so they can try again
    const newAnswers = new Map(answers);
    newAnswers.delete(currentIndex);
    setAnswers(newAnswers);

    // Clear Socratic feedback for this question
    const newSocraticFeedback = new Map(socraticFeedback);
    newSocraticFeedback.delete(currentIndex);
    setSocraticFeedback(newSocraticFeedback);
  };

  const handleRevealAnswer = async () => {
    // Switch to regular assessment to reveal the answer
    const question = questions[currentIndex];
    const answer = answers.get(currentIndex);
    if (!question || !answer) return;

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

      // Clear Socratic feedback since we're showing regular feedback now
      const newSocraticFeedback = new Map(socraticFeedback);
      newSocraticFeedback.delete(currentIndex);
      setSocraticFeedback(newSocraticFeedback);

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
          hintsUsed: socraticHints.get(currentIndex)?.length || 0
        });
      }
    } catch (error) {
      console.error('Error revealing answer:', error);
    } finally {
      setAssessing(false);
    }
  };

  const createOrGetSession = async (): Promise<string> => {
    if (!profile || !topicId || !topic) return '';
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
      // Clear session cache since quiz is complete
      if (topicId) {
        sessionCache.clearQuiz(topicId);
      }
      navigate(`/summary/${topicId}`);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Generating practice questions..." />;
  }

  if (error) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gray-50 dark:bg-gray-900 p-4">
        <Card className="max-w-md text-center">
          <AlertCircle className="w-12 h-12 text-red-500 mx-auto mb-4" />
          <h2 className="text-xl font-semibold text-gray-900 dark:text-white mb-2">Unable to Load Questions</h2>
          <p className="text-gray-600 dark:text-gray-300 mb-6">{error}</p>
          <div className="flex gap-3 justify-center">
            <Button variant="secondary" onClick={() => navigate(-1)}>
              <ArrowLeft className="w-4 h-4 mr-2" />Go Back
            </Button>
            <Button variant="primary" onClick={loadQuestions}>
              <RefreshCw className="w-4 h-4 mr-2" />Try Again
            </Button>
          </div>
        </Card>
      </div>
    );
  }

  const question = questions[currentIndex];
  const currentAnswer = answers.get(currentIndex);
  const currentFeedback = feedback.get(currentIndex);
  const currentSocraticFeedback = socraticFeedback.get(currentIndex);
  const correctCount = Array.from(feedback.values()).filter(f => f.isCorrect).length;

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-900 via-slate-800 to-slate-900">
      <Header
        variant="dark"
        sticky
        showBackButton
        backButtonLabel="Exit"
        titleIcon={
          <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-blue-500 to-purple-600 flex items-center justify-center">
            <Target className="w-5 h-5 text-white" />
          </div>
        }
        title="Practice Time!"
        subtitle="Test your knowledge"
        showDifficultySlider
        rightContent={
          <div className="flex items-center gap-4">
            <StudyTimer compact />
            {/* Socratic Mode Toggle */}
            <button
              onClick={() => setSocraticModeEnabled(!socraticModeEnabled)}
              className={cn(
                "flex items-center gap-1.5 px-3 py-1.5 rounded-lg border transition-colors",
                socraticModeEnabled
                  ? "bg-purple-500/20 border-purple-500/50 text-purple-300"
                  : "bg-slate-700/50 border-slate-600/50 text-slate-400 hover:text-slate-300"
              )}
              title={socraticModeEnabled ? "Socratic Mode: On" : "Socratic Mode: Off"}
            >
              <Brain className="w-4 h-4" />
              <span className="text-xs font-medium hidden sm:inline">
                {socraticModeEnabled ? "Socratic" : "Direct"}
              </span>
            </button>
            <div className="flex items-center gap-2 px-3 py-1.5 rounded-lg bg-slate-700/50 border border-slate-600/50">
              <Trophy className="w-4 h-4 text-amber-400" />
              <span className="text-sm font-medium text-white">{correctCount}</span>
              <span className="text-slate-400">/</span>
              <span className="text-sm text-slate-400">{feedback.size}</span>
            </div>
            {settings.audio.voiceMode && (
              <Button
                variant="ghost"
                size="sm"
                onClick={handleVoiceInput}
                disabled={listening || !!currentAnswer}
                className="text-slate-300 hover:text-white hover:bg-slate-700"
              >
                <Mic className={cn("w-5 h-5", listening && "text-red-500 animate-pulse")} />
              </Button>
            )}
          </div>
        }
        progressBar={{
          current: currentIndex + 1,
          total: questions.length,
          showLabels: true,
          variant: 'gradient'
        }}
      />

      <main className="container-app py-8 max-w-3xl">
        {question && (
          <div className="animate-fade-in">
            <QuestionCard
              question={question}
              questionNumber={currentIndex + 1}
              totalQuestions={questions.length}
              selectedAnswer={currentAnswer}
              feedback={socraticModeEnabled ? undefined : currentFeedback}
              onSelectAnswer={handleAnswer}
              disabled={assessing || (socraticModeEnabled && !!currentSocraticFeedback && !currentSocraticFeedback.isCorrect)}
              assessing={assessing}
            />

            {/* Socratic Feedback */}
            {socraticModeEnabled && currentSocraticFeedback && !currentFeedback && (
              <div className="mt-6">
                <SocraticFeedback
                  guidance={currentSocraticFeedback}
                  onTryAgain={handleTryAgain}
                  onRevealAnswer={handleRevealAnswer}
                />
              </div>
            )}

            {/* Next Button - Show after correct answer or regular feedback */}
            {(currentFeedback || (currentSocraticFeedback?.isCorrect)) && (
              <div className="mt-6 animate-fade-in">
                <Button
                  variant="primary"
                  onClick={handleNext}
                  fullWidth
                  className="py-4 text-lg font-semibold bg-gradient-to-r from-blue-600 to-purple-600 hover:from-blue-700 hover:to-purple-700 shadow-lg shadow-blue-500/25"
                >
                  {currentIndex < questions.length - 1 ? (
                    <>
                      Next Question
                      <ArrowRight className="w-5 h-5 ml-2" />
                    </>
                  ) : (
                    <>
                      <Trophy className="w-5 h-5 mr-2" />
                      See Your Results
                    </>
                  )}
                </Button>
              </div>
            )}
          </div>
        )}
      </main>

      {/* AI Chat Tutor */}
      {topic && (
        <ChatTutor
          context={{
            topicName: topic.name,
            topicDescription: topic.description,
            subjectName: topic.subject?.name || 'Learning',
            gradeLevel: profile?.grade_level || 5,
            difficultyLevel: getEffectiveDifficulty(
              profile?.difficulty_level || 5,
              settings.learning.subjectDifficulties,
              settings.learning.topicDifficulties,
              topic.subject_id,
              topicId
            ),
            interestTheme: interests.find(i => i.is_primary)?.interest?.name || 'general learning',
            currentQuestion: question
          } as ChatContext}
          currentQuestion={question}
        />
      )}
    </div>
  );
}
