import { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useGamification } from '@/contexts/GamificationContext';
import { db } from '@/services/supabase';
import { getTimeBasedGreeting } from '@/utils/helpers';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Header from '../shared/Header';
import { XPDisplay, StreakDisplay, BadgeGrid, StreakCelebration } from '../gamification';
import DailyGoalCard from '../shared/DailyGoalCard';
import { ReviewReminderCard } from '../review';
import { CustomTopicInput, TopicPreviewCard } from '../custom-topics';
import Illustration from '../shared/Illustration';
import { BookOpen, TrendingUp, Clock } from 'lucide-react';
import type { Subject, AIGenerateTopicOutlineResponse } from '@/types';

export default function Dashboard() {
  const navigate = useNavigate();
  const { profile, progress, loading } = useUser();
  const { data: gamificationData, checkAndUpdateStreak } = useGamification();
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [topicPreview, setTopicPreview] = useState<{ outline: AIGenerateTopicOutlineResponse; prompt: string } | null>(null);

  useEffect(() => {
    loadSubjects();
    // Check streak when dashboard loads
    checkAndUpdateStreak();
  }, [checkAndUpdateStreak]);

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

  const userName = profile?.name || 'Student';
  const greeting = getTimeBasedGreeting();

  // Get current progress stats
  const completedTopics = progress.filter(p => p.status === 'completed').length;
  const inProgressTopics = progress.filter(p => p.status === 'in_progress').length;
  const totalTopics = progress.length;

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      {/* Streak Celebration Modal */}
      <StreakCelebration />

      <Header
        title={<>{greeting}, {userName}! 👋</>}
        subtitle="Ready to learn something awesome today?"
        showGradeBadge
        showDifficultySlider
        showThemeToggle
        showVoiceToggle
        showSettingsButton
        showLogoutButton
        showAdminIcon
        showParentIcon
      />

      {/* Main Content */}
      <main className="container-app py-8">
        <div className="flex flex-col lg:flex-row gap-8">
          {/* Left Column - Main Content */}
          <div className="flex-1 min-w-0">
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

            {/* Custom Topic Section */}
            <div className="mb-8">
              {topicPreview ? (
                <TopicPreviewCard
                  outline={topicPreview.outline}
                  originalPrompt={topicPreview.prompt}
                  onSave={(topicId) => {
                    setTopicPreview(null);
                    navigate(`/custom-lesson/${topicId}`);
                  }}
                  onCancel={() => setTopicPreview(null)}
                />
              ) : (
                <CustomTopicInput
                  variant="compact"
                  onOutlineGenerated={(outline, prompt) => setTopicPreview({ outline, prompt })}
                />
              )}
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
              <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-4">
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
                      onClick={() => navigate(`/curriculum/${subject.id}`)}
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
                      <p className="text-sm text-gray-600 dark:text-gray-400 mb-2">
                        {subject.description}
                      </p>
                      <span
                        className="text-xs font-medium px-2 py-0.5 rounded-full inline-block mb-2"
                        style={{ backgroundColor: `${subject.color}15`, color: subject.color }}
                      >
                        Grade {profile?.grade_level ?? 7} Curriculum
                      </span>
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
              <Card className="text-center py-12 mt-8">
                <Illustration type="tutor-teaching" size="lg" className="mx-auto mb-4" />
                <h3 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
                  Let's Get Started!
                </h3>
                <p className="text-gray-600 dark:text-gray-300">
                  Choose a subject above to begin your learning journey
                </p>
              </Card>
            )}
          </div>

          {/* Right Column - Goal & Gamification */}
          <div className="lg:w-80 flex-shrink-0 space-y-4">
            <ReviewReminderCard />
            <DailyGoalCard />
            <XPDisplay />
            <StreakDisplay />

            {/* Badges Section */}
            {gamificationData.badges.length > 0 && (
              <BadgeGrid showLocked={false} maxDisplay={4} />
            )}
          </div>
        </div>
      </main>
    </div>
  );
}
