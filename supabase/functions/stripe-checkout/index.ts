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
    const { priceId, userId, successUrl, cancelUrl } = await req.json();

    if (!priceId || !userId || !successUrl || !cancelUrl) {
      throw new Error('Missing required parameters');
    }

    // Initialize Supabase client
    const supabaseUrl = Deno.env.get('SUPABASE_URL')!;
    const supabaseServiceKey = Deno.env.get('SUPABASE_SERVICE_ROLE_KEY')!;
    const supabase = createClient(supabaseUrl, supabaseServiceKey);

    // Get user profile
    const { data: profile, error: profileError } = await supabase
      .from('profiles')
      .select('email, name')
      .eq('id', userId)
      .single();

    if (profileError || !profile) {
      throw new Error('User profile not found');
    }

    // Check if customer already exists
    let { data: customer } = await supabase
      .from('customers')
      .select('stripe_customer_id')
      .eq('user_id', userId)
      .single();

    let stripeCustomerId = customer?.stripe_customer_id;

    // Create Stripe customer if doesn't exist
    if (!stripeCustomerId) {
      const stripeCustomer = await stripe.customers.create({
        email: profile.email,
        name: profile.name || undefined,
        metadata: {
          user_id: userId,
        },
      });

      stripeCustomerId = stripeCustomer.id;

      // Save customer to database
      await supabase.from('customers').insert({
        user_id: userId,
        stripe_customer_id: stripeCustomerId,
        email: profile.email,
        name: profile.name,
      });
    }

    // Create checkout session
    const session = await stripe.checkout.sessions.create({
      customer: stripeCustomerId,
      mode: 'subscription',
      payment_method_types: ['card'],
      line_items: [
        {
          price: priceId,
          quantity: 1,
        },
      ],
      success_url: successUrl,
      cancel_url: cancelUrl,
      subscription_data: {
        metadata: {
          user_id: userId,
        },
      },
      metadata: {
        user_id: userId,
      },
    });

    return new Response(
      JSON.stringify({ url: session.url }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 200,
      }
    );
  } catch (error) {
    console.error('Checkout error:', error);
    return new Response(
      JSON.stringify({ error: error.message }),
      {
        headers: { ...corsHeaders, 'Content-Type': 'application/json' },
        status: 400,
      }
    );
  }
});
