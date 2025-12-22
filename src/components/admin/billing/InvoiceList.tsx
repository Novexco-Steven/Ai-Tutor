import { useState, useEffect } from 'react';
import { Link } from 'react-router-dom';
import {
  ArrowLeft,
  Search,
  RefreshCw,
  ExternalLink,
  Download,
  FileText,
  CheckCircle,
  Clock,
  XCircle,
  Filter,
} from 'lucide-react';
import { stripeService, Invoice } from '@/services/stripe';

const statusConfig: Record<string, { bg: string; text: string; icon: React.ReactNode }> = {
  paid: { bg: 'bg-green-500/10', text: 'text-green-400', icon: <CheckCircle className="w-4 h-4" /> },
  open: { bg: 'bg-blue-500/10', text: 'text-blue-400', icon: <Clock className="w-4 h-4" /> },
  draft: { bg: 'bg-slate-500/10', text: 'text-slate-400', icon: <FileText className="w-4 h-4" /> },
  void: { bg: 'bg-red-500/10', text: 'text-red-400', icon: <XCircle className="w-4 h-4" /> },
  uncollectible: { bg: 'bg-amber-500/10', text: 'text-amber-400', icon: <XCircle className="w-4 h-4" /> },
};

export default function InvoiceList() {
  const [invoices, setInvoices] = useState<Invoice[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState('');
  const [statusFilter, setStatusFilter] = useState<string>('all');

  useEffect(() => {
    loadInvoices();
  }, []);

  const loadInvoices = async () => {
    try {
      setLoading(true);
      const data = await stripeService.getAllInvoices();
      setInvoices(data);
    } catch (error) {
      console.error('Error loading invoices:', error);
    } finally {
      setLoading(false);
    }
  };

  const filteredInvoices = invoices.filter(invoice => {
    const matchesSearch =
      invoice.stripe_invoice_id.toLowerCase().includes(searchQuery.toLowerCase());
    const matchesStatus = statusFilter === 'all' || invoice.status === statusFilter;
    return matchesSearch && matchesStatus;
  });

  const formatCurrency = (amount: number, currency: string) => {
    return new Intl.NumberFormat('en-US', {
      style: 'currency',
      currency: currency.toUpperCase(),
    }).format(amount / 100); // Convert cents to dollars
  };

  const totalPaid = invoices
    .filter(inv => inv.status === 'paid')
    .reduce((sum, inv) => sum + inv.amount, 0);

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
          <h1 className="text-2xl font-bold text-white">Invoices</h1>
        </div>
        <button
          onClick={loadInvoices}
          className="flex items-center gap-2 px-4 py-2 bg-slate-700 hover:bg-slate-600 text-white rounded-lg transition-colors"
        >
          <RefreshCw className={`w-4 h-4 ${loading ? 'animate-spin' : ''}`} />
          Refresh
        </button>
      </div>

      {/* Stats */}
      <div className="grid gap-4 md:grid-cols-4 mb-6">
        <div className="bg-slate-800 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-white">{invoices.length}</div>
          <div className="text-sm text-slate-400">Total Invoices</div>
        </div>
        <div className="bg-slate-800 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-green-400">
            {formatCurrency(totalPaid, 'usd')}
          </div>
          <div className="text-sm text-slate-400">Total Collected</div>
        </div>
        <div className="bg-slate-800 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-white">
            {invoices.filter(i => i.status === 'paid').length}
          </div>
          <div className="text-sm text-slate-400">Paid</div>
        </div>
        <div className="bg-slate-800 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-amber-400">
            {invoices.filter(i => i.status === 'open').length}
          </div>
          <div className="text-sm text-slate-400">Pending</div>
        </div>
      </div>

      {/* Filters */}
      <div className="bg-slate-800 rounded-xl p-4 border border-slate-700 mb-6">
        <div className="flex flex-col md:flex-row gap-4">
          <div className="flex-1 relative">
            <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-slate-400" />
            <input
              type="text"
              placeholder="Search by invoice ID..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-10 pr-4 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white placeholder-slate-400 focus:outline-none focus:border-blue-500"
            />
          </div>
          <div className="flex items-center gap-2">
            <Filter className="w-4 h-4 text-slate-400" />
            <select
              value={statusFilter}
              onChange={(e) => setStatusFilter(e.target.value)}
              className="px-3 py-2 bg-slate-700 border border-slate-600 rounded-lg text-white focus:outline-none focus:border-blue-500"
            >
              <option value="all">All Status</option>
              <option value="paid">Paid</option>
              <option value="open">Open</option>
              <option value="draft">Draft</option>
              <option value="void">Void</option>
              <option value="uncollectible">Uncollectible</option>
            </select>
          </div>
        </div>
      </div>

      {/* Table */}
      <div className="bg-slate-800 rounded-xl border border-slate-700 overflow-hidden">
        {loading ? (
          <div className="flex items-center justify-center h-64">
            <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-blue-500" />
          </div>
        ) : filteredInvoices.length === 0 ? (
          <div className="flex flex-col items-center justify-center h-64 text-slate-400">
            <FileText className="w-12 h-12 mb-4 text-slate-500" />
            <p>No invoices found</p>
          </div>
        ) : (
          <div className="overflow-x-auto">
            <table className="w-full">
              <thead>
                <tr className="border-b border-slate-700">
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Invoice</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Amount</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Status</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Date</th>
                  <th className="text-left px-6 py-4 text-sm font-medium text-slate-400">Actions</th>
                </tr>
              </thead>
              <tbody>
                {filteredInvoices.map((invoice) => {
                  const status = statusConfig[invoice.status] || statusConfig.draft;

                  return (
                    <tr key={invoice.id} className="border-b border-slate-700/50 hover:bg-slate-700/30">
                      <td className="px-6 py-4">
                        <div className="font-mono text-sm text-white">
                          {invoice.stripe_invoice_id.slice(0, 20)}...
                        </div>
                      </td>
                      <td className="px-6 py-4">
                        <div className="font-medium text-white">
                          {formatCurrency(invoice.amount, invoice.currency)}
                        </div>
                        <div className="text-xs text-slate-500 uppercase">
                          {invoice.currency}
                        </div>
                      </td>
                      <td className="px-6 py-4">
                        <span className={`inline-flex items-center gap-1 px-2 py-1 rounded-full text-xs font-medium ${status.bg} ${status.text}`}>
                          {status.icon}
                          {invoice.status}
                        </span>
                      </td>
                      <td className="px-6 py-4 text-sm text-slate-300">
                        {new Date(invoice.created_at).toLocaleDateString()}
                      </td>
                      <td className="px-6 py-4">
                        <div className="flex items-center gap-2">
                          {invoice.invoice_url && (
                            <a
                              href={invoice.invoice_url}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="p-2 text-slate-400 hover:text-white transition-colors"
                              title="View Invoice"
                            >
                              <ExternalLink className="w-4 h-4" />
                            </a>
                          )}
                          {invoice.invoice_pdf && (
                            <a
                              href={invoice.invoice_pdf}
                              target="_blank"
                              rel="noopener noreferrer"
                              className="p-2 text-slate-400 hover:text-white transition-colors"
                              title="Download PDF"
                            >
                              <Download className="w-4 h-4" />
                            </a>
                          )}
                          <a
                            href={`https://dashboard.stripe.com/invoices/${invoice.stripe_invoice_id}`}
                            target="_blank"
                            rel="noopener noreferrer"
                            className="p-2 text-slate-400 hover:text-white transition-colors"
                            title="View in Stripe"
                          >
                            <FileText className="w-4 h-4" />
                          </a>
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
        Showing {filteredInvoices.length} of {invoices.length} invoices
      </div>
    </div>
  );
}
