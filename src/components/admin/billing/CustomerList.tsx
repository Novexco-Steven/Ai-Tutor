import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  ArrowLeft,
  Search,
  RefreshCw,
  ExternalLink,
  User,
  CreditCard,
  Calendar,
} from 'lucide-react';
import { stripeService, Customer, Subscription } from '@/services/stripe';

type CustomerWithSubscription = Customer & { subscription?: Subscription };

export default function CustomerList() {
  const [customers, setCustomers] = useState<CustomerWithSubscription[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');

  useEffect(() => {
    loadCustomers();
  }, []);

  const loadCustomers = async () => {
    try {
      setLoading(true);
      const data = await stripeService.getAllCustomers();
      setCustomers(data);
    } catch (error) {
      console.error('Error loading customers:', error);
    } finally {
      setLoading(false);
    }
  };

  const filteredCustomers = customers.filter(customer =>
    customer.name?.toLowerCase().includes(searchQuery.toLowerCase()) ||
    customer.email.toLowerCase().includes(searchQuery.toLowerCase()) ||
    customer.stripe_customer_id.toLowerCase().includes(searchQuery.toLowerCase())
  );

  const getPlanBadge = (planId?: string) => {
    const colors: Record<string, string> = {
      free: 'bg-slate-500/10 text-slate-300',
      pro: 'bg-blue-500/10 text-blue-400',
      team: 'bg-purple-500/10 text-purple-400',
    };
    return colors[planId || 'free'] || colors.free;
  };

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
          <h1 className="text-2xl font-bold text-white">Customers</h1>
        </div>
        <button
          onClick={loadCustomers}
          className="flex items-center gap-2 px-4 py-2 bg-slate-700 hover:bg-slate-600 text-white rounded-lg transition-colors"
        >
          <RefreshCw className={`w-4 h-4 ${loading ? 'animate-spin' : ''}`} />
          Refresh
        </button>
      </div>

      {/* Search */}
      <div className="bg-slate-800 rounded-xl p-4 border border-slate-700 mb-6">
        <div className="relative">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
          <input
            type="text"
            placeholder="Search by name, email, or customer ID..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="w-full pl-10 pr-4 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:border-blue-500"
          />
        </div>
      </div>

      {/* Customer Grid */}
      {loading ? (
        <div className="flex items-center justify-center h-64">
          <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-500" />
        </div>
      ) : filteredCustomers.length === 0 ? (
        <div className="bg-slate-800 rounded-xl p-12 border border-slate-700 text-center">
          <User className="w-12 h-12 text-slate-500 mx-auto mb-4" />
          <p className="text-slate-400">No customers found</p>
        </div>
      ) : (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {filteredCustomers.map((customer) => (
            <div
              key={customer.id}
              className="bg-slate-800 rounded-xl p-6 border border-slate-700 hover:border-slate-600 transition-colors"
            >
              <div className="flex items-start justify-between mb-4">
                <div className="flex items-center gap-3">
                  <div className="w-10 h-10 bg-slate-700 rounded-full flex items-center justify-center">
                    <User className="w-5 h-5 text-slate-400" />
                  </div>
                  <div>
                    <div className="font-medium text-white">
                      {customer.name || 'No Name'}
                    </div>
                    <div className="text-sm text-slate-400">{customer.email}</div>
                  </div>
                </div>
                <a
                  href={`https://dashboard.stripe.com/customers/${customer.stripe_customer_id}`}
                  target="_blank"
                  rel="noopener noreferrer"
                  className="p-2 text-slate-400 hover:text-white transition-colors"
                >
                  <ExternalLink className="w-4 h-4" />
                </a>
              </div>

              <div className="space-y-3">
                <div className="flex items-center gap-2 text-sm">
                  <CreditCard className="w-4 h-4 text-slate-500" />
                  <span className="text-slate-400">Plan:</span>
                  <span className={`px-2 py-0.5 rounded-full text-xs font-medium ${getPlanBadge(customer.subscription?.plan_id)}`}>
                    {(customer.subscription?.plan_id || 'FREE').toUpperCase()}
                  </span>
                </div>

                <div className="flex items-center gap-2 text-sm">
                  <Calendar className="w-4 h-4 text-slate-500" />
                  <span className="text-slate-400">Joined:</span>
                  <span className="text-slate-300">
                    {new Date(customer.created_at).toLocaleDateString()}
                  </span>
                </div>

                {customer.subscription?.status && (
                  <div className="flex items-center gap-2 text-sm">
                    <span className={`w-2 h-2 rounded-full ${
                      customer.subscription.status === 'active' ? 'bg-green-400' :
                      customer.subscription.status === 'past_due' ? 'bg-amber-400' :
                      'bg-slate-400'
                    }`} />
                    <span className="text-slate-400">Status:</span>
                    <span className="text-slate-300 capitalize">
                      {customer.subscription.status.replace('_', ' ')}
                    </span>
                  </div>
                )}
              </div>

              <div className="mt-4 pt-4 border-t border-slate-700">
                <div className="text-xs text-slate-500 font-mono truncate">
                  {customer.stripe_customer_id}
                </div>
              </div>
            </div>
          ))}
        </div>
      )}

      {/* Summary */}
      <div className="mt-4 text-sm text-slate-400">
        Showing {filteredCustomers.length} of {customers.length} customers
      </div>
    </div>
  );
}
