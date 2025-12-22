-- ============================================================================
-- FIX ADMIN_USERS RLS POLICY
-- Allow users to check their own admin status
-- ============================================================================

-- Add policy allowing users to check their own admin status
DROP POLICY IF EXISTS "Users can check own admin status" ON admin_users;
CREATE POLICY "Users can check own admin status"
  ON admin_users FOR SELECT
  TO authenticated
  USING (user_id = auth.uid());
