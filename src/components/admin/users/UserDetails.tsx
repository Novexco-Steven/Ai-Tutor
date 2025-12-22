import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import {
  ArrowLeft,
  Shield,
  ShieldOff,
  Mail,
  Calendar,
  Clock,
  BookOpen,
  Trophy,
  CreditCard,
  RefreshCw,
  User,
  GraduationCap
} from 'lucide-react';
import { adminStats } from '@/services/adminStats';
import { useAuth } from '@/contexts/AuthContext';
import Card from '@/components/shared/Card';
import Button from '@/components/shared/Button';

interface UserDetails {
  id: string;
  email: string;
  name: string;
  grade_level: number;
  created_at: string;
  subscription_tier: string;
  isAdmin: boolean;
  adminRole: string | null;
  sessions: Array<{
    id: string;
    started_at: string;
    ended_at: string | null;
    time_spent: number | null;
    questions_attempted: number | null;
    questions_correct: number | null;
    topic: { name: string; subject: { name: string } } | null;
  }>;
  progress: Array<{
    status: string;
    assessment_score: number | null;
    topic: { name: string; subject: { name: string; color: string } } | null;
  }>;
  subscription: {
    plan_id: string;
    status: string;
    current_period_end: string;
  } | null;
}

export default function UserDetailsPage() {
  const { id } = useParams<{ id: string }>();
  const navigate = useNavigate();
  const { user: currentUser } = useAuth();
  const [user, setUser] = useState<UserDetails | null>(null);
  const [loading, setLoading] = useState(true);
  const [actionLoading, setActionLoading] = useState(false);

  useEffect(() => {
    if (id) {
      loadUserDetails();
    }
  }, [id]);

  const loadUserDetails = async () => {
    if (!id) return;
    setLoading(true);
    try {
      const data = await adminStats.getUserDetails(id);
      setUser(data);
    } catch (error) {
      console.error('Error loading user details:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleToggleAdmin = async () => {
    if (!user || !currentUser) return;
    setActionLoading(true);
    try {
      if (user.isAdmin) {
        await adminStats.removeUserAdmin(user.id);
      } else {
        await adminStats.makeUserAdmin(user.id, 'admin', currentUser.id);
      }
      await loadUserDetails();
    } catch (error) {
      console.error('Error toggling admin status:', error);
    } finally {
      setActionLoading(false);
    }
  };

  const formatDate = (dateStr: string) => {
    return new Date(dateStr).toLocaleDateString('en-US', {
      month: 'short',
      day: 'numeric',
      year: 'numeric',
      hour: '2-digit',
      minute: '2-digit'
    });
  };

  const formatDuration = (seconds: number | null) => {
    if (!seconds) return '-';
    const mins = Math.floor(seconds / 60);
    if (mins < 60) return `${mins}m`;
    const hours = Math.floor(mins / 60);
    return `${hours}h ${mins % 60}m`;
  };

  const getStatusColor = (status: string) => {
    switch (status) {
      case 'completed':
        return 'text-green-600 bg-green-100 dark:bg-green-900/20 dark:text-green-400';
      case 'in_progress':
        return 'text-blue-600 bg-blue-100 dark:bg-blue-900/20 dark:text-blue-400';
      default:
        return 'text-gray-600 bg-gray-100 dark:bg-gray-700 dark:text-gray-400';
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center py-20">
        <RefreshCw className="w-8 h-8 animate-spin text-primary-600" />
      </div>
    );
  }

  if (!user) {
    return (
      <div className="text-center py-20">
        <User className="w-16 h-16 text-gray-300 dark:text-gray-600 mx-auto mb-4" />
        <h2 className="text-xl font-bold text-gray-900 dark:text-white mb-2">User Not Found</h2>
        <p className="text-gray-600 dark:text-gray-400 mb-4">
          The user you're looking for doesn't exist.
        </p>
        <Button onClick={() => navigate('/admin/users')}>
          <ArrowLeft className="w-4 h-4 mr-2" />
          Back to Users
        </Button>
      </div>
    );
  }

  const completedTopics = user.progress.filter(p => p.status === 'completed').length;
  const inProgressTopics = user.progress.filter(p => p.status === 'in_progress').length;
  const totalTimeSpent = user.sessions.reduce((sum, s) => sum + (s.time_spent || 0), 0);
  const totalQuestions = user.sessions.reduce((sum, s) => sum + (s.questions_attempted || 0), 0);
  const correctQuestions = user.sessions.reduce((sum, s) => sum + (s.questions_correct || 0), 0);
  const accuracy = totalQuestions > 0 ? Math.round((correctQuestions / totalQuestions) * 100) : 0;

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-4">
          <Button variant="ghost" onClick={() => navigate('/admin/users')}>
            <ArrowLeft className="w-4 h-4 mr-2" />
            Back
          </Button>
          <div className="w-16 h-16 rounded-full bg-primary-100 dark:bg-primary-900/20 flex items-center justify-center">
            <span className="text-2xl font-bold text-primary-600 dark:text-primary-400">
              {user.name.charAt(0).toUpperCase()}
            </span>
          </div>
          <div>
            <div className="flex items-center gap-2">
              <h1 className="text-2xl font-bold text-gray-900 dark:text-white">{user.name}</h1>
              {user.isAdmin && (
                <span className="px-2 py-0.5 text-xs font-medium rounded-full bg-amber-100 text-amber-600 dark:bg-amber-900/20 dark:text-amber-400">
                  {user.adminRole === 'super_admin' ? 'Super Admin' : 'Admin'}
                </span>
              )}
            </div>
            <p className="text-gray-600 dark:text-gray-400">{user.email}</p>
          </div>
        </div>
        <Button
          variant={user.isAdmin ? 'secondary' : 'primary'}
          onClick={handleToggleAdmin}
          disabled={actionLoading || user.id === currentUser?.id}
        >
          {actionLoading ? (
            <RefreshCw className="w-4 h-4 mr-2 animate-spin" />
          ) : user.isAdmin ? (
            <ShieldOff className="w-4 h-4 mr-2" />
          ) : (
            <Shield className="w-4 h-4 mr-2" />
          )}
          {user.isAdmin ? 'Remove Admin' : 'Make Admin'}
        </Button>
      </div>

      {/* User Info Cards */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4">
        <Card className="flex items-center gap-4">
          <div className="p-3 bg-blue-100 dark:bg-blue-900/20 rounded-lg">
            <GraduationCap className="w-6 h-6 text-blue-600 dark:text-blue-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Grade Level</p>
            <p className="text-xl font-bold text-gray-900 dark:text-white">
              {user.grade_level === 0 ? 'K' : user.grade_level || 'Not Set'}
            </p>
          </div>
        </Card>

        <Card className="flex items-center gap-4">
          <div className="p-3 bg-green-100 dark:bg-green-900/20 rounded-lg">
            <BookOpen className="w-6 h-6 text-green-600 dark:text-green-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Topics Completed</p>
            <p className="text-xl font-bold text-gray-900 dark:text-white">{completedTopics}</p>
          </div>
        </Card>

        <Card className="flex items-center gap-4">
          <div className="p-3 bg-purple-100 dark:bg-purple-900/20 rounded-lg">
            <Clock className="w-6 h-6 text-purple-600 dark:text-purple-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Time Learning</p>
            <p className="text-xl font-bold text-gray-900 dark:text-white">
              {formatDuration(totalTimeSpent)}
            </p>
          </div>
        </Card>

        <Card className="flex items-center gap-4">
          <div className="p-3 bg-amber-100 dark:bg-amber-900/20 rounded-lg">
            <Trophy className="w-6 h-6 text-amber-600 dark:text-amber-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Accuracy</p>
            <p className="text-xl font-bold text-gray-900 dark:text-white">{accuracy}%</p>
          </div>
        </Card>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Account Info */}
        <Card>
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Account Information
          </h2>
          <div className="space-y-4">
            <div className="flex items-center gap-3">
              <Mail className="w-5 h-5 text-gray-400" />
              <div>
                <p className="text-sm text-gray-500 dark:text-gray-400">Email</p>
                <p className="text-gray-900 dark:text-white">{user.email}</p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <Calendar className="w-5 h-5 text-gray-400" />
              <div>
                <p className="text-sm text-gray-500 dark:text-gray-400">Joined</p>
                <p className="text-gray-900 dark:text-white">{formatDate(user.created_at)}</p>
              </div>
            </div>
            <div className="flex items-center gap-3">
              <CreditCard className="w-5 h-5 text-gray-400" />
              <div>
                <p className="text-sm text-gray-500 dark:text-gray-400">Subscription</p>
                <div className="flex items-center gap-2">
                  <span className="text-gray-900 dark:text-white capitalize">
                    {user.subscription_tier || 'Free'}
                  </span>
                  {user.subscription && (
                    <span className={`px-2 py-0.5 text-xs rounded-full ${
                      user.subscription.status === 'active'
                        ? 'bg-green-100 text-green-600 dark:bg-green-900/20 dark:text-green-400'
                        : 'bg-gray-100 text-gray-600 dark:bg-gray-700 dark:text-gray-400'
                    }`}>
                      {user.subscription.status}
                    </span>
                  )}
                </div>
              </div>
            </div>
          </div>
        </Card>

        {/* Learning Progress */}
        <Card>
          <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
            Learning Progress
          </h2>
          <div className="space-y-4">
            <div className="flex justify-between items-center">
              <span className="text-gray-600 dark:text-gray-400">Total Sessions</span>
              <span className="font-medium text-gray-900 dark:text-white">{user.sessions.length}</span>
            </div>
            <div className="flex justify-between items-center">
              <span className="text-gray-600 dark:text-gray-400">Topics In Progress</span>
              <span className="font-medium text-gray-900 dark:text-white">{inProgressTopics}</span>
            </div>
            <div className="flex justify-between items-center">
              <span className="text-gray-600 dark:text-gray-400">Topics Completed</span>
              <span className="font-medium text-gray-900 dark:text-white">{completedTopics}</span>
            </div>
            <div className="flex justify-between items-center">
              <span className="text-gray-600 dark:text-gray-400">Questions Answered</span>
              <span className="font-medium text-gray-900 dark:text-white">
                {correctQuestions} / {totalQuestions}
              </span>
            </div>
          </div>
        </Card>
      </div>

      {/* Topic Progress */}
      <Card>
        <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
          Topic Progress
        </h2>
        {user.progress.length > 0 ? (
          <div className="space-y-3">
            {user.progress.map((p, index) => (
              <div
                key={index}
                className="flex items-center justify-between p-3 bg-gray-50 dark:bg-gray-800/50 rounded-lg"
              >
                <div className="flex items-center gap-3">
                  <div
                    className="w-2 h-2 rounded-full"
                    style={{ backgroundColor: p.topic?.subject?.color || '#6B7280' }}
                  />
                  <div>
                    <p className="font-medium text-gray-900 dark:text-white">
                      {p.topic?.name || 'Unknown Topic'}
                    </p>
                    <p className="text-sm text-gray-500 dark:text-gray-400">
                      {p.topic?.subject?.name || 'Unknown Subject'}
                    </p>
                  </div>
                </div>
                <div className="flex items-center gap-3">
                  {p.assessment_score !== null && (
                    <span className="text-sm text-gray-600 dark:text-gray-400">
                      {p.assessment_score}%
                    </span>
                  )}
                  <span className={`px-2 py-0.5 text-xs font-medium rounded-full capitalize ${getStatusColor(p.status)}`}>
                    {p.status.replace('_', ' ')}
                  </span>
                </div>
              </div>
            ))}
          </div>
        ) : (
          <p className="text-center text-gray-500 dark:text-gray-400 py-8">
            No topic progress yet
          </p>
        )}
      </Card>

      {/* Session History */}
      <Card>
        <h2 className="text-lg font-semibold text-gray-900 dark:text-white mb-4">
          Recent Sessions
        </h2>
        {user.sessions.length > 0 ? (
          <div className="overflow-x-auto">
            <table className="w-full">
              <thead className="bg-gray-50 dark:bg-gray-800/50">
                <tr>
                  <th className="px-4 py-2 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase">
                    Topic
                  </th>
                  <th className="px-4 py-2 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase">
                    Date
                  </th>
                  <th className="px-4 py-2 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase">
                    Duration
                  </th>
                  <th className="px-4 py-2 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase">
                    Score
                  </th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-200 dark:divide-gray-700">
                {user.sessions.slice(0, 20).map((session) => (
                  <tr key={session.id}>
                    <td className="px-4 py-3">
                      <div>
                        <p className="font-medium text-gray-900 dark:text-white">
                          {session.topic?.name || 'Unknown'}
                        </p>
                        <p className="text-sm text-gray-500 dark:text-gray-400">
                          {session.topic?.subject?.name || ''}
                        </p>
                      </div>
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600 dark:text-gray-400">
                      {formatDate(session.started_at)}
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600 dark:text-gray-400">
                      {formatDuration(session.time_spent)}
                    </td>
                    <td className="px-4 py-3 text-sm text-gray-600 dark:text-gray-400">
                      {session.questions_attempted
                        ? `${session.questions_correct || 0}/${session.questions_attempted}`
                        : '-'}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        ) : (
          <p className="text-center text-gray-500 dark:text-gray-400 py-8">
            No sessions yet
          </p>
        )}
      </Card>
    </div>
  );
}
