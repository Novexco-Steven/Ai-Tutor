-- Add the only user as a super admin
-- Run this after the prompt system migration

INSERT INTO admin_users (user_id, role)
SELECT id, 'super_admin'
FROM users
LIMIT 1
ON CONFLICT (user_id) DO UPDATE SET role = 'super_admin';

-- Verify
SELECT
  au.id,
  au.role,
  u.name,
  u.email
FROM admin_users au
JOIN users u ON u.id = au.user_id;
