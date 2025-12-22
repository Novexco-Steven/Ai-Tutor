-- ============================================================================
-- SEED FIRST ADMIN USER
-- Makes the first user in the system a super_admin
-- ============================================================================

-- Insert the first user as super_admin (only if not already exists)
INSERT INTO admin_users (user_id, role, created_at)
SELECT id, 'super_admin', NOW()
FROM users
WHERE NOT EXISTS (
  SELECT 1 FROM admin_users WHERE admin_users.user_id = users.id
)
ORDER BY created_at ASC
LIMIT 1;
