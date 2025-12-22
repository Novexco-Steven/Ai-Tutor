import { useState, useEffect } from 'react';
import { useUser } from '@/contexts/UserContext';
import { stripeService, Subscription, pricePlans } from '@/services/stripe';
import {
  CreditCard,
  Check,
  AlertCircle,
  ExternalLink,
  Loader2,
  Crown,
  Sparkles,
} from 'lucide-react';
import Button from '../shared/Button';
import Card from '../shared/Card';

export default function SubscriptionSettings() {
  const { profile } = useUser();
  const [subscription, setSubscription] = useState<Subscription | null>(null);
  const [loading, setLoading] = useState(true);
  const [actionLoading, setActionLoading] = useState(false);
  const [billingInterval, setBillingInterval] = useState<'monthly' | 'yearly'>('monthly');

  useEffect(() => {
    if (profile?.id) {
      loadSubscription();
    }
  }, [profile?.id]);

  const loadSubscription = async () => {
    if (!profile?.id) return;

    try {
      setLoading(true);
      const sub = await stripeService.getCurrentSubscription(profile.id);
      setSubscription(sub);
    } catch (error) {
      console.error('Error loading subscription:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleUpgrade = async (priceId: string) => {
    if (!profile?.id) return;

    try {
      setActionLoading(true);
      const { url } = await stripeService.createCheckoutSession(
        priceId,
        profile.id,
        `${window.location.origin}/settings?upgrade=success`,
        `${window.location.origin}/settings?upgrade=canceled`
      );
      window.location.href = url;
    } catch (error) {
      console.error('Error creating checkout session:', error);
      alert('Failed to start checkout. Please try again.');
    } finally {
      setActionLoading(false);
    }
  };

  const handleManageBilling = async () => {
    if (!subscription?.stripe_customer_id) return;

    try {
      setActionLoading(true);
      const { url } = await stripeService.createPortalSession(
        subscription.stripe_customer_id,
        `${window.location.origin}/settings`
      );
      window.location.href = url;
    } catch (error) {
      console.error('Error creating portal session:', error);
      alert('Failed to open billing portal. Please try again.');
    } finally {
      setActionLoading(false);
    }
  };

  const handleCancelSubscription = async () => {
    if (!subscription?.stripe_subscription_id) return;

    if (!confirm('Are you sure you want to cancel your subscription? You will continue to have access until the end of your billing period.')) {
      return;
    }

    try {
      setActionLoading(true);
      await stripeService.cancelSubscription(subscription.stripe_subscription_id, true);
      await loadSubscription();
    } catch (error) {
      console.error('Error canceling subscription:', error);
      alert('Failed to cancel subscription. Please try again.');
    } finally {
      setActionLoading(false);
    }
  };

  const currentPlan = pricePlans.find(p => p.id === (subscription?.plan_id || 'free')) || pricePlans[0];
  const isPro = subscription?.plan_id === 'pro' || subscription?.plan_id === 'team';

  if (loading) {
    return (
      <Card className="animate-pulse">
        <div className="h-32 bg-gray-200 dark:bg-gray-700 rounded" />
      </Card>
    );
  }

  return (
    <div className="space-y-6">
      {/* Current Plan */}
      <Card>
        <div className="flex items-start justify-between">
          <div>
            <div className="flex items-center gap-2 mb-2">
              {isPro ? (
                <Crown className="w-5 h-5 text-amber-500" />
              ) : (
                <CreditCard className="w-5 h-5 text-gray-400" />
              )}
              <h3 className="text-lg font-semibold text-gray-900 dark:text-white">
                {currentPlan.name} Plan
              </h3>
              {subscription?.status === 'active' && (
                <span className="px-2 py-0.5 bg-green-100 dark:bg-green-900/20 text-green-700 dark:text-green-400 text-xs font-medium rounded-full">
                  Active
                </span>
              )}
              {subscription?.cancel_at_period_end && (
                <span className="px-2 py-0.5 bg-amber-100 dark:bg-amber-900/20 text-amber-700 dark:text-amber-400 text-xs font-medium rounded-full">
                  Cancels at period end
                </span>
              )}
            </div>
            <p className="text-gray-600 dark:text-gray-400 text-sm mb-4">
              {currentPlan.description}
            </p>

            {subscription?.current_period_end && (
              <p className="text-sm text-gray-500 dark:text-gray-400">
                {subscription.cancel_at_period_end ? 'Access until: ' : 'Next billing date: '}
                <span className="font-medium text-gray-700 dark:text-gray-300">
                  {new Date(subscription.current_period_end).toLocaleDateString()}
                </span>
              </p>
            )}
          </div>

          {subscription && (
            <Button
              variant="secondary"
              onClick={handleManageBilling}
              disabled={actionLoading}
            >
              {actionLoading ? (
                <Loader2 className="w-4 h-4 animate-spin" />
              ) : (
                <>
                  <ExternalLink className="w-4 h-4 mr-2" />
                  Manage Billing
                </>
              )}
            </Button>
          )}
        </div>

        {/* Current Plan Features */}
        <div className="mt-4 pt-4 border-t border-gray-200 dark:border-gray-700">
          <h4 className="text-sm font-medium text-gray-700 dark:text-gray-300 mb-3">
            Your plan includes:
          </h4>
          <ul className="grid grid-cols-1 md:grid-cols-2 gap-2">
            {currentPlan.features.map((feature, index) => (
              <li key={index} className="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                <Check className="w-4 h-4 text-green-500 flex-shrink-0" />
                {feature}
              </li>
            ))}
          </ul>
        </div>
      </Card>

      {/* Upgrade Options (show if on free plan) */}
      {(!subscription || subscription.plan_id === 'free') && (
        <div>
          <div className="flex items-center justify-between mb-4">
            <h3 className="text-lg font-semibold text-gray-900 dark:text-white flex items-center gap-2">
              <Sparkles className="w-5 h-5 text-primary-500" />
              Upgrade Your Plan
            </h3>

            {/* Billing Toggle */}
            <div className="flex items-center gap-2 bg-gray-100 dark:bg-gray-800 rounded-lg p-1">
              <button
                onClick={() => setBillingInterval('monthly')}
                className={`px-3 py-1 text-sm font-medium rounded-md transition-colors ${
                  billingInterval === 'monthly'
                    ? 'bg-white dark:bg-gray-700 text-gray-900 dark:text-white shadow-sm'
                    : 'text-gray-600 dark:text-gray-400'
                }`}
              >
                Monthly
              </button>
              <button
                onClick={() => setBillingInterval('yearly')}
                className={`px-3 py-1 text-sm font-medium rounded-md transition-colors ${
                  billingInterval === 'yearly'
                    ? 'bg-white dark:bg-gray-700 text-gray-900 dark:text-white shadow-sm'
                    : 'text-gray-600 dark:text-gray-400'
                }`}
              >
                Yearly
                <span className="ml-1 text-green-600 dark:text-green-400 text-xs">
                  Save 17%
                </span>
              </button>
            </div>
          </div>

          <div className="grid gap-4 md:grid-cols-2">
            {pricePlans.filter(p => p.id !== 'free').map((plan) => (
              <Card
                key={plan.id}
                className={`relative ${plan.highlighted ? 'border-primary-500 ring-2 ring-primary-500/20' : ''}`}
              >
                {plan.highlighted && (
                  <div className="absolute -top-3 left-1/2 -translate-x-1/2">
                    <span className="px-3 py-1 bg-primary-500 text-white text-xs font-medium rounded-full">
                      Most Popular
                    </span>
                  </div>
                )}

                <div className="pt-2">
                  <h4 className="text-lg font-semibold text-gray-900 dark:text-white">
                    {plan.name}
                  </h4>
                  <p className="text-sm text-gray-600 dark:text-gray-400 mb-4">
                    {plan.description}
                  </p>

                  <div className="mb-4">
                    {plan.priceMonthly > 0 ? (
                      <>
                        <span className="text-3xl font-bold text-gray-900 dark:text-white">
                          ${billingInterval === 'monthly' ? plan.priceMonthly : (plan.priceYearly / 12).toFixed(2)}
                        </span>
                        <span className="text-gray-500 dark:text-gray-400">/month</span>
                        {billingInterval === 'yearly' && (
                          <p className="text-sm text-gray-500 dark:text-gray-400">
                            ${plan.priceYearly} billed yearly
                          </p>
                        )}
                      </>
                    ) : (
                      <span className="text-2xl font-bold text-gray-900 dark:text-white">
                        Contact Sales
                      </span>
                    )}
                  </div>

                  <ul className="space-y-2 mb-6">
                    {plan.features.map((feature, index) => (
                      <li key={index} className="flex items-center gap-2 text-sm text-gray-600 dark:text-gray-400">
                        <Check className="w-4 h-4 text-green-500 flex-shrink-0" />
                        {feature}
                      </li>
                    ))}
                  </ul>

                  <Button
                    fullWidth
                    variant={plan.highlighted ? 'primary' : 'secondary'}
                    onClick={() => {
                      const priceId = billingInterval === 'monthly'
                        ? plan.stripePriceIdMonthly
                        : plan.stripePriceIdYearly;
                      if (priceId) {
                        handleUpgrade(priceId);
                      } else {
                        window.location.href = 'mailto:sales@tulomi.com';
                      }
                    }}
                    disabled={actionLoading}
                  >
                    {actionLoading ? (
                      <Loader2 className="w-4 h-4 animate-spin" />
                    ) : plan.priceMonthly > 0 ? (
                      'Upgrade Now'
                    ) : (
                      'Contact Sales'
                    )}
                  </Button>
                </div>
              </Card>
            ))}
          </div>
        </div>
      )}

      {/* Cancel Subscription (show if on paid plan) */}
      {subscription && subscription.plan_id !== 'free' && !subscription.cancel_at_period_end && (
        <Card className="border-red-200 dark:border-red-900/50">
          <div className="flex items-start gap-4">
            <div className="p-2 bg-red-100 dark:bg-red-900/20 rounded-lg">
              <AlertCircle className="w-5 h-5 text-red-600 dark:text-red-400" />
            </div>
            <div className="flex-1">
              <h3 className="font-semibold text-gray-900 dark:text-white mb-1">
                Cancel Subscription
              </h3>
              <p className="text-sm text-gray-600 dark:text-gray-400 mb-4">
                You will continue to have access to Pro features until the end of your billing period.
                Your subscription will not renew after that.
              </p>
              <Button
                variant="ghost"
                onClick={handleCancelSubscription}
                disabled={actionLoading}
                className="text-red-600 hover:text-red-700 hover:bg-red-50 dark:text-red-400 dark:hover:bg-red-900/20"
              >
                {actionLoading ? (
                  <Loader2 className="w-4 h-4 animate-spin" />
                ) : (
                  'Cancel Subscription'
                )}
              </Button>
            </div>
          </div>
        </Card>
      )}
    </div>
  );
}
