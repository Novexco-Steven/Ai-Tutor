-- ============================================================================
-- ADD STEVEN AS SUPER ADMIN
-- ============================================================================

-- Insert Steven as super_admin by email (only if not already exists)
INSERT INTO admin_users (user_id, role, created_at)
SELECT id, 'super_admin', NOW()
FROM users
WHERE email = 'slacharite28@gmail.com'
  AND NOT EXISTS (
    SELECT 1 FROM admin_users WHERE admin_users.user_id = users.id
  );
