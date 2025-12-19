import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { db, supabase } from '@/services/supabase';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import type { Topic } from '@/types';
import { Trophy, RefreshCw, Home, ArrowRight } from 'lucide-react';
import { calculatePercentage, getPerformanceLevel } from '@/utils/helpers';

export default function LessonSummary() {
  const { topicId } = useParams();
  const navigate = useNavigate();
  const { profile } = useUser();
  const [topic, setTopic] = useState<Topic | null>(null);
  const [stats, setStats] = useState({ correct: 0, total: 0 });
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (topicId) loadSummary();
  }, [topicId]);

  const loadSummary = async () => {
    if (!topicId || !profile) return;
    try {
      setLoading(true);
      const topicData = await db.getTopic(topicId);
      setTopic(topicData);
      const sessions = await supabase.from('session_logs').select('*').eq('user_id', profile.id).eq('topic_id', topicId).order('created_at', { ascending: false }).limit(1).single();
      if (sessions.data) {
        setStats({ correct: sessions.data.questions_correct || 0, total: sessions.data.questions_attempted || 0 });
        const score = calculatePercentage(sessions.data.questions_correct || 0, sessions.data.questions_attempted || 1);
        await db.upsertProgress(profile.id, topicId, topicData.subject_id, { status: 'completed', assessment_score: score, completed_at: new Date().toISOString() });
      }
    } catch (error) {
      console.error('Error:', error);
    } finally {
      setLoading(false);
    }
  };

  if (loading) return <Loading fullScreen message='Calculating results...' />;
  if (!topic) return <div className='min-h-screen flex items-center justify-center'><Card><p>Topic not found</p><Button onClick={() => navigate('/')}>Go Home</Button></Card></div>;

  const score = calculatePercentage(stats.correct, stats.total);
  const performance = getPerformanceLevel(score);

  return (
    <div className='min-h-screen bg-gradient-primary p-4 py-8'>
      <div className='container-app max-w-3xl'>
        <div className='text-center mb-8 animate-fade-in'>
          <div className='inline-block p-6 bg-white dark:bg-gray-800 rounded-full mb-4'><Trophy className='w-16 h-16 text-yellow-500' /></div>
          <h1 className='text-4xl font-bold text-white mb-2'>{performance.level === 'excellent' ? 'Amazing Work!' : performance.level === 'good' ? 'Great Job!' : 'Good Effort!'}</h1>
          <p className='text-xl text-white/90'>You completed: {topic.name}</p>
        </div>
        <Card className='mb-6'>
          <div className='text-center mb-6'><div className='text-4xl font-bold mb-2'>{score}%</div><p className='text-gray-600'>{performance.message}</p></div>
          <div className='grid grid-cols-2 gap-4'>
            <div className='text-center p-4 bg-gray-50 dark:bg-gray-800 rounded-lg'><div className='text-2xl font-bold'>{stats.correct}</div><div className='text-sm text-gray-600'>Correct</div></div>
            <div className='text-center p-4 bg-gray-50 dark:bg-gray-800 rounded-lg'><div className='text-2xl font-bold'>{stats.total}</div><div className='text-sm text-gray-600'>Questions</div></div>
          </div>
        </Card>
        <div className='flex gap-4'><Button variant='secondary' onClick={() => navigate('/')} fullWidth><Home className='w-4 h-4 mr-2' />Dashboard</Button>{score < 80 ? <Button onClick={() => navigate('/practice/' + topicId)} fullWidth><RefreshCw className='w-4 h-4 mr-2' />Practice Again</Button> : <Button onClick={() => navigate('/topics/' + topic.subject_id)} fullWidth>Next Topic<ArrowRight className='w-4 h-4 ml-2' /></Button>}</div>
      </div>
    </div>
  );
}