import { useState, useEffect } from 'react';
import { Link, Outlet, useLocation, useNavigate } from 'react-router-dom';
import {
  AreaChart,
  Area,
  XAxis,
  YAxis,
  Tooltip,
  ResponsiveContainer
} from 'recharts';
import {
  Settings,
  Home,
  ChevronRight,
  Menu,
  X,
  MessageSquare,
  BookOpen,
  CreditCard,
  Users,
  Activity,
  BarChart3,
  TrendingUp,
  Clock,
  DollarSign,
  HelpCircle,
  UserPlus,
  LogOut,
  GraduationCap,
  Play,
  Brain,
  FlaskConical,
  Volume2
} from 'lucide-react';
import { adminStats, type AdminStats, type UserGrowthData, type ActivityItem } from '@/services/adminStats';
import { useAuth } from '@/contexts/AuthContext';
import ThemeToggle from '@/components/shared/ThemeToggle';

interface NavItem {
  label: string;
  path: string;
  icon: React.ReactNode;
}

const navItems: NavItem[] = [
  { label: 'Dashboard', path: '/admin', icon: <Home className="w-5 h-5" /> },
  { label: 'Users', path: '/admin/users', icon: <Users className="w-5 h-5" /> },
  { label: 'Analytics', path: '/admin/analytics', icon: <BarChart3 className="w-5 h-5" /> },
  { label: 'Activity', path: '/admin/activity', icon: <Activity className="w-5 h-5" /> },
  { label: 'Billing', path: '/admin/billing', icon: <CreditCard className="w-5 h-5" /> },
  { label: 'Prompts', path: '/admin/prompts', icon: <MessageSquare className="w-5 h-5" /> },
  { label: 'Voice Teachers', path: '/admin/voices', icon: <Volume2 className="w-5 h-5" /> },
];

export default function AdminDashboard() {
  const location = useLocation();
  const navigate = useNavigate();
  const { signOut } = useAuth();
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const handleLogout = async () => {
    await signOut();
    navigate('/login');
  };

  const isActive = (path: string) => {
    if (path === '/admin') {
      return location.pathname === '/admin';
    }
    return location.pathname.startsWith(path);
  };

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-slate-900 flex">
      {/* Mobile sidebar overlay */}
      {sidebarOpen && (
        <div
          className="fixed inset-0 bg-black/50 z-40 lg:hidden"
          onClick={() => setSidebarOpen(false)}
        />
      )}

      {/* Sidebar */}
      <aside
        className={`fixed lg:static inset-y-0 left-0 z-50 w-64 bg-white dark:bg-slate-800 border-r border-gray-200 dark:border-slate-700 transform transition-transform duration-200 ease-in-out ${
          sidebarOpen ? 'translate-x-0' : '-translate-x-full lg:translate-x-0'
        }`}
      >
        {/* Sidebar header */}
        <div className="h-16 flex items-center justify-between px-4 border-b border-gray-200 dark:border-slate-700">
          <Link to="/admin" className="flex items-center gap-2">
            <Settings className="w-6 h-6 text-blue-600 dark:text-blue-400" />
            <span className="text-lg font-semibold text-gray-900 dark:text-white">Admin</span>
          </Link>
          <button
            onClick={() => setSidebarOpen(false)}
            className="lg:hidden p-2 text-gray-500 dark:text-slate-400 hover:text-gray-900 dark:hover:text-white"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Navigation */}
        <nav className="p-4 space-y-1">
          {navItems.map((item) => (
            <Link
              key={item.path}
              to={item.path}
              onClick={() => setSidebarOpen(false)}
              className={`flex items-center gap-3 px-3 py-2 rounded-lg transition-colors ${
                isActive(item.path)
                  ? 'bg-blue-50 dark:bg-blue-500/20 text-blue-600 dark:text-blue-400'
                  : 'text-gray-600 dark:text-slate-400 hover:bg-gray-100 dark:hover:bg-slate-700 hover:text-gray-900 dark:hover:text-white'
              }`}
            >
              {item.icon}
              <span>{item.label}</span>
              {isActive(item.path) && (
                <ChevronRight className="w-4 h-4 ml-auto" />
              )}
            </Link>
          ))}
        </nav>

        {/* Back to app link */}
        <div className="absolute bottom-4 left-4 right-4">
          <Link
            to="/dashboard"
            className="flex items-center gap-2 px-3 py-2 text-gray-500 dark:text-slate-400 hover:text-gray-900 dark:hover:text-white transition-colors"
          >
            <Home className="w-5 h-5" />
            <span>Back to App</span>
          </Link>
        </div>
      </aside>

      {/* Main content */}
      <div className="flex-1 flex flex-col min-h-screen">
        {/* Top bar */}
        <header className="h-16 bg-white dark:bg-slate-800 border-b border-gray-200 dark:border-slate-700 flex items-center justify-between px-4 lg:px-6">
          <div className="flex items-center">
            <button
              onClick={() => setSidebarOpen(true)}
              className="lg:hidden p-2 -ml-2 text-gray-500 dark:text-slate-400 hover:text-gray-900 dark:hover:text-white"
            >
              <Menu className="w-6 h-6" />
            </button>

            {/* Breadcrumb */}
            <div className="flex items-center gap-2 text-sm">
              <span className="text-gray-500 dark:text-slate-500">Admin</span>
              {location.pathname !== '/admin' && (
                <>
                  <ChevronRight className="w-4 h-4 text-gray-400 dark:text-slate-600" />
                  <span className="text-gray-700 dark:text-slate-300 capitalize">
                    {location.pathname.split('/').pop()?.replace(/-/g, ' ')}
                  </span>
                </>
              )}
            </div>
          </div>

          {/* Header actions */}
          <div className="flex items-center gap-2">
            <ThemeToggle />
            <button
              onClick={handleLogout}
              className="p-2 text-gray-500 dark:text-slate-400 hover:text-red-600 dark:hover:text-red-400 transition-colors"
              aria-label="Log out"
            >
              <LogOut className="w-5 h-5" />
            </button>
          </div>
        </header>

        {/* Page content */}
        <main className="flex-1 p-4 lg:p-6 overflow-auto bg-gray-50 dark:bg-slate-900">
          <Outlet />
        </main>
      </div>
    </div>
  );
}

/**
 * Admin home page content with real stats and charts
 */
export function AdminHome() {
  const [stats, setStats] = useState<AdminStats | null>(null);
  const [userGrowth, setUserGrowth] = useState<UserGrowthData[]>([]);
  const [recentActivity, setRecentActivity] = useState<ActivityItem[]>([]);
  const [billingStats, setBillingStats] = useState<{
    mrr: number;
    active: number;
    trialing: number;
  } | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    loadDashboardData();
  }, []);

  const loadDashboardData = async () => {
    setLoading(true);
    try {
      const [allStats, growth, activity, billing] = await Promise.all([
        adminStats.getAllStats(),
        adminStats.getUserGrowth(14),
        adminStats.getRecentActivity(10),
        adminStats.getBillingOverview()
      ]);

      setStats(allStats);
      setUserGrowth(growth);
      setRecentActivity(activity);
      setBillingStats(billing);
    } catch (error) {
      console.error('Error loading dashboard data:', error);
    } finally {
      setLoading(false);
    }
  };

  const formatNumber = (num: number) => {
    if (num >= 1000000) return `${(num / 1000000).toFixed(1)}M`;
    if (num >= 1000) return `${(num / 1000).toFixed(1)}K`;
    return num.toString();
  };

  const formatDate = (dateStr: string) => {
    const date = new Date(dateStr);
    return date.toLocaleDateString('en-US', { month: 'short', day: 'numeric' });
  };

  const formatTime = (dateStr: string) => {
    const date = new Date(dateStr);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMs / 3600000);

    if (diffMins < 60) return `${diffMins}m ago`;
    if (diffHours < 24) return `${diffHours}h ago`;
    return formatDate(dateStr);
  };

  const getActivityIcon = (type: string) => {
    switch (type) {
      case 'signup':
        return <UserPlus className="w-4 h-4 text-green-400" />;
      case 'session':
        return <BookOpen className="w-4 h-4 text-blue-400" />;
      case 'completion':
        return <TrendingUp className="w-4 h-4 text-amber-400" />;
      default:
        return <Activity className="w-4 h-4 text-slate-400" />;
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center py-20">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-600 dark:border-blue-400"></div>
      </div>
    );
  }

  return (
    <div className="max-w-7xl mx-auto space-y-6">
      <h1 className="text-2xl font-bold text-gray-900 dark:text-white">Dashboard Overview</h1>

      {/* Key Metrics Row */}
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center justify-between mb-4">
            <div className="w-12 h-12 bg-blue-100 dark:bg-blue-500/10 rounded-lg flex items-center justify-center">
              <Users className="w-6 h-6 text-blue-600 dark:text-blue-400" />
            </div>
            {stats?.newUsersToday ? (
              <span className="text-xs text-green-600 dark:text-green-400 bg-green-100 dark:bg-green-500/10 px-2 py-1 rounded">
                +{stats.newUsersToday} today
              </span>
            ) : null}
          </div>
          <div className="text-3xl font-bold text-gray-900 dark:text-white">{formatNumber(stats?.totalUsers || 0)}</div>
          <div className="text-sm text-gray-500 dark:text-slate-400">Total Users</div>
        </div>

        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center justify-between mb-4">
            <div className="w-12 h-12 bg-green-100 dark:bg-green-500/10 rounded-lg flex items-center justify-center">
              <TrendingUp className="w-6 h-6 text-green-600 dark:text-green-400" />
            </div>
          </div>
          <div className="text-3xl font-bold text-gray-900 dark:text-white">{formatNumber(stats?.activeUsers || 0)}</div>
          <div className="text-sm text-gray-500 dark:text-slate-400">Active Users (7d)</div>
        </div>

        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center justify-between mb-4">
            <div className="w-12 h-12 bg-purple-100 dark:bg-purple-500/10 rounded-lg flex items-center justify-center">
              <BookOpen className="w-6 h-6 text-purple-600 dark:text-purple-400" />
            </div>
          </div>
          <div className="text-3xl font-bold text-gray-900 dark:text-white">{formatNumber(stats?.topicsCompleted || 0)}</div>
          <div className="text-sm text-gray-500 dark:text-slate-400">Topics Completed</div>
        </div>

        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center justify-between mb-4">
            <div className="w-12 h-12 bg-emerald-100 dark:bg-emerald-500/10 rounded-lg flex items-center justify-center">
              <DollarSign className="w-6 h-6 text-emerald-600 dark:text-emerald-400" />
            </div>
          </div>
          <div className="text-3xl font-bold text-gray-900 dark:text-white">
            ${((billingStats?.mrr || 0) / 100).toFixed(0)}
          </div>
          <div className="text-sm text-gray-500 dark:text-slate-400">Monthly Revenue</div>
        </div>
      </div>

      {/* Engagement Stats Row */}
      <div className="grid gap-4 md:grid-cols-3">
        <div className="bg-white dark:bg-slate-800/50 rounded-lg p-4 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center gap-3">
            <HelpCircle className="w-5 h-5 text-pink-600 dark:text-pink-400" />
            <div>
              <div className="text-xl font-bold text-gray-900 dark:text-white">
                {formatNumber(stats?.totalQuestionsAnswered || 0)}
              </div>
              <div className="text-sm text-gray-500 dark:text-slate-400">Questions Answered</div>
            </div>
          </div>
        </div>

        <div className="bg-white dark:bg-slate-800/50 rounded-lg p-4 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center gap-3">
            <Clock className="w-5 h-5 text-amber-600 dark:text-amber-400" />
            <div>
              <div className="text-xl font-bold text-gray-900 dark:text-white">
                {Math.round((stats?.totalTimeSpentMinutes || 0) / 60)}h
              </div>
              <div className="text-sm text-gray-500 dark:text-slate-400">Total Learning Time</div>
            </div>
          </div>
        </div>

        <div className="bg-white dark:bg-slate-800/50 rounded-lg p-4 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center gap-3">
            <Activity className="w-5 h-5 text-cyan-600 dark:text-cyan-400" />
            <div>
              <div className="text-xl font-bold text-gray-900 dark:text-white">
                {stats?.avgSessionDuration || 0}m
              </div>
              <div className="text-sm text-gray-500 dark:text-slate-400">Avg Session Duration</div>
            </div>
          </div>
        </div>
      </div>

      {/* Charts and Activity Row */}
      <div className="grid gap-6 lg:grid-cols-2">
        {/* User Growth Chart */}
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700 shadow-sm">
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">User Signups (14 Days)</h2>
          <div className="h-48">
            <ResponsiveContainer width="100%" height="100%">
              <AreaChart data={userGrowth}>
                <defs>
                  <linearGradient id="adminUserGradient" x1="0" y1="0" x2="0" y2="1">
                    <stop offset="5%" stopColor="#3B82F6" stopOpacity={0.3} />
                    <stop offset="95%" stopColor="#3B82F6" stopOpacity={0} />
                  </linearGradient>
                </defs>
                <XAxis
                  dataKey="date"
                  tickFormatter={formatDate}
                  tick={{ fontSize: 11, fill: '#64748b' }}
                  axisLine={false}
                  tickLine={false}
                />
                <YAxis
                  tick={{ fontSize: 11, fill: '#64748b' }}
                  axisLine={false}
                  tickLine={false}
                />
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
                  fill="url(#adminUserGradient)"
                  strokeWidth={2}
                />
              </AreaChart>
            </ResponsiveContainer>
          </div>
        </div>

        {/* Recent Activity */}
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700 shadow-sm">
          <div className="flex items-center justify-between mb-4">
            <h2 className="text-lg font-semibold text-gray-900 dark:text-white">Recent Activity</h2>
            <Link
              to="/admin/activity"
              className="text-sm text-blue-600 dark:text-blue-400 hover:text-blue-700 dark:hover:text-blue-300"
            >
              View all
            </Link>
          </div>
          <div className="space-y-3 max-h-48 overflow-y-auto">
            {recentActivity.map((activity) => (
              <div
                key={activity.id}
                className="flex items-center gap-3 p-2 rounded-lg hover:bg-gray-50 dark:hover:bg-slate-700/50"
              >
                <div className="p-1.5 bg-gray-100 dark:bg-slate-700 rounded">
                  {getActivityIcon(activity.type)}
                </div>
                <div className="flex-1 min-w-0">
                  <p className="text-sm text-gray-900 dark:text-white truncate">{activity.userName}</p>
                  <p className="text-xs text-gray-500 dark:text-slate-400 truncate">{activity.description}</p>
                </div>
                <span className="text-xs text-gray-400 dark:text-slate-500 flex-shrink-0">
                  {formatTime(activity.createdAt)}
                </span>
              </div>
            ))}
            {recentActivity.length === 0 && (
              <p className="text-center text-gray-500 dark:text-slate-400 py-4">No recent activity</p>
            )}
          </div>
        </div>
      </div>

      {/* Quick Links */}
      <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-4">
        <Link
          to="/admin/users"
          className="bg-white dark:bg-slate-800 rounded-xl p-4 border border-gray-200 dark:border-slate-700 hover:border-blue-500/50 transition-colors group flex items-center gap-4 shadow-sm"
        >
          <div className="w-10 h-10 bg-blue-100 dark:bg-blue-500/10 rounded-lg flex items-center justify-center group-hover:bg-blue-200 dark:group-hover:bg-blue-500/20">
            <Users className="w-5 h-5 text-blue-600 dark:text-blue-400" />
          </div>
          <div>
            <h3 className="font-semibold text-gray-900 dark:text-white">Manage Users</h3>
            <p className="text-sm text-gray-500 dark:text-slate-400">View all users</p>
          </div>
        </Link>

        <Link
          to="/admin/analytics"
          className="bg-white dark:bg-slate-800 rounded-xl p-4 border border-gray-200 dark:border-slate-700 hover:border-purple-500/50 transition-colors group flex items-center gap-4 shadow-sm"
        >
          <div className="w-10 h-10 bg-purple-100 dark:bg-purple-500/10 rounded-lg flex items-center justify-center group-hover:bg-purple-200 dark:group-hover:bg-purple-500/20">
            <BarChart3 className="w-5 h-5 text-purple-600 dark:text-purple-400" />
          </div>
          <div>
            <h3 className="font-semibold text-gray-900 dark:text-white">Analytics</h3>
            <p className="text-sm text-gray-500 dark:text-slate-400">View detailed stats</p>
          </div>
        </Link>

        <Link
          to="/admin/billing"
          className="bg-white dark:bg-slate-800 rounded-xl p-4 border border-gray-200 dark:border-slate-700 hover:border-emerald-500/50 transition-colors group flex items-center gap-4 shadow-sm"
        >
          <div className="w-10 h-10 bg-emerald-100 dark:bg-emerald-500/10 rounded-lg flex items-center justify-center group-hover:bg-emerald-200 dark:group-hover:bg-emerald-500/20">
            <CreditCard className="w-5 h-5 text-emerald-600 dark:text-emerald-400" />
          </div>
          <div>
            <h3 className="font-semibold text-gray-900 dark:text-white">Billing</h3>
            <p className="text-sm text-gray-500 dark:text-slate-400">Subscriptions & revenue</p>
          </div>
        </Link>

        <Link
          to="/admin/prompts"
          className="bg-white dark:bg-slate-800 rounded-xl p-4 border border-gray-200 dark:border-slate-700 hover:border-amber-500/50 transition-colors group flex items-center gap-4 shadow-sm"
        >
          <div className="w-10 h-10 bg-amber-100 dark:bg-amber-500/10 rounded-lg flex items-center justify-center group-hover:bg-amber-200 dark:group-hover:bg-amber-500/20">
            <MessageSquare className="w-5 h-5 text-amber-600 dark:text-amber-400" />
          </div>
          <div>
            <h3 className="font-semibold text-gray-900 dark:text-white">Prompts</h3>
            <p className="text-sm text-gray-500 dark:text-slate-400">Manage AI prompts</p>
          </div>
        </Link>
      </div>

      {/* Test as User Section */}
      <div className="bg-gradient-to-r from-indigo-500/10 to-purple-500/10 dark:from-indigo-500/5 dark:to-purple-500/5 rounded-xl p-6 border border-indigo-200 dark:border-indigo-500/20">
        <div className="flex items-center gap-3 mb-4">
          <div className="w-10 h-10 bg-indigo-100 dark:bg-indigo-500/20 rounded-lg flex items-center justify-center">
            <FlaskConical className="w-5 h-5 text-indigo-600 dark:text-indigo-400" />
          </div>
          <div>
            <h2 className="text-lg font-semibold text-gray-900 dark:text-white">Test as User</h2>
            <p className="text-sm text-gray-500 dark:text-slate-400">Experience the app like a regular user</p>
          </div>
        </div>
        <div className="grid gap-3 sm:grid-cols-2 lg:grid-cols-4">
          <Link
            to="/dashboard"
            className="flex items-center gap-3 p-3 bg-white dark:bg-slate-800 rounded-lg border border-gray-200 dark:border-slate-700 hover:border-indigo-400 dark:hover:border-indigo-500 transition-colors group"
          >
            <div className="p-2 bg-blue-100 dark:bg-blue-500/10 rounded-lg group-hover:bg-blue-200 dark:group-hover:bg-blue-500/20">
              <GraduationCap className="w-5 h-5 text-blue-600 dark:text-blue-400" />
            </div>
            <div>
              <p className="font-medium text-gray-900 dark:text-white">Dashboard</p>
              <p className="text-xs text-gray-500 dark:text-slate-400">Browse subjects</p>
            </div>
          </Link>

          <Link
            to="/lesson"
            className="flex items-center gap-3 p-3 bg-white dark:bg-slate-800 rounded-lg border border-gray-200 dark:border-slate-700 hover:border-indigo-400 dark:hover:border-indigo-500 transition-colors group"
          >
            <div className="p-2 bg-green-100 dark:bg-green-500/10 rounded-lg group-hover:bg-green-200 dark:group-hover:bg-green-500/20">
              <Play className="w-5 h-5 text-green-600 dark:text-green-400" />
            </div>
            <div>
              <p className="font-medium text-gray-900 dark:text-white">Start Lesson</p>
              <p className="text-xs text-gray-500 dark:text-slate-400">Learn a topic</p>
            </div>
          </Link>

          <Link
            to="/practice"
            className="flex items-center gap-3 p-3 bg-white dark:bg-slate-800 rounded-lg border border-gray-200 dark:border-slate-700 hover:border-indigo-400 dark:hover:border-indigo-500 transition-colors group"
          >
            <div className="p-2 bg-amber-100 dark:bg-amber-500/10 rounded-lg group-hover:bg-amber-200 dark:group-hover:bg-amber-500/20">
              <HelpCircle className="w-5 h-5 text-amber-600 dark:text-amber-400" />
            </div>
            <div>
              <p className="font-medium text-gray-900 dark:text-white">Practice Quiz</p>
              <p className="text-xs text-gray-500 dark:text-slate-400">Test knowledge</p>
            </div>
          </Link>

          <Link
            to="/chat"
            className="flex items-center gap-3 p-3 bg-white dark:bg-slate-800 rounded-lg border border-gray-200 dark:border-slate-700 hover:border-indigo-400 dark:hover:border-indigo-500 transition-colors group"
          >
            <div className="p-2 bg-purple-100 dark:bg-purple-500/10 rounded-lg group-hover:bg-purple-200 dark:group-hover:bg-purple-500/20">
              <Brain className="w-5 h-5 text-purple-600 dark:text-purple-400" />
            </div>
            <div>
              <p className="font-medium text-gray-900 dark:text-white">AI Tutor</p>
              <p className="text-xs text-gray-500 dark:text-slate-400">Chat with tutor</p>
            </div>
          </Link>
        </div>
      </div>

      {/* Billing Summary */}
      {billingStats && (
        <div className="bg-white dark:bg-slate-800 rounded-xl p-6 border border-gray-200 dark:border-slate-700 shadow-sm">
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">Subscription Overview</h2>
          <div className="grid gap-4 md:grid-cols-3">
            <div className="text-center p-4 bg-gray-50 dark:bg-slate-700/30 rounded-lg">
              <div className="text-2xl font-bold text-emerald-600 dark:text-emerald-400">
                ${((billingStats.mrr || 0) / 100).toFixed(2)}
              </div>
              <div className="text-sm text-gray-500 dark:text-slate-400">Monthly Revenue</div>
            </div>
            <div className="text-center p-4 bg-gray-50 dark:bg-slate-700/30 rounded-lg">
              <div className="text-2xl font-bold text-blue-600 dark:text-blue-400">{billingStats.active}</div>
              <div className="text-sm text-gray-500 dark:text-slate-400">Active Subscriptions</div>
            </div>
            <div className="text-center p-4 bg-gray-50 dark:bg-slate-700/30 rounded-lg">
              <div className="text-2xl font-bold text-purple-600 dark:text-purple-400">{billingStats.trialing}</div>
              <div className="text-sm text-gray-500 dark:text-slate-400">Trialing</div>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
