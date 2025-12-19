import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useAuth } from '@/contexts/AuthContext';
import { db } from '@/services/supabase';
import { storage, getTimeBasedGreeting } from '@/utils/helpers';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import VoiceToggle from '../shared/VoiceToggle';
import { Settings, BookOpen, TrendingUp, Clock } from 'lucide-react';
import { useState } from 'react';
import type { Subject } from '@/types';

export default function Dashboard() {
  const navigate = useNavigate();
  const { user } = useAuth();
  const { profile, progress, loading } = useUser();
  const [subjects, setSubjects] = useState<Subject[]>([]);

  useEffect(() => {
    // Check if onboarding is complete
    if (!user && !profile) {
      const onboardingData = storage.get<any>('learnlit_onboarding', null);
      if (!onboardingData || !onboardingData.name) {
        navigate('/onboarding/profile');
      }
    }

    loadSubjects();
  }, [user, profile, navigate]);

  const loadSubjects = async () => {
    try {
      const data = await db.getAllSubjects();
      setSubjects(data);
    } catch (error) {
      console.error('Error loading subjects:', error);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Loading your dashboard..." />;
  }

  const userName = profile?.name || storage.get<any>('learnlit_onboarding', {}).name || 'Student';
  const greeting = getTimeBasedGreeting();

  // Get current progress stats
  const completedTopics = progress.filter(p => p.status === 'completed').length;
  const inProgressTopics = progress.filter(p => p.status === 'in_progress').length;
  const totalTopics = progress.length;

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      {/* Header */}
      <header className="bg-white dark:bg-gray-800 shadow-sm">
        <div className="container-app py-6">
          <div className="flex items-center justify-between">
            <div>
              <h1 className="text-3xl font-bold text-gray-900 dark:text-white">
                {greeting}, {userName}! 👋
              </h1>
              <p className="text-gray-600 dark:text-gray-300 mt-1">
                Ready to learn something awesome today?
              </p>
            </div>
            <div className="flex items-center gap-3">
              <VoiceToggle />
              <Button
                variant="ghost"
                onClick={() => navigate('/settings')}
                aria-label="Settings"
              >
                <Settings className="w-5 h-5" />
              </Button>
            </div>
          </div>
        </div>
      </header>

      {/* Main Content */}
      <main className="container-app py-8">
        {/* Stats Overview */}
        <div className="grid grid-cols-1 sm:grid-cols-3 gap-4 mb-8">
          <Card className="flex items-center gap-4">
            <div className="p-3 bg-green-100 dark:bg-green-900/20 rounded-lg">
              <TrendingUp className="w-6 h-6 text-green-600 dark:text-green-400" />
            </div>
            <div>
              <p className="text-sm text-gray-600 dark:text-gray-400">Completed</p>
              <p className="text-2xl font-bold text-gray-900 dark:text-white">
                {completedTopics}
              </p>
            </div>
          </Card>

          <Card className="flex items-center gap-4">
            <div className="p-3 bg-blue-100 dark:bg-blue-900/20 rounded-lg">
              <BookOpen className="w-6 h-6 text-blue-600 dark:text-blue-400" />
            </div>
            <div>
              <p className="text-sm text-gray-600 dark:text-gray-400">In Progress</p>
              <p className="text-2xl font-bold text-gray-900 dark:text-white">
                {inProgressTopics}
              </p>
            </div>
          </Card>

          <Card className="flex items-center gap-4">
            <div className="p-3 bg-purple-100 dark:bg-purple-900/20 rounded-lg">
              <Clock className="w-6 h-6 text-purple-600 dark:text-purple-400" />
            </div>
            <div>
              <p className="text-sm text-gray-600 dark:text-gray-400">Total Topics</p>
              <p className="text-2xl font-bold text-gray-900 dark:text-white">
                {totalTopics}
              </p>
            </div>
          </Card>
        </div>

        {/* Continue Learning Section */}
        {inProgressTopics > 0 && (
          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-4">
              Continue Learning
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {progress
                .filter(p => p.status === 'in_progress')
                .slice(0, 2)
                .map(item => (
                  <Card
                    key={item.id}
                    interactive
                    onClick={() => navigate(`/lesson/${item.topic_id}`)}
                  >
                    <div className="flex items-start justify-between">
                      <div>
                        <h3 className="font-semibold text-lg text-gray-900 dark:text-white mb-1">
                          {item.topic?.name || 'Lesson'}
                        </h3>
                        <p className="text-sm text-gray-600 dark:text-gray-400">
                          {item.subject?.name}
                        </p>
                      </div>
                      <div className="text-primary-600 dark:text-primary-400 font-semibold">
                        {item.assessment_score ? `${item.assessment_score}%` : 'Started'}
                      </div>
                    </div>
                    <div className="mt-4 w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
                      <div
                        className="bg-primary-600 h-2 rounded-full transition-all"
                        style={{ width: `${item.assessment_score || 10}%` }}
                      />
                    </div>
                  </Card>
                ))}
            </div>
          </section>
        )}

        {/* Subjects Section */}
        <section>
          <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-4">
            Explore Subjects
          </h2>
          <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-4">
            {subjects.map(subject => {
              const subjectProgress = progress.filter(
                p => p.subject_id === subject.id
              );
              const completed = subjectProgress.filter(
                p => p.status === 'completed'
              ).length;
              const total = subjectProgress.length;

              return (
                <Card
                  key={subject.id}
                  interactive
                  onClick={() => navigate(`/topics/${subject.id}`)}
                  className="text-center"
                >
                  <div
                    className="text-5xl mb-4 p-4 rounded-xl inline-block"
                    style={{ backgroundColor: `${subject.color}20` }}
                  >
                    {subject.icon}
                  </div>
                  <h3
                    className="font-bold text-lg mb-1"
                    style={{ color: subject.color }}
                  >
                    {subject.name}
                  </h3>
                  <p className="text-sm text-gray-600 dark:text-gray-400 mb-3">
                    {subject.description}
                  </p>
                  {total > 0 && (
                    <div className="text-xs text-gray-500 dark:text-gray-400">
                      {completed} / {total} topics completed
                    </div>
                  )}
                </Card>
              );
            })}
          </div>
        </section>

        {/* Empty State */}
        {totalTopics === 0 && (
          <Card className="text-center py-12">
            <div className="text-6xl mb-4">🚀</div>
            <h3 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
              Let's Get Started!
            </h3>
            <p className="text-gray-600 dark:text-gray-300 mb-6">
              Choose a subject above to begin your learning journey
            </p>
          </Card>
        )}
      </main>
    </div>
  );
}
