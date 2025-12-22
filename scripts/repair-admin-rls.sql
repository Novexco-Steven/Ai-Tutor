-- Repair script for admin_users RLS
-- Run this in the Supabase SQL Editor (Dashboard > SQL Editor)

-- First, check if the table exists
DO $$
BEGIN
  IF NOT EXISTS (SELECT FROM pg_tables WHERE schemaname = 'public' AND tablename = 'admin_users') THEN
    RAISE NOTICE 'admin_users table does not exist - creating it';

    CREATE TABLE admin_users (
      id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
      user_id UUID REFERENCES users(id) ON DELETE CASCADE NOT NULL UNIQUE,
      role TEXT NOT NULL DEFAULT 'admin' CHECK (role IN ('admin', 'super_admin')),
      created_at TIMESTAMPTZ DEFAULT NOW(),
      updated_at TIMESTAMPTZ DEFAULT NOW()
    );

    ALTER TABLE admin_users ENABLE ROW LEVEL SECURITY;
  ELSE
    RAISE NOTICE 'admin_users table exists';
  END IF;
END $$;

-- Drop all existing policies to start fresh
DROP POLICY IF EXISTS "Admins can view admin list" ON admin_users;
DROP POLICY IF EXISTS "Admins can view all admin users" ON admin_users;
DROP POLICY IF EXISTS "Super admins can manage admin users" ON admin_users;
DROP POLICY IF EXISTS "Users can check own admin status" ON admin_users;
DROP POLICY IF EXISTS "Users can view own admin record" ON admin_users;
DROP POLICY IF EXISTS "Admins can view all admin records" ON admin_users;
DROP POLICY IF EXISTS "Super admins can manage admins" ON admin_users;

-- Create security definer functions (bypass RLS)
CREATE OR REPLACE FUNCTION public.is_current_user_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

CREATE OR REPLACE FUNCTION public.is_current_user_super_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid() AND role = 'super_admin'
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Create proper RLS policies
-- 1. Users can see their own admin record (allows checking if you're an admin)
CREATE POLICY "Users can view own admin record"
  ON admin_users FOR SELECT
  TO authenticated
  USING (user_id = auth.uid());

-- 2. Admins can view all admin records
CREATE POLICY "Admins can view all admin records"
  ON admin_users FOR SELECT
  TO authenticated
  USING (public.is_current_user_admin());

-- 3. Super admins can manage (insert/update/delete) admin users
CREATE POLICY "Super admins can manage admins"
  ON admin_users FOR ALL
  TO authenticated
  USING (public.is_current_user_super_admin())
  WITH CHECK (public.is_current_user_super_admin());

-- Verify the setup
SELECT 'Policies on admin_users:' as info;
SELECT policyname, cmd, qual FROM pg_policies WHERE tablename = 'admin_users';

SELECT 'Current admin_users count:' as info;
SELECT COUNT(*) as admin_count FROM admin_users;
