import { loadStripe, Stripe } from '@stripe/stripe-js';
import { supabase } from './supabase';

// Initialize Stripe with publishable key
const stripePromise = loadStripe(import.meta.env.VITE_STRIPE_PUBLISHABLE_KEY || '');

export interface PricePlan {
  id: string;
  name: string;
  description: string;
  priceMonthly: number;
  priceYearly: number;
  stripePriceIdMonthly: string;
  stripePriceIdYearly: string;
  features: string[];
  highlighted?: boolean;
}

export interface Subscription {
  id: string;
  user_id: string;
  stripe_customer_id: string;
  stripe_subscription_id: string;
  plan_id: string;
  status: 'active' | 'canceled' | 'past_due' | 'trialing' | 'incomplete';
  current_period_start: string;
  current_period_end: string;
  cancel_at_period_end: boolean;
  created_at: string;
  updated_at: string;
}

export interface Customer {
  id: string;
  user_id: string;
  stripe_customer_id: string;
  email: string;
  name: string | null;
  created_at: string;
  updated_at: string;
}

export interface Invoice {
  id: string;
  subscription_id: string;
  stripe_invoice_id: string;
  amount: number;
  currency: string;
  status: 'draft' | 'open' | 'paid' | 'uncollectible' | 'void';
  invoice_url: string | null;
  invoice_pdf: string | null;
  created_at: string;
}

// Price plans configuration
export const pricePlans: PricePlan[] = [
  {
    id: 'free',
    name: 'Free',
    description: 'Perfect for trying out Tulomi',
    priceMonthly: 0,
    priceYearly: 0,
    stripePriceIdMonthly: '',
    stripePriceIdYearly: '',
    features: [
      '3 lessons per week',
      'Basic progress tracking',
      'Email support',
      'Access to all subjects',
    ],
  },
  {
    id: 'pro',
    name: 'Pro',
    description: 'For serious learners and families',
    priceMonthly: 9.99,
    priceYearly: 99.99,
    stripePriceIdMonthly: import.meta.env.VITE_STRIPE_PRO_MONTHLY_PRICE_ID || '',
    stripePriceIdYearly: import.meta.env.VITE_STRIPE_PRO_YEARLY_PRICE_ID || '',
    features: [
      'Unlimited lessons',
      'Advanced analytics',
      'Priority support',
      'Offline mode',
      'Multiple learners',
      'Ad-free experience',
    ],
    highlighted: true,
  },
  {
    id: 'team',
    name: 'Team',
    description: 'For schools and organizations',
    priceMonthly: 0, // Custom pricing
    priceYearly: 0,
    stripePriceIdMonthly: import.meta.env.VITE_STRIPE_TEAM_MONTHLY_PRICE_ID || '',
    stripePriceIdYearly: import.meta.env.VITE_STRIPE_TEAM_YEARLY_PRICE_ID || '',
    features: [
      'Everything in Pro',
      'Admin dashboard',
      'LMS integration',
      'Dedicated account manager',
      'Custom onboarding',
      'Volume discounts',
    ],
  },
];

export const stripeService = {
  /**
   * Get Stripe instance
   */
  async getStripe(): Promise<Stripe | null> {
    return stripePromise;
  },

  /**
   * Create a checkout session for subscription
   */
  async createCheckoutSession(priceId: string, userId: string, successUrl: string, cancelUrl: string) {
    const { data, error } = await supabase.functions.invoke('stripe-checkout', {
      body: {
        priceId,
        userId,
        successUrl,
        cancelUrl,
      },
    });

    if (error) throw error;
    return data;
  },

  /**
   * Create a customer portal session
   */
  async createPortalSession(customerId: string, returnUrl: string) {
    const { data, error } = await supabase.functions.invoke('stripe-portal', {
      body: {
        customerId,
        returnUrl,
      },
    });

    if (error) throw error;
    return data;
  },

  /**
   * Get current user's subscription
   */
  async getCurrentSubscription(userId: string): Promise<Subscription | null> {
    const { data, error } = await supabase
      .from('subscriptions')
      .select('*')
      .eq('user_id', userId)
      .single();

    if (error && error.code !== 'PGRST116') throw error;
    return data;
  },

  /**
   * Get current user's customer record
   */
  async getCustomer(userId: string): Promise<Customer | null> {
    const { data, error } = await supabase
      .from('customers')
      .select('*')
      .eq('user_id', userId)
      .single();

    if (error && error.code !== 'PGRST116') throw error;
    return data;
  },

  /**
   * Get all subscriptions (admin only)
   */
  async getAllSubscriptions(): Promise<(Subscription & { profile?: { name: string; email: string } })[]> {
    const { data, error } = await supabase
      .from('subscriptions')
      .select(`
        *,
        profile:profiles(name, email)
      `)
      .order('created_at', { ascending: false });

    if (error) throw error;
    return data || [];
  },

  /**
   * Get all customers (admin only)
   */
  async getAllCustomers(): Promise<(Customer & { subscription?: Subscription })[]> {
    const { data, error } = await supabase
      .from('customers')
      .select(`
        *,
        subscription:subscriptions(*)
      `)
      .order('created_at', { ascending: false });

    if (error) throw error;
    return data || [];
  },

  /**
   * Get subscription stats (admin only)
   */
  async getSubscriptionStats() {
    const { data: subscriptions, error } = await supabase
      .from('subscriptions')
      .select('status, plan_id');

    if (error) throw error;

    const stats = {
      total: subscriptions?.length || 0,
      active: subscriptions?.filter(s => s.status === 'active').length || 0,
      trialing: subscriptions?.filter(s => s.status === 'trialing').length || 0,
      canceled: subscriptions?.filter(s => s.status === 'canceled').length || 0,
      pastDue: subscriptions?.filter(s => s.status === 'past_due').length || 0,
      byPlan: {
        free: subscriptions?.filter(s => s.plan_id === 'free').length || 0,
        pro: subscriptions?.filter(s => s.plan_id === 'pro').length || 0,
        team: subscriptions?.filter(s => s.plan_id === 'team').length || 0,
      },
    };

    return stats;
  },

  /**
   * Get invoices for a subscription
   */
  async getInvoices(subscriptionId: string): Promise<Invoice[]> {
    const { data, error } = await supabase
      .from('invoices')
      .select('*')
      .eq('subscription_id', subscriptionId)
      .order('created_at', { ascending: false });

    if (error) throw error;
    return data || [];
  },

  /**
   * Get all invoices (admin only)
   */
  async getAllInvoices(): Promise<Invoice[]> {
    const { data, error } = await supabase
      .from('invoices')
      .select('*')
      .order('created_at', { ascending: false })
      .limit(100);

    if (error) throw error;
    return data || [];
  },

  /**
   * Get monthly recurring revenue (admin only)
   */
  async getMRR(): Promise<number> {
    const { data, error } = await supabase
      .from('subscriptions')
      .select('plan_id')
      .eq('status', 'active');

    if (error) throw error;

    let mrr = 0;
    data?.forEach(sub => {
      const plan = pricePlans.find(p => p.id === sub.plan_id);
      if (plan) {
        mrr += plan.priceMonthly;
      }
    });

    return mrr;
  },

  /**
   * Cancel subscription (user or admin)
   */
  async cancelSubscription(subscriptionId: string, cancelAtPeriodEnd = true) {
    const { data, error } = await supabase.functions.invoke('stripe-cancel', {
      body: {
        subscriptionId,
        cancelAtPeriodEnd,
      },
    });

    if (error) throw error;
    return data;
  },

  /**
   * Resume a canceled subscription
   */
  async resumeSubscription(subscriptionId: string) {
    const { data, error } = await supabase.functions.invoke('stripe-resume', {
      body: {
        subscriptionId,
      },
    });

    if (error) throw error;
    return data;
  },
};

export default stripeService;
