import Stripe from 'https://esm.sh/stripe@14.10.0?target=deno';

const stripeSecretKey = Deno.env.get('STRIPE_SECRET_KEY');

if (!stripeSecretKey) {
  throw new Error('STRIPE_SECRET_KEY is not set');
}

export const stripe = new Stripe(stripeSecretKey, {
  apiVersion: '2023-10-16',
  httpClient: Stripe.createFetchHttpClient(),
});

export const PRICE_TO_PLAN: Record<string, string> = {
  [Deno.env.get('STRIPE_PRO_MONTHLY_PRICE_ID') || '']: 'pro',
  [Deno.env.get('STRIPE_PRO_YEARLY_PRICE_ID') || '']: 'pro',
  [Deno.env.get('STRIPE_TEAM_MONTHLY_PRICE_ID') || '']: 'team',
  [Deno.env.get('STRIPE_TEAM_YEARLY_PRICE_ID') || '']: 'team',
};
