import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { useGamification } from '@/contexts/GamificationContext';
import { db } from '@/services/supabase';
import {
  getAnalyticsSummary,
  getLearningVelocity,
  getSubjectMastery,
  generateInsights,
  formatStudyTime,
  getMasteryColor,
  getTrendIndicator,
  type AnalyticsSummary,
  type LearningVelocity,
  type SubjectMastery,
  type LearningInsight,
} from '@/services/analytics';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Header from '../shared/Header';
import {
  LineChart,
  Line,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  ResponsiveContainer,
  BarChart,
  Bar,
} from 'recharts';
import {
  TrendingUp,
  TrendingDown,
  Minus,
  Clock,
  Target,
  Zap,
  BookOpen,
  Brain,
  Award,
  ChevronRight,
} from 'lucide-react';

export default function StudentAnalyticsDashboard() {
  const navigate = useNavigate();
  const { profile, progress, loading: userLoading } = useUser();
  const { data: gamificationData } = useGamification();

  const [loading, setLoading] = useState(true);
  const [summary, setSummary] = useState<AnalyticsSummary | null>(null);
  const [velocity, setVelocity] = useState<LearningVelocity | null>(null);
  const [subjectMastery, setSubjectMastery] = useState<SubjectMastery[]>([]);
  const [insights, setInsights] = useState<LearningInsight[]>([]);
  const [dailyData, setDailyData] = useState<Array<{ date: string; time: number; score: number }>>([]);

  useEffect(() => {
    if (profile?.id && !userLoading) {
      loadAnalytics();
    }
  }, [profile?.id, userLoading]);

  const loadAnalytics = async () => {
    if (!profile?.id) return;

    setLoading(true);
    try {
      const [subjectsData, summaryData, velocityData, dailyStats] = await Promise.all([
        db.getAllSubjects(),
        getAnalyticsSummary(profile.id),
        getLearningVelocity(profile.id),
        db.getDailyStats(profile.id, 14),
      ]);

      // Enhance summary with gamification data
      const enhancedSummary = {
        ...summaryData,
        currentStreak: gamificationData.currentStreak,
        longestStreak: gamificationData.longestStreak,
        totalXP: gamificationData.xp,
        currentLevel: gamificationData.level,
      };

      setSummary(enhancedSummary);
      setVelocity(velocityData);

      // Get subject mastery
      const mastery = await getSubjectMastery(
        profile.id,
        subjectsData.map((s) => ({ id: s.id, name: s.name, icon: s.icon, color: s.color })),
        progress.map((p) => ({
          subject_id: p.subject_id,
          status: p.status,
          assessment_score: p.assessment_score,
        }))
      );
      setSubjectMastery(mastery);

      // Generate insights
      const generatedInsights = generateInsights(enhancedSummary, velocityData);
      setInsights(generatedInsights);

      // Prepare chart data
      const chartData = dailyStats.map((s) => ({
        date: new Date(s.date).toLocaleDateString('en-US', { weekday: 'short' }),
        time: Math.round((s.total_time_seconds || 0) / 60),
        score: s.questions_attempted
          ? Math.round(((s.questions_correct || 0) / s.questions_attempted) * 100)
          : 0,
        topics: s.topics_completed || 0,
      }));
      setDailyData(chartData);
    } catch (error) {
      console.error('Failed to load analytics:', error);
    } finally {
      setLoading(false);
    }
  };

  if (loading || userLoading) {
    return <Loading fullScreen message="Loading your analytics..." />;
  }

  if (!summary) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
        <Header title="Learning Analytics" showBackButton onBackClick={() => navigate('/')} />
        <main className="container-app py-8">
          <Card className="text-center py-12">
            <div className="text-6xl mb-4">📊</div>
            <h2 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
              No Data Yet
            </h2>
            <p className="text-gray-600 dark:text-gray-400">
              Complete some lessons to see your learning analytics!
            </p>
          </Card>
        </main>
      </div>
    );
  }

  const TrendIcon = velocity?.trend === 'improving' ? TrendingUp : velocity?.trend === 'declining' ? TrendingDown : Minus;
  const trendInfo = velocity ? getTrendIndicator(velocity.trend) : null;

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900">
      <Header
        title="Learning Analytics"
        subtitle="Track your progress and insights"
        showBackButton
        onBackClick={() => navigate('/')}
      />

      <main className="container-app py-8">
        {/* Key Stats Grid */}
        <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
          <StatCard
            icon={<Clock className="w-5 h-5" />}
            label="Study Time Today"
            value={formatStudyTime(summary.totalTimeToday)}
            subtext={`${formatStudyTime(summary.totalTimeThisWeek)} this week`}
            iconBg="bg-blue-100 dark:bg-blue-900/20"
            iconColor="text-blue-600 dark:text-blue-400"
          />
          <StatCard
            icon={<Target className="w-5 h-5" />}
            label="Accuracy"
            value={`${summary.accuracyThisWeek}%`}
            subtext={`${summary.accuracyAllTime}% all time`}
            iconBg="bg-green-100 dark:bg-green-900/20"
            iconColor="text-green-600 dark:text-green-400"
          />
          <StatCard
            icon={<BookOpen className="w-5 h-5" />}
            label="Topics Completed"
            value={summary.topicsCompletedThisWeek.toString()}
            subtext={`${summary.topicsCompletedAllTime} total`}
            iconBg="bg-purple-100 dark:bg-purple-900/20"
            iconColor="text-purple-600 dark:text-purple-400"
          />
          <StatCard
            icon={<Zap className="w-5 h-5" />}
            label="XP Earned"
            value={summary.totalXP.toLocaleString()}
            subtext={`Level ${summary.currentLevel}`}
            iconBg="bg-amber-100 dark:bg-amber-900/20"
            iconColor="text-amber-600 dark:text-amber-400"
          />
        </div>

        {/* Insights Section */}
        {insights.length > 0 && (
          <section className="mb-8">
            <h2 className="text-xl font-bold text-gray-900 dark:text-white mb-4">
              Insights & Recommendations
            </h2>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {insights.slice(0, 4).map((insight) => (
                <InsightCard key={insight.id} insight={insight} />
              ))}
            </div>
          </section>
        )}

        {/* Charts Section */}
        <div className="grid grid-cols-1 lg:grid-cols-2 gap-8 mb-8">
          {/* Study Time Chart */}
          <Card>
            <h3 className="font-semibold text-gray-900 dark:text-white mb-4">
              Study Time (Last 2 Weeks)
            </h3>
            {dailyData.length > 0 ? (
              <div className="h-64">
                <ResponsiveContainer width="100%" height="100%">
                  <BarChart data={dailyData}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#374151" opacity={0.2} />
                    <XAxis dataKey="date" tick={{ fontSize: 12 }} stroke="#9CA3AF" />
                    <YAxis tick={{ fontSize: 12 }} stroke="#9CA3AF" unit="m" />
                    <Tooltip
                      contentStyle={{
                        backgroundColor: '#1F2937',
                        border: 'none',
                        borderRadius: '8px',
                        color: '#F9FAFB',
                      }}
                      formatter={(value: number) => [`${value} min`, 'Study Time']}
                    />
                    <Bar dataKey="time" fill="#3B82F6" radius={[4, 4, 0, 0]} />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            ) : (
              <div className="h-64 flex items-center justify-center text-gray-500">
                No data available yet
              </div>
            )}
          </Card>

          {/* Accuracy Chart */}
          <Card>
            <h3 className="font-semibold text-gray-900 dark:text-white mb-4">
              Quiz Accuracy Trend
            </h3>
            {dailyData.some((d) => d.score > 0) ? (
              <div className="h-64">
                <ResponsiveContainer width="100%" height="100%">
                  <LineChart data={dailyData}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#374151" opacity={0.2} />
                    <XAxis dataKey="date" tick={{ fontSize: 12 }} stroke="#9CA3AF" />
                    <YAxis domain={[0, 100]} tick={{ fontSize: 12 }} stroke="#9CA3AF" unit="%" />
                    <Tooltip
                      contentStyle={{
                        backgroundColor: '#1F2937',
                        border: 'none',
                        borderRadius: '8px',
                        color: '#F9FAFB',
                      }}
                      formatter={(value: number) => [`${value}%`, 'Accuracy']}
                    />
                    <Line
                      type="monotone"
                      dataKey="score"
                      stroke="#10B981"
                      strokeWidth={2}
                      dot={{ fill: '#10B981', strokeWidth: 2 }}
                    />
                  </LineChart>
                </ResponsiveContainer>
              </div>
            ) : (
              <div className="h-64 flex items-center justify-center text-gray-500">
                Complete quizzes to see your accuracy trend
              </div>
            )}
          </Card>
        </div>

        {/* Learning Velocity */}
        {velocity && (
          <Card className="mb-8">
            <div className="flex items-center justify-between mb-4">
              <h3 className="font-semibold text-gray-900 dark:text-white">
                Learning Velocity
              </h3>
              {trendInfo && (
                <span className={`flex items-center gap-1 text-sm ${trendInfo.color}`}>
                  <TrendIcon className="w-4 h-4" />
                  {trendInfo.label}
                </span>
              )}
            </div>
            <div className="grid grid-cols-1 sm:grid-cols-3 gap-6">
              <div className="text-center">
                <p className="text-3xl font-bold text-gray-900 dark:text-white">
                  {velocity.topicsPerWeek}
                </p>
                <p className="text-sm text-gray-600 dark:text-gray-400">Topics/Week</p>
              </div>
              <div className="text-center">
                <p className="text-3xl font-bold text-gray-900 dark:text-white">
                  {velocity.averageQuizScore}%
                </p>
                <p className="text-sm text-gray-600 dark:text-gray-400">Avg Quiz Score</p>
              </div>
              <div className="text-center">
                <p className="text-3xl font-bold text-gray-900 dark:text-white">
                  {velocity.averageTimePerTopic}m
                </p>
                <p className="text-sm text-gray-600 dark:text-gray-400">Avg Time/Topic</p>
              </div>
            </div>
          </Card>
        )}

        {/* Subject Mastery */}
        <section>
          <h2 className="text-xl font-bold text-gray-900 dark:text-white mb-4">
            Subject Mastery
          </h2>
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {subjectMastery.map((mastery) => (
              <SubjectMasteryCard key={mastery.subjectId} mastery={mastery} />
            ))}
          </div>
        </section>
      </main>
    </div>
  );
}

// ============================================================================
// Sub-components
// ============================================================================

interface StatCardProps {
  icon: React.ReactNode;
  label: string;
  value: string;
  subtext: string;
  iconBg: string;
  iconColor: string;
}

function StatCard({ icon, label, value, subtext, iconBg, iconColor }: StatCardProps) {
  return (
    <Card>
      <div className="flex items-start gap-3">
        <div className={`p-2 rounded-lg ${iconBg} ${iconColor}`}>{icon}</div>
        <div className="min-w-0">
          <p className="text-sm text-gray-600 dark:text-gray-400 truncate">{label}</p>
          <p className="text-xl font-bold text-gray-900 dark:text-white">{value}</p>
          <p className="text-xs text-gray-500 dark:text-gray-400">{subtext}</p>
        </div>
      </div>
    </Card>
  );
}

interface InsightCardProps {
  insight: LearningInsight;
}

function InsightCard({ insight }: InsightCardProps) {
  const navigate = useNavigate();

  const bgColors = {
    achievement: 'bg-green-50 dark:bg-green-900/20 border-green-200 dark:border-green-800',
    recommendation: 'bg-blue-50 dark:bg-blue-900/20 border-blue-200 dark:border-blue-800',
    warning: 'bg-amber-50 dark:bg-amber-900/20 border-amber-200 dark:border-amber-800',
    celebration: 'bg-purple-50 dark:bg-purple-900/20 border-purple-200 dark:border-purple-800',
  };

  const iconColors = {
    achievement: 'text-green-600 dark:text-green-400',
    recommendation: 'text-blue-600 dark:text-blue-400',
    warning: 'text-amber-600 dark:text-amber-400',
    celebration: 'text-purple-600 dark:text-purple-400',
  };

  const icons = {
    achievement: <Award className="w-5 h-5" />,
    recommendation: <Brain className="w-5 h-5" />,
    warning: <Target className="w-5 h-5" />,
    celebration: <Zap className="w-5 h-5" />,
  };

  return (
    <Card className={`${bgColors[insight.type]}`}>
      <div className="flex items-start gap-3">
        <div className={iconColors[insight.type]}>{icons[insight.type]}</div>
        <div className="flex-1">
          <h4 className="font-medium text-gray-900 dark:text-white">{insight.title}</h4>
          <p className="text-sm text-gray-600 dark:text-gray-400 mt-1">{insight.message}</p>
          {insight.actionUrl && (
            <button
              onClick={() => navigate(insight.actionUrl!)}
              className={`mt-2 text-sm font-medium flex items-center gap-1 ${iconColors[insight.type]}`}
            >
              {insight.actionLabel}
              <ChevronRight className="w-4 h-4" />
            </button>
          )}
        </div>
      </div>
    </Card>
  );
}

interface SubjectMasteryCardProps {
  mastery: SubjectMastery;
}

function SubjectMasteryCard({ mastery }: SubjectMasteryCardProps) {
  const completionPercentage =
    mastery.totalTopics > 0
      ? Math.round((mastery.topicsCompleted / mastery.totalTopics) * 100)
      : 0;

  return (
    <Card>
      <div className="flex items-center gap-3 mb-3">
        <span className="text-2xl">{mastery.subjectIcon}</span>
        <div>
          <h4 className="font-semibold text-gray-900 dark:text-white">{mastery.subjectName}</h4>
          <p className={`text-sm font-medium capitalize ${getMasteryColor(mastery.masteryLevel)}`}>
            {mastery.masteryLevel}
          </p>
        </div>
      </div>

      <div className="space-y-3">
        <div>
          <div className="flex justify-between text-sm mb-1">
            <span className="text-gray-600 dark:text-gray-400">Progress</span>
            <span className="text-gray-900 dark:text-white">
              {mastery.topicsCompleted}/{mastery.totalTopics}
            </span>
          </div>
          <div className="h-2 bg-gray-200 dark:bg-gray-700 rounded-full overflow-hidden">
            <div
              className="h-full transition-all"
              style={{
                width: `${completionPercentage}%`,
                backgroundColor: mastery.subjectColor,
              }}
            />
          </div>
        </div>

        {mastery.averageScore > 0 && (
          <div className="flex justify-between text-sm">
            <span className="text-gray-600 dark:text-gray-400">Average Score</span>
            <span className="font-medium text-gray-900 dark:text-white">
              {mastery.averageScore}%
            </span>
          </div>
        )}
      </div>
    </Card>
  );
}
