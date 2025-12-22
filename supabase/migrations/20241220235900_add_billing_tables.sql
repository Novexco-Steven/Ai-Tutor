-- ============================================
-- Billing and Subscription Tables for Stripe Integration
-- ============================================
-- Run this migration to set up the billing system
-- ============================================

-- Enable UUID extension if not already enabled
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- ============================================
-- Customers Table (links Supabase users to Stripe customers)
-- ============================================
CREATE TABLE IF NOT EXISTS customers (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    stripe_customer_id TEXT UNIQUE NOT NULL,
    email TEXT NOT NULL,
    name TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(user_id)
);

-- ============================================
-- Subscriptions Table
-- ============================================
CREATE TABLE IF NOT EXISTS subscriptions (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    customer_id UUID REFERENCES customers(id) ON DELETE SET NULL,
    stripe_customer_id TEXT NOT NULL,
    stripe_subscription_id TEXT UNIQUE NOT NULL,
    plan_id TEXT NOT NULL DEFAULT 'free',
    status TEXT NOT NULL DEFAULT 'active' CHECK (status IN ('active', 'canceled', 'past_due', 'trialing', 'incomplete', 'incomplete_expired', 'unpaid')),
    current_period_start TIMESTAMPTZ,
    current_period_end TIMESTAMPTZ,
    cancel_at_period_end BOOLEAN DEFAULT FALSE,
    canceled_at TIMESTAMPTZ,
    trial_start TIMESTAMPTZ,
    trial_end TIMESTAMPTZ,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    UNIQUE(user_id)
);

-- ============================================
-- Invoices Table
-- ============================================
CREATE TABLE IF NOT EXISTS invoices (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    subscription_id UUID REFERENCES subscriptions(id) ON DELETE SET NULL,
    stripe_invoice_id TEXT UNIQUE NOT NULL,
    amount INTEGER NOT NULL, -- Amount in cents
    currency TEXT NOT NULL DEFAULT 'usd',
    status TEXT NOT NULL CHECK (status IN ('draft', 'open', 'paid', 'uncollectible', 'void')),
    invoice_url TEXT,
    invoice_pdf TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================
-- Payment Methods Table
-- ============================================
CREATE TABLE IF NOT EXISTS payment_methods (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
    stripe_payment_method_id TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL, -- 'card', 'bank_account', etc.
    card_brand TEXT, -- 'visa', 'mastercard', etc.
    card_last4 TEXT,
    card_exp_month INTEGER,
    card_exp_year INTEGER,
    is_default BOOLEAN DEFAULT FALSE,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================
-- Billing Events Log (for debugging and auditing)
-- ============================================
CREATE TABLE IF NOT EXISTS billing_events (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    subscription_id TEXT, -- Stripe subscription ID for reference
    event_type TEXT NOT NULL,
    event_data JSONB,
    processed BOOLEAN DEFAULT FALSE,
    error TEXT,
    created_at TIMESTAMPTZ DEFAULT NOW()
);

-- ============================================
-- Indexes for better query performance
-- ============================================
CREATE INDEX IF NOT EXISTS idx_customers_user_id ON customers(user_id);
CREATE INDEX IF NOT EXISTS idx_customers_stripe_customer_id ON customers(stripe_customer_id);
CREATE INDEX IF NOT EXISTS idx_subscriptions_user_id ON subscriptions(user_id);
CREATE INDEX IF NOT EXISTS idx_subscriptions_status ON subscriptions(status);
CREATE INDEX IF NOT EXISTS idx_subscriptions_plan_id ON subscriptions(plan_id);
CREATE INDEX IF NOT EXISTS idx_subscriptions_stripe_sub_id ON subscriptions(stripe_subscription_id);
CREATE INDEX IF NOT EXISTS idx_invoices_subscription_id ON invoices(subscription_id);
CREATE INDEX IF NOT EXISTS idx_invoices_status ON invoices(status);
CREATE INDEX IF NOT EXISTS idx_invoices_stripe_invoice_id ON invoices(stripe_invoice_id);
CREATE INDEX IF NOT EXISTS idx_payment_methods_user_id ON payment_methods(user_id);
CREATE INDEX IF NOT EXISTS idx_billing_events_event_type ON billing_events(event_type);
CREATE INDEX IF NOT EXISTS idx_billing_events_processed ON billing_events(processed);

-- ============================================
-- Enable Row Level Security
-- ============================================
ALTER TABLE customers ENABLE ROW LEVEL SECURITY;
ALTER TABLE subscriptions ENABLE ROW LEVEL SECURITY;
ALTER TABLE invoices ENABLE ROW LEVEL SECURITY;
ALTER TABLE payment_methods ENABLE ROW LEVEL SECURITY;
ALTER TABLE billing_events ENABLE ROW LEVEL SECURITY;

-- ============================================
-- RLS Policies for customers
-- ============================================
DROP POLICY IF EXISTS "Users can view their own customer record" ON customers;
CREATE POLICY "Users can view their own customer record"
    ON customers FOR SELECT
    USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Admins can view all customers" ON customers;
CREATE POLICY "Admins can view all customers"
    ON customers FOR SELECT
    USING (EXISTS (SELECT 1 FROM admin_users WHERE admin_users.user_id = auth.uid()));

DROP POLICY IF EXISTS "Service role can manage customers" ON customers;
CREATE POLICY "Service role can manage customers"
    ON customers FOR ALL
    USING (true)
    WITH CHECK (true);

-- ============================================
-- RLS Policies for subscriptions
-- ============================================
DROP POLICY IF EXISTS "Users can view their own subscription" ON subscriptions;
CREATE POLICY "Users can view their own subscription"
    ON subscriptions FOR SELECT
    USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Admins can view all subscriptions" ON subscriptions;
CREATE POLICY "Admins can view all subscriptions"
    ON subscriptions FOR SELECT
    USING (EXISTS (SELECT 1 FROM admin_users WHERE admin_users.user_id = auth.uid()));

DROP POLICY IF EXISTS "Service role can manage subscriptions" ON subscriptions;
CREATE POLICY "Service role can manage subscriptions"
    ON subscriptions FOR ALL
    USING (true)
    WITH CHECK (true);

-- ============================================
-- RLS Policies for invoices
-- ============================================
DROP POLICY IF EXISTS "Users can view their own invoices" ON invoices;
CREATE POLICY "Users can view their own invoices"
    ON invoices FOR SELECT
    USING (EXISTS (
        SELECT 1 FROM subscriptions s
        WHERE s.id = invoices.subscription_id
        AND s.user_id = auth.uid()
    ));

DROP POLICY IF EXISTS "Admins can view all invoices" ON invoices;
CREATE POLICY "Admins can view all invoices"
    ON invoices FOR SELECT
    USING (EXISTS (SELECT 1 FROM admin_users WHERE admin_users.user_id = auth.uid()));

DROP POLICY IF EXISTS "Service role can manage invoices" ON invoices;
CREATE POLICY "Service role can manage invoices"
    ON invoices FOR ALL
    USING (true)
    WITH CHECK (true);

-- ============================================
-- RLS Policies for payment_methods
-- ============================================
DROP POLICY IF EXISTS "Users can view their own payment methods" ON payment_methods;
CREATE POLICY "Users can view their own payment methods"
    ON payment_methods FOR SELECT
    USING (auth.uid() = user_id);

DROP POLICY IF EXISTS "Admins can view all payment methods" ON payment_methods;
CREATE POLICY "Admins can view all payment methods"
    ON payment_methods FOR SELECT
    USING (EXISTS (SELECT 1 FROM admin_users WHERE admin_users.user_id = auth.uid()));

DROP POLICY IF EXISTS "Service role can manage payment methods" ON payment_methods;
CREATE POLICY "Service role can manage payment methods"
    ON payment_methods FOR ALL
    USING (true)
    WITH CHECK (true);

-- ============================================
-- RLS Policies for billing_events (admin only)
-- ============================================
DROP POLICY IF EXISTS "Admins can view billing events" ON billing_events;
CREATE POLICY "Admins can view billing events"
    ON billing_events FOR SELECT
    USING (EXISTS (SELECT 1 FROM admin_users WHERE admin_users.user_id = auth.uid()));

DROP POLICY IF EXISTS "Service role can manage billing events" ON billing_events;
CREATE POLICY "Service role can manage billing events"
    ON billing_events FOR ALL
    USING (true)
    WITH CHECK (true);

-- ============================================
-- Function to update updated_at timestamp
-- ============================================
CREATE OR REPLACE FUNCTION update_billing_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- ============================================
-- Triggers for updated_at
-- ============================================
DROP TRIGGER IF EXISTS update_customers_updated_at ON customers;
CREATE TRIGGER update_customers_updated_at
    BEFORE UPDATE ON customers
    FOR EACH ROW
    EXECUTE FUNCTION update_billing_updated_at();

DROP TRIGGER IF EXISTS update_subscriptions_updated_at ON subscriptions;
CREATE TRIGGER update_subscriptions_updated_at
    BEFORE UPDATE ON subscriptions
    FOR EACH ROW
    EXECUTE FUNCTION update_billing_updated_at();

-- ============================================
-- Add subscription_tier to users for quick access
-- ============================================
DO $$
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM information_schema.columns
        WHERE table_name = 'users' AND column_name = 'subscription_tier'
    ) THEN
        ALTER TABLE users ADD COLUMN subscription_tier TEXT DEFAULT 'free';
    END IF;
END $$;

-- ============================================
-- Function to sync subscription tier to users
-- ============================================
CREATE OR REPLACE FUNCTION sync_subscription_tier()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE users
    SET subscription_tier = NEW.plan_id
    WHERE id = NEW.user_id;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS sync_user_subscription_tier ON subscriptions;
CREATE TRIGGER sync_user_subscription_tier
    AFTER INSERT OR UPDATE ON subscriptions
    FOR EACH ROW
    EXECUTE FUNCTION sync_subscription_tier();

-- ============================================
-- Grant access for service role
-- ============================================
GRANT ALL ON customers TO service_role;
GRANT ALL ON subscriptions TO service_role;
GRANT ALL ON invoices TO service_role;
GRANT ALL ON payment_methods TO service_role;
GRANT ALL ON billing_events TO service_role;
