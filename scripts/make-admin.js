/**
 * Script to add the first user as a super admin
 * Run with: node scripts/make-admin.js
 */

import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

// Load environment variables
dotenv.config();

const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_ROLE_KEY || process.env.VITE_SUPABASE_ANON_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('Missing Supabase credentials. Set VITE_SUPABASE_URL and SUPABASE_SERVICE_ROLE_KEY');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function makeAdmin() {
  console.log('Finding user...');

  // Get the first (only) user
  const { data: users, error: userError } = await supabase
    .from('users')
    .select('id, name, email')
    .limit(1);

  if (userError) {
    console.error('Error fetching user:', userError.message);
    process.exit(1);
  }

  if (!users || users.length === 0) {
    console.error('No users found in database');
    process.exit(1);
  }

  const user = users[0];
  console.log(`Found user: ${user.name} (${user.email})`);

  // Add as super admin
  const { data, error } = await supabase
    .from('admin_users')
    .upsert({
      user_id: user.id,
      role: 'super_admin'
    }, {
      onConflict: 'user_id'
    })
    .select();

  if (error) {
    console.error('Error adding admin:', error.message);
    process.exit(1);
  }

  console.log(`\n✓ Successfully added ${user.name} as super_admin`);
  console.log('\nYou can now access /admin in the app');
}

makeAdmin();
