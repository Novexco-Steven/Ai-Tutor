import { serve } from 'https://deno.land/std@0.177.0/http/server.ts';
import { createClient } from 'https://esm.sh/@supabase/supabase-js@2.39.0';
import { corsHeaders } from '../_shared/cors.ts';
import { stripe } from '../_shared/stripe.ts';

serve(async (req) => {
  // Handle CORS preflight
  if (req.method === 'OPTIONS') {
    return new Response('ok', { headers: corsHeaders });
  }

  try {
    const { subscriptionId, cancelAtPeriodEnd = true } = await req.json();

    if (!subscriptionId) {
      throw new Error('Missing subscription ID');
    }

    // Initialize Supabase client
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
    const supabaseServiceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
    const supabase = createClient(supabaseUrl, supabaseServiceKey);

    // Cancel subscription in Stripe
    const subscription = await stripe.subscriptions.update(subscriptionId, {
      cancel_at_period_end: cancelAtPeriodEnd,
    });

    // Update subscription in database
    await supabase
      .from('subscriptions')
      .update({
        cancel_at_period_end: cancelAtPeriodEnd,
        updated_at: new Date().toISOString(),
      })
      .eq('stripe_subscription_id', subscriptionId);

    // Log billing event
    await supabase.from('billing_events').insert({
      subscription_id: subscriptionId,
      event_type: 'subscription.cancel_scheduled',
      event_data: {
        cancel_at_period_end: cancelAtPeriodEnd,
        current_period_end: subscription.current_period_end,
      },
    });

    return new Response(
      JSON.stringify({ success: true, subscription }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 200,
      }
    );
  } catch (error) {
    console.error('Cancel error:', error);
    return new Response(
      JSON.stringify({ error: error.message }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 400,
      }
    );
  }
});
