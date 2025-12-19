import { useEffect, useState } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { db } from '@/services/supabase';
import { useUser } from '@/contexts/UserContext';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import type { Topic, Subject } from '@/types';
import { ArrowLeft, Lock, CheckCircle } from 'lucide-react';

export default function TopicSelection() {
  const { subjectId } = useParams<{ subjectId: string }>();
  const navigate = useNavigate();
  const { profile, progress } = useUser();
  const [subject, setSubject] = useState<Subject | null>(null);
  const [topics, setTopics] = useState<Topic[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadTopics();
  }, [subjectId]);

  const loadTopics = async () => {
    if (!subjectId) return;

    try {
      const [subjectData, topicsData] = await Promise.all([
        db.getAllSubjects().then(subjects => subjects.find(s => s.id === subjectId)),
        db.getTopicsBySubject(subjectId, profile?.grade_level),
      ]);

      setSubject(subjectData || null);
      setTopics(topicsData);
    } catch (error) {
      console.error('Error loading topics:', error);
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Loading topics..." />;
  }

  if (!subject) {
    return (
      <div className="min-h-screen flex items-center justify-center">
        <Card>
          <p className="text-center text-gray-600 dark:text-gray-300">
            Subject not found
          </p>
          <Button onClick={() => navigate('/')} className="mt-4">
            Go Home
          </Button>
        </Card>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <header className="bg-white dark:bg-gray-800 shadow-sm">
        <div className="container-app py-6">
          <Button
            variant="ghost"
            onClick={() => navigate('/')}
            className="mb-4"
          >
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back to Dashboard
          </Button>
          <div className="flex items-center gap-4">
            <div
              className="text-5xl p-4 rounded-xl"
              style={{ backgroundColor: `${subject.color}20` }}
            >
              {subject.icon}
            </div>
            <div>
              <h1 className="text-3xl font-bold" style={{ color: subject.color }}>
                {subject.name}
              </h1>
              <p className="text-gray-600 dark:text-gray-300">
                {subject.description}
              </p>
            </div>
          </div>
        </div>
      </header>

      <main className="container-app py-8">
        <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-6">
          Choose a Topic
        </h2>

        <div className="space-y-4">
          {topics.map((topic, index) => {
            const topicProgress = progress.find(p => p.topic_id === topic.id);
            const isCompleted = topicProgress?.status === 'completed';
            const isInProgress = topicProgress?.status === 'in_progress';
            const isLocked = false; // Can implement prerequisite logic here

            return (
              <Card
                key={topic.id}
                interactive={!isLocked}
                onClick={() => !isLocked && navigate(`/lesson/${topic.id}`)}
                className={isLocked ? 'opacity-50 cursor-not-allowed' : ''}
              >
                <div className="flex items-center justify-between">
                  <div className="flex-1">
                    <div className="flex items-center gap-3 mb-2">
                      <span className="text-2xl font-bold text-gray-400">
                        {index + 1}
                      </span>
                      <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                        {topic.name}
                      </h3>
                      {isCompleted && (
                        <CheckCircle className="w-5 h-5 text-green-600" />
                      )}
                      {isLocked && <Lock className="w-5 h-5 text-gray-400" />}
                    </div>
                    <p className="text-sm text-gray-600 dark:text-gray-400 ml-10">
                      {topic.description}
                    </p>
                    <div className="flex items-center gap-4 ml-10 mt-2">
                      <span className="text-xs text-gray-500">
                        ⏱️ {topic.estimated_time} min
                      </span>
                      <span className="text-xs text-gray-500">
                        📊 Level {topic.difficulty_level}
                      </span>
                    </div>
                  </div>
                  {isInProgress && topicProgress.assessment_score && (
                    <div className="text-right">
                      <div className="text-2xl font-bold text-primary-600">
                        {topicProgress.assessment_score}%
                      </div>
                      <div className="text-xs text-gray-500">Score</div>
                    </div>
                  )}
                </div>
              </Card>
            );
          })}
        </div>

        {topics.length === 0 && (
          <Card className="text-center py-12">
            <p className="text-gray-600 dark:text-gray-300">
              No topics available for your grade level yet.
            </p>
          </Card>
        )}
      </main>
    </div>
  );
}
