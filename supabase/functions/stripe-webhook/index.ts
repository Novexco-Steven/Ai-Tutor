import { serve } from 'https://deno.land/std@0.177.0/http/server.ts';
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0';
import { stripe, PRICE_TO_PLAN } from '../_shared/stripe.ts';

const webhookSecret = Deno.env.get('STRIPE_WEBHOOK_SECRET');

serve(async (req) => {
  const signature = req.headers.get('stripe-signature');

  if (!signature || !webhookSecret) {
    return new Response('Missing signature or webhook secret', { status: 400 });
  }

  try {
    const body = await req.text();
    const event = stripe.webhooks.constructEvent(body, signature, webhookSecret);

    // Initialize Supabase client
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
    const supabaseServiceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
    const supabase = createClient(supabaseUrl, supabaseServiceKey);

    console.log('Processing webhook event:', event.type);

    switch (event.type) {
      case 'checkout.session.completed': {
        const session = event.data.object;
        const userId = session.metadata?.user_id;
        const subscriptionId = session.subscription as string;

        if (userId && subscriptionId) {
          // Fetch subscription details from Stripe
          const subscription = await stripe.subscriptions.retrieve(subscriptionId);
          const priceId = subscription.items.data[0]?.price.id;
          const planId = PRICE_TO_PLAN[priceId] || 'pro';

          // Get customer ID from database
          const { data: customer } = await supabase
            .from('customers')
            .select('id')
            .eq('user_id', userId)
            .single();

          // Create subscription record
          await supabase.from('subscriptions').upsert({
            user_id: userId,
            customer_id: customer?.id,
            stripe_customer_id: session.customer as string,
            stripe_subscription_id: subscriptionId,
            plan_id: planId,
            status: 'active',
            current_period_start: new Date(subscription.current_period_start * 1000).toISOString(),
            current_period_end: new Date(subscription.current_period_end * 1000).toISOString(),
            cancel_at_period_end: subscription.cancel_at_period_end,
          }, {
            onConflict: 'user_id',
          });

          // Update profile subscription tier
          await supabase
            .from('profiles')
            .update({ subscription_tier: planId })
            .eq('id', userId);
        }
        break;
      }

      case 'customer.subscription.updated': {
        const subscription = event.data.object;
        const userId = subscription.metadata?.user_id;
        const priceId = subscription.items.data[0]?.price.id;
        const planId = PRICE_TO_PLAN[priceId] || 'pro';

        // Map Stripe status to our status
        const statusMap: Record<string, string> = {
          active: 'active',
          past_due: 'past_due',
          canceled: 'canceled',
          incomplete: 'incomplete',
          incomplete_expired: 'canceled',
          trialing: 'trialing',
          unpaid: 'past_due',
        };

        await supabase
          .from('subscriptions')
          .update({
            plan_id: planId,
            status: statusMap[subscription.status] || subscription.status,
            current_period_start: new Date(subscription.current_period_start * 1000).toISOString(),
            current_period_end: new Date(subscription.current_period_end * 1000).toISOString(),
            cancel_at_period_end: subscription.cancel_at_period_end,
            updated_at: new Date().toISOString(),
          })
          .eq('stripe_subscription_id', subscription.id);

        // Update profile subscription tier if user_id exists
        if (userId) {
          await supabase
            .from('profiles')
            .update({ subscription_tier: subscription.status === 'canceled' ? 'free' : planId })
            .eq('id', userId);
        }
        break;
      }

      case 'customer.subscription.deleted': {
        const subscription = event.data.object;
        const userId = subscription.metadata?.user_id;

        await supabase
          .from('subscriptions')
          .update({
            status: 'canceled',
            cancel_at_period_end: false,
            updated_at: new Date().toISOString(),
          })
          .eq('stripe_subscription_id', subscription.id);

        // Downgrade profile to free
        if (userId) {
          await supabase
            .from('profiles')
            .update({ subscription_tier: 'free' })
            .eq('id', userId);
        }
        break;
      }

      case 'invoice.paid': {
        const invoice = event.data.object;
        const subscriptionId = invoice.subscription as string;

        if (subscriptionId) {
          // Get subscription from database
          const { data: sub } = await supabase
            .from('subscriptions')
            .select('id')
            .eq('stripe_subscription_id', subscriptionId)
            .single();

          if (sub) {
            await supabase.from('invoices').upsert({
              subscription_id: sub.id,
              stripe_invoice_id: invoice.id,
              amount: invoice.amount_paid,
              currency: invoice.currency,
              status: 'paid',
              invoice_url: invoice.hosted_invoice_url,
              invoice_pdf: invoice.invoice_pdf,
            }, {
              onConflict: 'stripe_invoice_id',
            });
          }
        }
        break;
      }

      case 'invoice.payment_failed': {
        const invoice = event.data.object;
        const subscriptionId = invoice.subscription as string;

        if (subscriptionId) {
          const { data: sub } = await supabase
            .from('subscriptions')
            .select('id')
            .eq('stripe_subscription_id', subscriptionId)
            .single();

          if (sub) {
            await supabase.from('invoices').upsert({
              subscription_id: sub.id,
              stripe_invoice_id: invoice.id,
              amount: invoice.amount_due,
              currency: invoice.currency,
              status: 'open',
              invoice_url: invoice.hosted_invoice_url,
              invoice_pdf: invoice.invoice_pdf,
            }, {
              onConflict: 'stripe_invoice_id',
            });
          }
        }
        break;
      }

      default:
        console.log('Unhandled event type:', event.type);
    }

    // Log the event
    await supabase.from('billing_events').insert({
      event_type: event.type,
      event_data: event.data.object,
    });

    return new Response(JSON.stringify({ received: true }), {
      headers: { 'Content-Type': 'application/json' },
      status: 200,
    });
  } catch (error) {
    console.error('Webhook error:', error);
    return new Response(
      JSON.stringify({ error: error.message }),
      { status: 400 }
    );
  }
});
