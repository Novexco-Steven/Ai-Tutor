import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  CreditCard,
  Users,
  TrendingUp,
  DollarSign,
  FileText,
  AlertCircle,
  CheckCircle,
  Clock,
  XCircle,
} from 'lucide-react';
import { stripeService } from '@/services/stripe';

interface BillingStats {
  total: number;
  active: number;
  trialing: number;
  canceled: number;
  pastDue: number;
  byPlan: {
    free: number;
    pro: number;
    team: number;
  };
}

export default function BillingDashboard() {
  const [stats, setStats] = useState<BillingStats | null>(null);
  const [mrr, setMrr] = useState<number>(0);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    loadStats();
  }, []);

  const loadStats = async () => {
    try {
      setLoading(true);
      const [statsData, mrrData] = await Promise.all([
        stripeService.getSubscriptionStats(),
        stripeService.getMRR(),
      ]);
      setStats(statsData);
      setMrr(mrrData);
    } catch (err) {
      console.error('Error loading billing stats:', err);
      setError('Failed to load billing statistics');
    } finally {
      setLoading(false);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center h-64">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-500" />
      </div>
    );
  }

  if (error) {
    return (
      <div className="bg-red-500/10 border border-red-500/20 rounded-lg p-4 text-red-400">
        <AlertCircle className="w-5 h-5 inline-block mr-2" />
        {error}
      </div>
    );
  }

  return (
    <div className="max-w-7xl mx-auto">
      <div className="flex items-center justify-between mb-6">
        <h1 className="text-2xl font-bold text-white">Billing & Subscriptions</h1>
        <div className="text-sm text-slate-400">
          Last updated: {new Date().toLocaleTimeString()}
        </div>
      </div>

      {/* Revenue Stats */}
      <div className="grid gap-4 md:grid-cols-4 mb-8">
        <div className="bg-gradient-to-br from-green-500/20 to-green-600/10 rounded-xl p-6 border border-green-500/20">
          <div className="flex items-center gap-3 mb-2">
            <div className="p-2 bg-green-500/20 rounded-lg">
              <DollarSign className="w-5 h-5 text-green-400" />
            </div>
            <span className="text-sm text-slate-400">Monthly Revenue</span>
          </div>
          <div className="text-3xl font-bold text-white">
            ${mrr.toFixed(2)}
          </div>
          <div className="text-xs text-green-400 mt-1">MRR</div>
        </div>

        <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
          <div className="flex items-center gap-3 mb-2">
            <div className="p-2 bg-blue-500/20 rounded-lg">
              <Users className="w-5 h-5 text-blue-400" />
            </div>
            <span className="text-sm text-slate-400">Total Subscribers</span>
          </div>
          <div className="text-3xl font-bold text-white">
            {stats?.total || 0}
          </div>
        </div>

        <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
          <div className="flex items-center gap-3 mb-2">
            <div className="p-2 bg-emerald-500/20 rounded-lg">
              <CheckCircle className="w-5 h-5 text-emerald-400" />
            </div>
            <span className="text-sm text-slate-400">Active</span>
          </div>
          <div className="text-3xl font-bold text-white">
            {stats?.active || 0}
          </div>
        </div>

        <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
          <div className="flex items-center gap-3 mb-2">
            <div className="p-2 bg-amber-500/20 rounded-lg">
              <AlertCircle className="w-5 h-5 text-amber-400" />
            </div>
            <span className="text-sm text-slate-400">Past Due</span>
          </div>
          <div className="text-3xl font-bold text-white">
            {stats?.pastDue || 0}
          </div>
        </div>
      </div>

      {/* Subscription Status Breakdown */}
      <div className="grid gap-6 lg:grid-cols-2 mb-8">
        <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
          <h2 className="text-lg font-semibold text-white mb-4">Subscription Status</h2>
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <CheckCircle className="w-4 h-4 text-green-400" />
                <span className="text-slate-300">Active</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-white font-medium">{stats?.active || 0}</span>
                <div className="w-24 h-2 bg-slate-700 rounded-full overflow-hidden">
                  <div
                    className="h-full bg-green-500 rounded-full"
                    style={{ width: `${stats?.total ? (stats.active / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </div>
            </div>

            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <Clock className="w-4 h-4 text-blue-400" />
                <span className="text-slate-300">Trialing</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-white font-medium">{stats?.trialing || 0}</span>
                <div className="w-24 h-2 bg-slate-700 rounded-full overflow-hidden">
                  <div
                    className="h-full bg-blue-500 rounded-full"
                    style={{ width: `${stats?.total ? (stats.trialing / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </div>
            </div>

            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <XCircle className="w-4 h-4 text-slate-400" />
                <span className="text-slate-300">Canceled</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-white font-medium">{stats?.canceled || 0}</span>
                <div className="w-24 h-2 bg-slate-700 rounded-full overflow-hidden">
                  <div
                    className="h-full bg-slate-500 rounded-full"
                    style={{ width: `${stats?.total ? (stats.canceled / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </div>
            </div>

            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <AlertCircle className="w-4 h-4 text-amber-400" />
                <span className="text-slate-300">Past Due</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-white font-medium">{stats?.pastDue || 0}</span>
                <div className="w-24 h-2 bg-slate-700 rounded-full overflow-hidden">
                  <div
                    className="h-full bg-amber-500 rounded-full"
                    style={{ width: `${stats?.total ? (stats.pastDue / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </div>
            </div>
          </div>
        </div>

        <div className="bg-slate-800 rounded-xl p-6 border border-slate-700">
          <h2 className="text-lg font-semibold text-white mb-4">By Plan</h2>
          <div className="space-y-4">
            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <span className="w-3 h-3 rounded-full bg-slate-500" />
                <span className="text-slate-300">Free</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-white font-medium">{stats?.byPlan.free || 0}</span>
                <div className="w-24 h-2 bg-slate-700 rounded-full overflow-hidden">
                  <div
                    className="h-full bg-slate-500 rounded-full"
                    style={{ width: `${stats?.total ? (stats.byPlan.free / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </div>
            </div>

            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <span className="w-3 h-3 rounded-full bg-blue-500" />
                <span className="text-slate-300">Pro</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-white font-medium">{stats?.byPlan.pro || 0}</span>
                <div className="w-24 h-2 bg-slate-700 rounded-full overflow-hidden">
                  <div
                    className="h-full bg-blue-500 rounded-full"
                    style={{ width: `${stats?.total ? (stats.byPlan.pro / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </div>
            </div>

            <div className="flex items-center justify-between">
              <div className="flex items-center gap-2">
                <span className="w-3 h-3 rounded-full bg-purple-500" />
                <span className="text-slate-300">Team</span>
              </div>
              <div className="flex items-center gap-2">
                <span className="text-white font-medium">{stats?.byPlan.team || 0}</span>
                <div className="w-24 h-2 bg-slate-700 rounded-full overflow-hidden">
                  <div
                    className="h-full bg-purple-500 rounded-full"
                    style={{ width: `${stats?.total ? (stats.byPlan.team / stats.total) * 100 : 0}%` }}
                  />
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>

      {/* Quick Actions */}
      <div className="grid gap-4 md:grid-cols-3">
        <Link
          to="/admin/billing/subscriptions"
          className="bg-slate-800 rounded-xl p-6 border border-slate-700 hover:border-blue-500/50 transition-colors group"
        >
          <div className="w-12 h-12 bg-blue-500/10 rounded-lg flex items-center justify-center mb-4 group-hover:bg-blue-500/20 transition-colors">
            <CreditCard className="w-6 h-6 text-blue-400" />
          </div>
          <h2 className="text-lg font-semibold text-white mb-2">Subscriptions</h2>
          <p className="text-slate-400 text-sm">
            View and manage all user subscriptions. Cancel, pause, or modify plans.
          </p>
        </Link>

        <Link
          to="/admin/billing/customers"
          className="bg-slate-800 rounded-xl p-6 border border-slate-700 hover:border-green-500/50 transition-colors group"
        >
          <div className="w-12 h-12 bg-green-500/10 rounded-lg flex items-center justify-center mb-4 group-hover:bg-green-500/20 transition-colors">
            <Users className="w-6 h-6 text-green-400" />
          </div>
          <h2 className="text-lg font-semibold text-white mb-2">Customers</h2>
          <p className="text-slate-400 text-sm">
            View customer details, payment methods, and billing history.
          </p>
        </Link>

        <Link
          to="/admin/billing/invoices"
          className="bg-slate-800 rounded-xl p-6 border border-slate-700 hover:border-purple-500/50 transition-colors group"
        >
          <div className="w-12 h-12 bg-purple-500/10 rounded-lg flex items-center justify-center mb-4 group-hover:bg-purple-500/20 transition-colors">
            <FileText className="w-6 h-6 text-purple-400" />
          </div>
          <h2 className="text-lg font-semibold text-white mb-2">Invoices</h2>
          <p className="text-slate-400 text-sm">
            View all invoices, payment status, and download receipts.
          </p>
        </Link>
      </div>

      {/* Stripe Dashboard Link */}
      <div className="mt-8 p-4 bg-slate-800/50 rounded-lg border border-slate-700 flex items-center justify-between">
        <div className="flex items-center gap-3">
          <TrendingUp className="w-5 h-5 text-slate-400" />
          <span className="text-slate-300">
            For detailed analytics and advanced management, visit the Stripe Dashboard
          </span>
        </div>
        <a
          href="https://dashboard.stripe.com"
          target="_blank"
          rel="noopener noreferrer"
          className="px-4 py-2 bg-[#635BFF] hover:bg-[#5851DB] text-white text-sm font-medium rounded-lg transition-colors"
        >
          Open Stripe
        </a>
      </div>
    </div>
  );
}
