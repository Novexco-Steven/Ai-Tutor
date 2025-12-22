-- ============================================================================
-- FIX ADMIN_USERS RLS PROPERLY
-- Use security definer function to avoid recursion
-- ============================================================================

-- Drop all existing policies on admin_users to start fresh
DROP POLICY IF EXISTS "Admins can view admin list" ON admin_users;
DROP POLICY IF EXISTS "Admins can view all admin users" ON admin_users;
DROP POLICY IF EXISTS "Super admins can manage admin users" ON admin_users;
DROP POLICY IF EXISTS "Users can check own admin status" ON admin_users;

-- Create a security definer function to check admin status (bypasses RLS)
CREATE OR REPLACE FUNCTION public.is_current_user_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid()
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Create a security definer function to check super admin status
CREATE OR REPLACE FUNCTION public.is_current_user_super_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM admin_users WHERE user_id = auth.uid() AND role = 'super_admin'
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- Simple policy: Users can see their own admin record
CREATE POLICY "Users can view own admin record"
  ON admin_users FOR SELECT
  TO authenticated
  USING (user_id = auth.uid());

-- Admins can view all admin records (uses security definer function)
CREATE POLICY "Admins can view all admin records"
  ON admin_users FOR SELECT
  TO authenticated
  USING (public.is_current_user_admin());

-- Super admins can insert/update/delete admin users
CREATE POLICY "Super admins can manage admins"
  ON admin_users FOR ALL
  TO authenticated
  USING (public.is_current_user_super_admin())
  WITH CHECK (public.is_current_user_super_admin());
