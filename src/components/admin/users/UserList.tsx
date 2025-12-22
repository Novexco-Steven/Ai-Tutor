import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import {
  Search,
  Filter,
  RefreshCw,
  Shield,
  Eye,
  Crown,
  Users,
  Clock,
  BookOpen,
  MoreVertical,
  ShieldCheck,
  ShieldOff,
  CreditCard
} from 'lucide-react';
import { adminStats, type UserWithStats } from '@/services/adminStats';
import { useUser } from '@/contexts/UserContext';
import Card from '@/components/shared/Card';
import Button from '@/components/shared/Button';
import Input from '@/components/shared/Input';

export default function UserList() {
  const navigate = useNavigate();
  const { profile } = useUser();
  const [users, setUsers] = useState<UserWithStats[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [filterGrade, setFilterGrade] = useState<string>('all');
  const [filterRole, setFilterRole] = useState<string>('all');
  const [filterSubscription, setFilterSubscription] = useState<string>('all');
  const [actionMenuOpen, setActionMenuOpen] = useState<string | null>(null);
  const [updatingUser, setUpdatingUser] = useState<string | null>(null);

  useEffect(() => {
    loadUsers();
  }, []);

  const loadUsers = async () => {
    setLoading(true);
    try {
      const data = await adminStats.getAllUsers();
      setUsers(data);
    } catch (error) {
      console.error('Error loading users:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleToggleAdmin = async (user: UserWithStats) => {
    if (!profile?.id) return;
    setUpdatingUser(user.id);
    try {
      if (user.isAdmin) {
        await adminStats.removeUserAdmin(user.id);
      } else {
        await adminStats.makeUserAdmin(user.id, 'admin', profile.id);
      }
      await loadUsers();
    } catch (error) {
      console.error('Error toggling admin:', error);
      alert('Failed to update admin status');
    } finally {
      setUpdatingUser(null);
      setActionMenuOpen(null);
    }
  };

  const handleChangePlan = async (userId: string, tier: 'free' | 'pro' | 'team') => {
    setUpdatingUser(userId);
    try {
      await adminStats.updateUserSubscription(userId, tier);
      await loadUsers();
    } catch (error) {
      console.error('Error changing plan:', error);
      alert('Failed to update subscription');
    } finally {
      setUpdatingUser(null);
      setActionMenuOpen(null);
    }
  };

  const filteredUsers = users.filter(user => {
    // Search filter
    const matchesSearch =
      user.name.toLowerCase().includes(searchTerm.toLowerCase()) ||
      user.email.toLowerCase().includes(searchTerm.toLowerCase());

    // Grade filter
    const matchesGrade = filterGrade === 'all' || user.grade_level === parseInt(filterGrade);

    // Role filter
    const matchesRole =
      filterRole === 'all' ||
      (filterRole === 'admin' && user.isAdmin) ||
      (filterRole === 'user' && !user.isAdmin);

    // Subscription filter
    const matchesSubscription =
      filterSubscription === 'all' || user.subscription_tier === filterSubscription;

    return matchesSearch && matchesGrade && matchesRole && matchesSubscription;
  });

  const formatDate = (dateStr: string | null) => {
    if (!dateStr) return 'Never';
    return new Date(dateStr).toLocaleDateString('en-US', {
      month: 'short',
      day: 'numeric',
      year: 'numeric'
    });
  };

  const formatRelativeTime = (dateStr: string | null) => {
    if (!dateStr) return 'Never';
    const date = new Date(dateStr);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMs / 3600000);
    const diffDays = Math.floor(diffMs / 86400000);

    if (diffMins < 60) return `${diffMins}m ago`;
    if (diffHours < 24) return `${diffHours}h ago`;
    if (diffDays < 7) return `${diffDays}d ago`;
    return formatDate(dateStr);
  };

  const getSubscriptionBadge = (tier: string) => {
    const badges: Record<string, { bg: string; text: string; label: string }> = {
      free: { bg: 'bg-gray-100 dark:bg-gray-700', text: 'text-gray-600 dark:text-gray-300', label: 'Free' },
      pro: { bg: 'bg-blue-100 dark:bg-blue-900/30', text: 'text-blue-600 dark:text-blue-400', label: 'Pro' },
      team: { bg: 'bg-purple-100 dark:bg-purple-900/30', text: 'text-purple-600 dark:text-purple-400', label: 'Team' }
    };
    const badge = badges[tier] || badges.free;
    return (
      <span className={`px-2 py-0.5 text-xs font-medium rounded-full ${badge.bg} ${badge.text}`}>
        {badge.label}
      </span>
    );
  };

  return (
    <div className="space-y-6">
      {/* Header */}
      <div className="flex items-center justify-between">
        <div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white">Users</h1>
          <p className="text-gray-600 dark:text-gray-400">
            Manage users and their permissions
          </p>
        </div>
        <Button onClick={loadUsers} variant="secondary" disabled={loading}>
          <RefreshCw className={`w-4 h-4 mr-2 ${loading ? 'animate-spin' : ''}`} />
          Refresh
        </Button>
      </div>

      {/* Stats Cards */}
      <div className="grid grid-cols-1 sm:grid-cols-4 gap-4">
        <Card className="flex items-center gap-4">
          <div className="p-3 bg-blue-100 dark:bg-blue-900/20 rounded-lg">
            <Users className="w-6 h-6 text-blue-600 dark:text-blue-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Total Users</p>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">{users.length}</p>
          </div>
        </Card>

        <Card className="flex items-center gap-4">
          <div className="p-3 bg-amber-100 dark:bg-amber-900/20 rounded-lg">
            <Shield className="w-6 h-6 text-amber-600 dark:text-amber-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Admins</p>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">
              {users.filter(u => u.isAdmin).length}
            </p>
          </div>
        </Card>

        <Card className="flex items-center gap-4">
          <div className="p-3 bg-purple-100 dark:bg-purple-900/20 rounded-lg">
            <Crown className="w-6 h-6 text-purple-600 dark:text-purple-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Pro Users</p>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">
              {users.filter(u => u.subscription_tier === 'pro').length}
            </p>
          </div>
        </Card>

        <Card className="flex items-center gap-4">
          <div className="p-3 bg-green-100 dark:bg-green-900/20 rounded-lg">
            <BookOpen className="w-6 h-6 text-green-600 dark:text-green-400" />
          </div>
          <div>
            <p className="text-sm text-gray-600 dark:text-gray-400">Total Completions</p>
            <p className="text-2xl font-bold text-gray-900 dark:text-white">
              {users.reduce((sum, u) => sum + u.topicsCompleted, 0)}
            </p>
          </div>
        </Card>
      </div>

      {/* Filters */}
      <Card>
        <div className="flex flex-wrap gap-4">
          <div className="flex-1 min-w-[200px]">
            <div className="relative">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" />
              <Input
                placeholder="Search by name or email..."
                value={searchTerm}
                onChange={(e) => setSearchTerm(e.target.value)}
                className="pl-10"
              />
            </div>
          </div>

          <div className="flex items-center gap-2">
            <Filter className="w-4 h-4 text-gray-400" />

            <select
              value={filterGrade}
              onChange={(e) => setFilterGrade(e.target.value)}
              className="px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white text-sm"
            >
              <option value="all">All Grades</option>
              {Array.from({ length: 13 }, (_, i) => (
                <option key={i} value={i}>Grade {i === 0 ? 'K' : i}</option>
              ))}
            </select>

            <select
              value={filterRole}
              onChange={(e) => setFilterRole(e.target.value)}
              className="px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white text-sm"
            >
              <option value="all">All Roles</option>
              <option value="admin">Admins</option>
              <option value="user">Users</option>
            </select>

            <select
              value={filterSubscription}
              onChange={(e) => setFilterSubscription(e.target.value)}
              className="px-3 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white text-sm"
            >
              <option value="all">All Plans</option>
              <option value="free">Free</option>
              <option value="pro">Pro</option>
              <option value="team">Team</option>
            </select>
          </div>
        </div>
      </Card>

      {/* Users Table */}
      <Card className="overflow-hidden">
        {loading ? (
          <div className="flex items-center justify-center py-12">
            <RefreshCw className="w-6 h-6 animate-spin text-primary-600" />
          </div>
        ) : (
          <div className="overflow-x-auto">
            <table className="w-full">
              <thead className="bg-gray-50 dark:bg-gray-800/50">
                <tr>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    User
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    Grade
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    Plan
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    Sessions
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    Completed
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    <div className="flex items-center gap-1">
                      <Clock className="w-3 h-3" />
                      Last Active
                    </div>
                  </th>
                  <th className="px-4 py-3 text-left text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    Joined
                  </th>
                  <th className="px-4 py-3 text-right text-xs font-medium text-gray-500 dark:text-gray-400 uppercase tracking-wider">
                    Actions
                  </th>
                </tr>
              </thead>
              <tbody className="divide-y divide-gray-200 dark:divide-gray-700">
                {filteredUsers.map((user) => (
                  <tr
                    key={user.id}
                    className="hover:bg-gray-50 dark:hover:bg-gray-800/50 transition-colors"
                  >
                    <td className="px-4 py-4">
                      <div className="flex items-center gap-3">
                        <div className="w-10 h-10 rounded-full bg-primary-100 dark:bg-primary-900/20 flex items-center justify-center">
                          <span className="text-primary-600 dark:text-primary-400 font-medium">
                            {user.name.charAt(0).toUpperCase()}
                          </span>
                        </div>
                        <div>
                          <div className="flex items-center gap-2">
                            <span className="font-medium text-gray-900 dark:text-white">
                              {user.name}
                            </span>
                            {user.isAdmin && (
                              <Shield className="w-4 h-4 text-amber-500" />
                            )}
                          </div>
                          <span className="text-sm text-gray-500 dark:text-gray-400">
                            {user.email}
                          </span>
                        </div>
                      </div>
                    </td>
                    <td className="px-4 py-4">
                      <span className="text-gray-900 dark:text-white">
                        {user.grade_level === 0 ? 'K' : user.grade_level || '-'}
                      </span>
                    </td>
                    <td className="px-4 py-4">
                      {getSubscriptionBadge(user.subscription_tier)}
                    </td>
                    <td className="px-4 py-4 text-gray-900 dark:text-white">
                      {user.sessionsCount}
                    </td>
                    <td className="px-4 py-4 text-gray-900 dark:text-white">
                      {user.topicsCompleted}
                    </td>
                    <td className="px-4 py-4 text-gray-500 dark:text-gray-400 text-sm">
                      {formatRelativeTime(user.lastActive)}
                    </td>
                    <td className="px-4 py-4 text-gray-500 dark:text-gray-400 text-sm">
                      {formatDate(user.created_at)}
                    </td>
                    <td className="px-4 py-4 text-right">
                      <div className="relative inline-block">
                        <button
                          onClick={() => setActionMenuOpen(actionMenuOpen === user.id ? null : user.id)}
                          className="p-2 text-gray-400 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-lg transition-colors"
                          disabled={updatingUser === user.id}
                        >
                          {updatingUser === user.id ? (
                            <RefreshCw className="w-4 h-4 animate-spin" />
                          ) : (
                            <MoreVertical className="w-4 h-4" />
                          )}
                        </button>

                        {actionMenuOpen === user.id && (
                          <>
                            <div
                              className="fixed inset-0 z-10"
                              onClick={() => setActionMenuOpen(null)}
                            />
                            <div className="absolute right-0 mt-1 w-48 bg-white dark:bg-gray-700 rounded-lg shadow-lg z-20 py-1 border border-gray-200 dark:border-gray-600">
                              <button
                                onClick={() => {
                                  navigate(`/admin/users/${user.id}`);
                                  setActionMenuOpen(null);
                                }}
                                className="w-full flex items-center gap-2 px-4 py-2 text-sm text-gray-700 dark:text-gray-200 hover:bg-gray-100 dark:hover:bg-gray-600"
                              >
                                <Eye className="w-4 h-4" />
                                View Details
                              </button>

                              <div className="border-t border-gray-200 dark:border-gray-600 my-1" />

                              <button
                                onClick={() => handleToggleAdmin(user)}
                                className="w-full flex items-center gap-2 px-4 py-2 text-sm text-gray-700 dark:text-gray-200 hover:bg-gray-100 dark:hover:bg-gray-600"
                              >
                                {user.isAdmin ? (
                                  <>
                                    <ShieldOff className="w-4 h-4 text-red-500" />
                                    Remove Admin
                                  </>
                                ) : (
                                  <>
                                    <ShieldCheck className="w-4 h-4 text-amber-500" />
                                    Make Admin
                                  </>
                                )}
                              </button>

                              <div className="border-t border-gray-200 dark:border-gray-600 my-1" />

                              <div className="px-4 py-1 text-xs font-medium text-gray-500 dark:text-gray-400 uppercase">
                                Change Plan
                              </div>

                              {(['free', 'pro', 'team'] as const).map((tier) => (
                                <button
                                  key={tier}
                                  onClick={() => handleChangePlan(user.id, tier)}
                                  className={`w-full flex items-center gap-2 px-4 py-2 text-sm hover:bg-gray-100 dark:hover:bg-gray-600 ${
                                    user.subscription_tier === tier
                                      ? 'text-primary-600 dark:text-primary-400 font-medium'
                                      : 'text-gray-700 dark:text-gray-200'
                                  }`}
                                >
                                  <CreditCard className="w-4 h-4" />
                                  {tier.charAt(0).toUpperCase() + tier.slice(1)}
                                  {user.subscription_tier === tier && (
                                    <span className="ml-auto text-xs">(current)</span>
                                  )}
                                </button>
                              ))}
                            </div>
                          </>
                        )}
                      </div>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>

            {filteredUsers.length === 0 && (
              <div className="text-center py-12">
                <Users className="w-12 h-12 text-gray-300 dark:text-gray-600 mx-auto mb-4" />
                <p className="text-gray-500 dark:text-gray-400">
                  No users found matching your filters
                </p>
              </div>
            )}
          </div>
        )}
      </Card>

      {/* Results count */}
      <p className="text-sm text-gray-500 dark:text-gray-400">
        Showing {filteredUsers.length} of {users.length} users
      </p>
    </div>
  );
}
