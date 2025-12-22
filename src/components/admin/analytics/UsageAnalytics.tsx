import { useState, useEffect } from 'react';
import {
  LineChart,
  Line,
  BarChart,
  Bar,
  PieChart,
  Pie,
  Cell,
  XAxis,
  YAxis,
  CartesianGrid,
  Tooltip,
  Legend,
  ResponsiveContainer,
  AreaChart,
  Area
} from 'recharts';
import {
  RefreshCw,
  Users,
  Clock,
  BookOpen,
  TrendingUp,
  HelpCircle
} from 'lucide-react';
import { adminStats, type UserGrowthData, type SubjectCompletionData, type GradeDistributionData } from '@/services/adminStats';
import Card from '@/components/shared/Card';
import Button from '@/components/shared/Button';

interface DailyEngagement {
  date: string;
  timeMinutes: number;
  questions: number;
  topics: number;
}

export default function UsageAnalytics() {
  const [loading, setLoading] = useState(true);
  const [userGrowth, setUserGrowth] = useState<UserGrowthData[]>([]);
  const [subjectCompletion, setSubjectCompletion] = useState<SubjectCompletionData[]>([]);
  const [gradeDistribution, setGradeDistribution] = useState<GradeDistributionData[]>([]);
  const [dailyEngagement, setDailyEngagement] = useState<DailyEngagement[]>([]);
  const [stats, setStats] = useState({
    totalUsers: 0,
    activeUsers: 0,
    totalSessions: 0,
    avgSessionDuration: 0,
    totalQuestionsAnswered: 0,
    topicsCompleted: 0
  });

  useEffect(() => {
    loadAnalytics();
  }, []);

  const loadAnalytics = async () => {
    setLoading(true);
    try {
      const [growth, subjects, grades, engagement, allStats] = await Promise.all([
        adminStats.getUserGrowth(30),
        adminStats.getSubjectCompletion(),
        adminStats.getGradeDistribution(),
        adminStats.getDailyEngagement(30),
        adminStats.getAllStats()
      ]);

      setUserGrowth(growth);
      setSubjectCompletion(subjects);
      setGradeDistribution(grades);
      setDailyEngagement(engagement);
      setStats(allStats);
    } catch (error) {
      console.error('Error loading analytics:', error);
    } finally {
      setLoading(false);
    }
  };

  const formatDate = (dateStr: string) => {
    const date = new Date(dateStr);
    return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' });
  };

  const formatNumber = (num: number) => {
    if (num >= 1000000) return `${(num / 1000000).toFixed(1)}M`;
    if (num >= 1000) return `${(num / 1000).toFixed(1)}K`;
    return num.toString();
  };

  const COLORS = ['#3B82F6', '#10B981', '#F59E0B', '#EF4444', '#8B5CF6', '#EC4899', '#06B6D4'];

  if (loading) {
    return (
      <div className="flex items-center justify-center py-20">
        <RefreshCw className="w-8 h-8 animate-spin text-primary-600" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white">Usage Analytics</h1>
          <p className="text-gray-600 dark:text-gray-400">
            Platform usage and engagement metrics
          </p>
        </div>
        <Button onClick={loadAnalytics} variant="secondary" disabled={loading}>
          <RefreshCw className={`w-4 h-4 mr-2 ${loading ? 'animate-spin' : ''}`} />
          Refresh
        </Button>
      </div>

      {/* Stats Overview */}
      <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-4">
        <Card className="text-center p-4">
          <Users className="w-8 h-8 text-blue-500 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {formatNumber(stats.totalUsers)}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Total Users</p>
        </Card>

        <Card className="text-center p-4">
          <TrendingUp className="w-8 h-8 text-green-500 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {formatNumber(stats.activeUsers)}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Active (7d)</p>
        </Card>

        <Card className="text-center p-4">
          <BookOpen className="w-8 h-8 text-purple-500 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {formatNumber(stats.totalSessions)}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Sessions</p>
        </Card>

        <Card className="text-center p-4">
          <Clock className="w-8 h-8 text-amber-500 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {stats.avgSessionDuration}m
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Avg Duration</p>
        </Card>

        <Card className="text-center p-4">
          <HelpCircle className="w-8 h-8 text-pink-500 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {formatNumber(stats.totalQuestionsAnswered)}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Questions</p>
        </Card>

        <Card className="text-center p-4">
          <BookOpen className="w-8 h-8 text-teal-500 mx-auto mb-2" />
          <p className="text-2xl font-bold text-gray-900 dark:text-white">
            {formatNumber(stats.topicsCompleted)}
          </p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Completed</p>
        </Card>
      </div>

      {/* Charts Row 1 */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* User Growth */}
        <Card>
          <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            User Signups (Last 30 Days)
          </h3>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <AreaChart data={userGrowth}>
                <defs>
                  <linearGradient id="userGradient" x1="0" y1="0" x2="0" y2="1">
                    <stop offset="5%" stopColor="#3B82F6" stopOpacity={0.3} />
                    <stop offset="95%" stopColor="#3B82F6" stopOpacity={0} />
                  </linearGradient>
                </defs>
                <CartesianGrid strokeDasharray="3 3" className="stroke-gray-200 dark:stroke-gray-700" />
                <XAxis
                  dataKey="date"
                  tickFormatter={formatDate}
                  tick={{ fontSize: 12 }}
                  className="text-gray-500"
                />
                <YAxis tick={{ fontSize: 12 }} className="text-gray-500" />
                <Tooltip
                  contentStyle={{
                    backgroundColor: 'var(--tooltip-bg, #fff)',
                    border: '1px solid var(--tooltip-border, #e5e7eb)',
                    borderRadius: '8px'
                  }}
                  labelFormatter={formatDate}
                />
                <Area
                  type="monotone"
                  dataKey="users"
                  stroke="#3B82F6"
                  fill="url(#userGradient)"
                  strokeWidth={2}
                />
              </AreaChart>
            </ResponsiveContainer>
          </div>
        </Card>

        {/* Subject Completion */}
        <Card>
          <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Completions by Subject
          </h3>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={subjectCompletion.filter(s => s.completed > 0)}
                  cx="50%"
                  cy="50%"
                  innerRadius={60}
                  outerRadius={80}
                  paddingAngle={5}
                  dataKey="completed"
                  nameKey="subject"
                  label={({ subject, completed }) => `${subject}: ${completed}`}
                  labelLine={false}
                >
                  {subjectCompletion.map((entry, index) => (
                    <Cell key={`cell-${index}`} fill={entry.color || COLORS[index % COLORS.length]} />
                  ))}
                </Pie>
                <Tooltip />
              </PieChart>
            </ResponsiveContainer>
          </div>
          <div className="flex flex-wrap gap-2 justify-center mt-4">
            {subjectCompletion.map((subject, index) => (
              <div key={index} className="flex items-center gap-2 text-sm">
                <div
                  className="w-3 h-3 rounded-full"
                  style={{ backgroundColor: subject.color || COLORS[index % COLORS.length] }}
                />
                <span className="text-gray-600 dark:text-gray-400">{subject.subject}</span>
              </div>
            ))}
          </div>
        </Card>
      </div>

      {/* Charts Row 2 */}
      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Daily Engagement */}
        <Card>
          <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Daily Engagement (Last 30 Days)
          </h3>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <LineChart data={dailyEngagement}>
                <CartesianGrid strokeDasharray="3 3" className="stroke-gray-200 dark:stroke-gray-700" />
                <XAxis
                  dataKey="date"
                  tickFormatter={formatDate}
                  tick={{ fontSize: 12 }}
                  className="text-gray-500"
                />
                <YAxis tick={{ fontSize: 12 }} className="text-gray-500" />
                <Tooltip
                  contentStyle={{
                    backgroundColor: 'var(--tooltip-bg, #fff)',
                    border: '1px solid var(--tooltip-border, #e5e7eb)',
                    borderRadius: '8px'
                  }}
                  labelFormatter={formatDate}
                />
                <Legend />
                <Line
                  type="monotone"
                  dataKey="timeMinutes"
                  name="Time (min)"
                  stroke="#3B82F6"
                  strokeWidth={2}
                  dot={false}
                />
                <Line
                  type="monotone"
                  dataKey="questions"
                  name="Questions"
                  stroke="#10B981"
                  strokeWidth={2}
                  dot={false}
                />
                <Line
                  type="monotone"
                  dataKey="topics"
                  name="Topics"
                  stroke="#F59E0B"
                  strokeWidth={2}
                  dot={false}
                />
              </LineChart>
            </ResponsiveContainer>
          </div>
        </Card>

        {/* Grade Distribution */}
        <Card>
          <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Users by Grade Level
          </h3>
          <div className="h-64">
            <ResponsiveContainer width="100%" height="100%">
              <BarChart data={gradeDistribution}>
                <CartesianGrid strokeDasharray="3 3" className="stroke-gray-200 dark:stroke-gray-700" />
                <XAxis
                  dataKey="grade"
                  tick={{ fontSize: 12 }}
                  className="text-gray-500"
                />
                <YAxis tick={{ fontSize: 12 }} className="text-gray-500" />
                <Tooltip
                  contentStyle={{
                    backgroundColor: 'var(--tooltip-bg, #fff)',
                    border: '1px solid var(--tooltip-border, #e5e7eb)',
                    borderRadius: '8px'
                  }}
                />
                <Bar dataKey="count" fill="#8B5CF6" radius={[4, 4, 0, 0]} />
              </BarChart>
            </ResponsiveContainer>
          </div>
        </Card>
      </div>

      {/* Additional Insights */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6">
        <Card>
          <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Engagement Rate
          </h3>
          <div className="text-center">
            <p className="text-4xl font-bold text-primary-600">
              {stats.totalUsers > 0
                ? Math.round((stats.activeUsers / stats.totalUsers) * 100)
                : 0}%
            </p>
            <p className="text-gray-500 dark:text-gray-400 mt-2">
              of users active in last 7 days
            </p>
          </div>
        </Card>

        <Card>
          <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Avg Topics/User
          </h3>
          <div className="text-center">
            <p className="text-4xl font-bold text-green-600">
              {stats.totalUsers > 0
                ? (stats.topicsCompleted / stats.totalUsers).toFixed(1)
                : 0}
            </p>
            <p className="text-gray-500 dark:text-gray-400 mt-2">
              topics completed per user
            </p>
          </div>
        </Card>

        <Card>
          <h3 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Avg Questions/Session
          </h3>
          <div className="text-center">
            <p className="text-4xl font-bold text-purple-600">
              {stats.totalSessions > 0
                ? Math.round(stats.totalQuestionsAnswered / stats.totalSessions)
                : 0}
            </p>
            <p className="text-gray-500 dark:text-gray-400 mt-2">
              questions per learning session
            </p>
          </div>
        </Card>
      </div>
    </div>
  );
}
