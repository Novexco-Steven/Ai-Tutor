import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  ArrowLeft,
  Search,
  Filter,
  MoreVertical,
  CheckCircle,
  XCircle,
  Clock,
  AlertCircle,
  ExternalLink,
  RefreshCw,
} from 'lucide-react';
import { stripeService, Subscription } from '@/services/stripe';

type SubscriptionWithProfile = Subscription & { profile?: { name: string; email: string } };

const statusColors: Record<string, { bg: string; text: string; icon: React.ReactNode }> = {
  active: { bg: 'bg-green-500/10', text: 'text-green-400', icon: <CheckCircle className="w-4 h-4" /> },
  trialing: { bg: 'bg-blue-500/10', text: 'text-blue-400', icon: <Clock className="w-4 h-4" /> },
  canceled: { bg: 'bg-slate-500/10', text: 'text-slate-400', icon: <XCircle className="w-4 h-4" /> },
  past_due: { bg: 'bg-amber-500/10', text: 'text-amber-400', icon: <AlertCircle className="w-4 h-4" /> },
  incomplete: { bg: 'bg-red-500/10', text: 'text-red-400', icon: <AlertCircle className="w-4 h-4" /> },
};

const planColors: Record<string, string> = {
  free: 'bg-slate-500/10 text-slate-300',
  pro: 'bg-blue-500/10 text-blue-400',
  team: 'bg-purple-500/10 text-purple-400',
};

export default function SubscriptionList() {
  const [subscriptions, setSubscriptions] = useState<SubscriptionWithProfile[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [statusFilter, setStatusFilter] = useState<string>('all');
  const [planFilter, setPlanFilter] = useState<string>('all');
  const [actionMenuId, setActionMenuId] = useState<string | null>(null);

  useEffect(() => {
    loadSubscriptions();
  }, []);

  const loadSubscriptions = async () => {
    try {
      setLoading(true);
      const data = await stripeService.getAllSubscriptions();
      setSubscriptions(data);
    } catch (error) {
      console.error('Error loading subscriptions:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleCancelSubscription = async (subscriptionId: string) => {
    if (!confirm('Are you sure you want to cancel this subscription?')) return;

    try {
      await stripeService.cancelSubscription(subscriptionId, true);
      await loadSubscriptions();
    } catch (error) {
      console.error('Error canceling subscription:', error);
      alert('Failed to cancel subscription');
    }
    setActionMenuId(null);
  };

  const filteredSubscriptions = subscriptions.filter(sub => {
    const matchesSearch =
      sub.profile?.name?.toLowerCase().includes(searchQuery.toLowerCase()) ||
      sub.profile?.email?.toLowerCase().includes(searchQuery.toLowerCase()) ||
      sub.stripe_subscription_id.toLowerCase().includes(searchQuery.toLowerCase());

    const matchesStatus = statusFilter === 'all' || sub.status === statusFilter;
    const matchesPlan = planFilter === 'all' || sub.plan_id === planFilter;

    return matchesSearch && matchesStatus && matchesPlan;
  });

  return (
    <div className="max-w-7xl mx-auto">
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <div className="flex items-center gap-4">
          <Link
            to="/admin/billing"
            className="p-2 text-slate-400 hover:text-white transition-colors"
          >
            <ArrowLeft className="w-5 h-5" />
          </Link>
          <h1 className="text-2xl font-bold text-white">Subscriptions</h1>
        </div>
        <button
          onClick={loadSubscriptions}
          className="flex items-center gap-2 px-4 py-2 bg-slate-700 hover:bg-slate-600 text-white rounded-lg transition-colors"
        >
          <RefreshCw className={`w-4 h-4 ${loading ? 'animate-spin' : ''}`} />
          Refresh
        </button>
      </div>

      {/* Filters */}
      <div className="bg-slate-800 rounded-xl p-4 border border-slate-700 mb-6">
        <div className="flex flex-col md:flex-row gap-4">
          {/* Search */}
          <div className="flex-1 relative">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
            <input
              type="text"
              placeholder="Search by name, email, or subscription ID..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-10 pr-4 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:border-blue-500"
            />
          </div>

          {/* Status Filter */}
          <div className="flex items-center gap-2">
            <Filter className="w-4 h-4 text-slate-400" />
            <select
              value={statusFilter}
              onChange={(e) => setStatusFilter(e.target.value)}
              className="px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:border-blue-500"
            >
              <option value="all">All Status</option>
              <option value="active">Active</option>
              <option value="trialing">Trialing</option>
              <option value="canceled">Canceled</option>
              <option value="past_due">Past Due</option>
            </select>
          </div>

          {/* Plan Filter */}
          <select
            value={planFilter}
            onChange={(e) => setPlanFilter(e.target.value)}
            className="px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:border-blue-500"
          >
            <option value="all">All Plans</option>
            <option value="free">Free</option>
            <option value="pro">Pro</option>
            <option value="team">Team</option>
          </select>
        </div>
      </div>

      {/* Table */}
      <div className="bg-slate-800 rounded-xl border border-slate-700 overflow-hidden">
        {loading ? (
          <div className="flex items-center justify-center h-64">
            <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-500" />
          </div>
        ) : filteredSubscriptions.length === 0 ? (
          <div className="flex flex-col items-center justify-center h-64 text-slate-400">
            <p>No subscriptions found</p>
          </div>
        ) : (
          <div className="overflow-x-auto">
            <table className="w-full">
              <thead>
                <tr className="border-b border-slate-700">
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Customer</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Plan</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Status</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Period</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Actions</th>
                </tr>
              </thead>
              <tbody>
                {filteredSubscriptions.map((sub) => {
                  const status = statusColors[sub.status] || statusColors.active;
                  const plan = planColors[sub.plan_id] || planColors.free;

                  return (
                    <tr key={sub.id} className="border-b border-slate-700/50 hover:bg-slate-700/30">
                      <td className="px-6 py-4">
                        <div>
                          <div className="font-medium text-white">
                            {sub.profile?.name || 'Unknown'}
                          </div>
                          <div className="text-sm text-slate-400">
                            {sub.profile?.email || sub.user_id}
                          </div>
                        </div>
                      </td>
                      <td className="px-6 py-4">
                        <span className={`px-2 py-1 rounded-full text-xs font-medium ${plan}`}>
                          {sub.plan_id.toUpperCase()}
                        </span>
                      </td>
                      <td className="px-6 py-4">
                        <span className={`inline-flex items-center gap-1 px-2 py-1 rounded-full text-xs font-medium ${status.bg} ${status.text}`}>
                          {status.icon}
                          {sub.status.replace('_', ' ')}
                        </span>
                        {sub.cancel_at_period_end && (
                          <span className="ml-2 text-xs text-amber-400">
                            (cancels at end)
                          </span>
                        )}
                      </td>
                      <td className="px-6 py-4 text-sm text-slate-300">
                        {sub.current_period_end ? (
                          <>
                            <div>Ends: {new Date(sub.current_period_end).toLocaleDateString()}</div>
                            <div className="text-slate-500">
                              Started: {new Date(sub.current_period_start).toLocaleDateString()}
                            </div>
                          </>
                        ) : (
                          '-'
                        )}
                      </td>
                      <td className="px-6 py-4">
                        <div className="relative">
                          <button
                            onClick={() => setActionMenuId(actionMenuId === sub.id ? null : sub.id)}
                            className="p-2 text-slate-400 hover:text-white rounded-lg hover:bg-slate-600 transition-colors"
                          >
                            <MoreVertical className="w-4 h-4" />
                          </button>

                          {actionMenuId === sub.id && (
                            <div className="absolute right-0 mt-2 w-48 bg-slate-700 rounded-lg shadow-lg border border-slate-600 py-1 z-10">
                              <a
                                href={`https://dashboard.stripe.com/subscriptions/${sub.stripe_subscription_id}`}
                                target="_blank"
                                rel="noopener noreferrer"
                                className="flex items-center gap-2 px-4 py-2 text-sm text-slate-300 hover:bg-slate-600"
                              >
                                <ExternalLink className="w-4 h-4" />
                                View in Stripe
                              </a>
                              {sub.status === 'active' && !sub.cancel_at_period_end && (
                                <button
                                  onClick={() => handleCancelSubscription(sub.stripe_subscription_id)}
                                  className="flex items-center gap-2 w-full px-4 py-2 text-sm text-red-400 hover:bg-slate-600"
                                >
                                  <XCircle className="w-4 h-4" />
                                  Cancel Subscription
                                </button>
                              )}
                            </div>
                          )}
                        </div>
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>
          </div>
        )}
      </div>

      {/* Summary */}
      <div className="mt-4 text-sm text-slate-400">
        Showing {filteredSubscriptions.length} of {subscriptions.length} subscriptions
      </div>
    </div>
  );
}
