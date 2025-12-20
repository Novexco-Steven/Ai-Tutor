import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useSettings } from '@/contexts/SettingsContext';
import { useGamification, XP_VALUES } from '@/contexts/GamificationContext';
import { db, supabase } from '@/services/supabase';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import { XPDisplay, BadgeGrid } from '../gamification';
import type { Topic } from '@/types';
import type { DifficultyAdjustmentResult } from '@/utils/helpers';
import { Trophy, RefreshCw, Home, ArrowRight, TrendingUp, TrendingDown, Minus, Zap, Star } from 'lucide-react';
import { calculatePercentage, getPerformanceLevel, calculateAdaptiveDifficulty } from '@/utils/helpers';

export default function LessonSummary() {
  const { topicId } = useParams();
  const navigate = useNavigate();
  const { profile, updateProfile } = useUser();
  const { settings } = useSettings();
  const { recordQuizComplete } = useGamification();
  const [topic, setTopic] = useState<Topic | null>(null);
  const [stats, setStats] = useState({ correct: 0, total: 0 });
  const [loading, setLoading] = useState(true);
  const [difficultyChange, setDifficultyChange] = useState<DifficultyAdjustmentResult | null>(null);
  const [xpEarned, setXpEarned] = useState(0);
  const [isPerfect, setIsPerfect] = useState(false);

  useEffect(() => {
    if (topicId) loadSummary();
  }, [topicId]);

  const loadSummary = async () => {
    if (!topicId || !profile) return;
    try {
      setLoading(true);
      const topicData = await db.getTopic(topicId);
      setTopic(topicData);

      const sessions = await supabase
        .from('session_logs')
        .select('*')
        .eq('user_id', profile.id)
        .eq('topic_id', topicId)
        .order('created_at', { ascending: false })
        .limit(1)
        .single();

      if (sessions.data) {
        const correct = sessions.data.questions_correct || 0;
        const total = sessions.data.questions_attempted || 0;
        setStats({ correct, total });

        const score = calculatePercentage(correct, total || 1);
        const perfect = correct === total && total > 0;
        setIsPerfect(perfect);

        // Calculate XP earned
        const questionXP = correct * XP_VALUES.question_correct;
        const quizXP = perfect ? XP_VALUES.perfect_quiz : XP_VALUES.quiz_complete;
        setXpEarned(questionXP + quizXP);

        // Record quiz completion for gamification
        recordQuizComplete(correct, total);

        // Update progress
        await db.upsertProgress(profile.id, topicId, topicData.subject_id, {
          status: 'completed',
          assessment_score: score,
          completed_at: new Date().toISOString()
        });

        // Apply adaptive difficulty
        const currentDifficulty = profile.difficulty_level || 5;
        const difficultyMode = settings.learning.difficultyMode;
        const adjustment = calculateAdaptiveDifficulty(currentDifficulty, score, difficultyMode);

        setDifficultyChange(adjustment);

        // Update user profile if difficulty changed
        if (adjustment.adjustment !== 0) {
          await updateProfile({ difficulty_level: adjustment.newDifficulty });
        }
      }
    } catch (error) {
      console.error('Error:', error);
    } finally {
      setLoading(false);
    }
  };

  if (loading) return <Loading fullScreen message='Calculating results...' />;
  if (!topic) return (
    <div className='min-h-screen flex items-center justify-center'>
      <Card>
        <p>Topic not found</p>
        <Button onClick={() => navigate('/')}>Go Home</Button>
      </Card>
    </div>
  );

  const score = calculatePercentage(stats.correct, stats.total);
  const performance = getPerformanceLevel(score);

  const getDifficultyIcon = () => {
    if (!difficultyChange) return null;
    if (difficultyChange.adjustment > 0) return <TrendingUp className="w-5 h-5 text-green-500" />;
    if (difficultyChange.adjustment < 0) return <TrendingDown className="w-5 h-5 text-orange-500" />;
    return <Minus className="w-5 h-5 text-gray-500" />;
  };

  const getDifficultyBadgeColor = () => {
    if (!difficultyChange) return 'bg-gray-100 dark:bg-gray-800';
    if (difficultyChange.adjustment > 0) return 'bg-green-50 dark:bg-green-900/20 border-green-200 dark:border-green-800';
    if (difficultyChange.adjustment < 0) return 'bg-orange-50 dark:bg-orange-900/20 border-orange-200 dark:border-orange-800';
    return 'bg-blue-50 dark:bg-blue-900/20 border-blue-200 dark:border-blue-800';
  };

  return (
    <div className='min-h-screen bg-gradient-primary p-4 py-8'>
      <div className='container-app max-w-3xl'>
        {/* Trophy Header */}
        <div className='text-center mb-8 animate-fade-in'>
          <div className='inline-block p-6 bg-white dark:bg-gray-800 rounded-full mb-4'>
            <Trophy className='w-16 h-16 text-yellow-500' />
          </div>
          <h1 className='text-4xl font-bold text-white mb-2'>
            {performance.level === 'excellent' ? 'Amazing Work!' :
             performance.level === 'good' ? 'Great Job!' : 'Good Effort!'}
          </h1>
          <p className='text-xl text-white/90'>You completed: {topic.name}</p>
        </div>

        {/* XP Earned Banner */}
        <Card className='mb-4 bg-gradient-to-r from-yellow-500/20 to-orange-500/20 border-yellow-500/30'>
          <div className='flex items-center justify-between'>
            <div className='flex items-center gap-3'>
              <div className='w-12 h-12 rounded-full bg-gradient-to-br from-yellow-400 to-orange-500 flex items-center justify-center shadow-lg'>
                <Zap className='w-6 h-6 text-white' />
              </div>
              <div>
                <p className='text-sm text-yellow-600 dark:text-yellow-400'>XP Earned</p>
                <p className='text-2xl font-bold text-yellow-500'>+{xpEarned}</p>
              </div>
            </div>
            {isPerfect && (
              <div className='flex items-center gap-2 px-3 py-2 bg-yellow-500/20 rounded-full'>
                <Star className='w-5 h-5 text-yellow-500 fill-yellow-500' />
                <span className='text-sm font-semibold text-yellow-500'>Perfect Score!</span>
              </div>
            )}
          </div>
        </Card>

        {/* Score Card */}
        <Card className='mb-6'>
          <div className='text-center mb-6'>
            <div className='text-5xl font-bold mb-2'>{score}%</div>
            <p className='text-gray-600 dark:text-gray-400'>{performance.message}</p>
          </div>

          <div className='grid grid-cols-2 gap-4 mb-6'>
            <div className='text-center p-4 bg-gray-50 dark:bg-gray-800 rounded-lg'>
              <div className='text-2xl font-bold text-green-600'>{stats.correct}</div>
              <div className='text-sm text-gray-600 dark:text-gray-400'>Correct</div>
            </div>
            <div className='text-center p-4 bg-gray-50 dark:bg-gray-800 rounded-lg'>
              <div className='text-2xl font-bold'>{stats.total}</div>
              <div className='text-sm text-gray-600 dark:text-gray-400'>Questions</div>
            </div>
          </div>

          {/* Difficulty Adjustment Feedback */}
          {difficultyChange && (
            <div className={`p-4 rounded-lg border ${getDifficultyBadgeColor()} animate-fade-in`}>
              <div className='flex items-center gap-3'>
                {getDifficultyIcon()}
                <div className='flex-1'>
                  <div className='flex items-center justify-between'>
                    <span className='font-medium text-gray-900 dark:text-white'>
                      Difficulty Level
                    </span>
                    <span className='text-sm font-semibold'>
                      {difficultyChange.adjustment !== 0 ? (
                        <>
                          {profile?.difficulty_level || 5} → {difficultyChange.newDifficulty}
                        </>
                      ) : (
                        <>Level {difficultyChange.newDifficulty}</>
                      )}
                    </span>
                  </div>
                  <p className='text-sm text-gray-600 dark:text-gray-400 mt-1'>
                    {difficultyChange.reason}
                  </p>
                </div>
              </div>
            </div>
          )}
        </Card>

        {/* Current Progress */}
        <div className='mb-6'>
          <XPDisplay />
        </div>

        {/* Badges */}
        <div className='mb-6'>
          <BadgeGrid maxDisplay={10} showLocked={false} />
        </div>

        {/* Action Buttons */}
        <div className='flex gap-4'>
          <Button variant='secondary' onClick={() => navigate('/')} fullWidth>
            <Home className='w-4 h-4 mr-2' />
            Dashboard
          </Button>
          {score < 80 ? (
            <Button onClick={() => navigate('/practice/' + topicId)} fullWidth>
              <RefreshCw className='w-4 h-4 mr-2' />
              Practice Again
            </Button>
          ) : (
            <Button onClick={() => navigate('/topics/' + topic.subject_id)} fullWidth>
              Next Topic
              <ArrowRight className='w-4 h-4 ml-2' />
            </Button>
          )}
        </div>
      </div>
    </div>
  );
}
