import { useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '@/contexts/AuthContext';
import { supabase } from '@/services/supabase';
import Loading from '../shared/Loading';

export default function AuthCallback() {
  const navigate = useNavigate();
  const { user, loading: authLoading } = useAuth();

  useEffect(() => {
    async function checkUserProfile() {
      // Wait for auth to finish loading
      if (authLoading) return;

      // No user - redirect to login
      if (!user) {
        navigate('/login', { replace: true });
        return;
      }

      try {
        // Check if user has a profile in the users table
        const { data, error } = await supabase
          .from('users')
          .select('id')
          .eq('id', user.id)
          .single();

        if (error && error.code === 'PGRST116') {
          // No profile found - new user, go to onboarding
          navigate('/onboarding/profile', { replace: true });
        } else if (data) {
          // Profile exists - check if user is admin
          const { data: adminData } = await supabase
            .from('admin_users')
            .select('id')
            .eq('user_id', user.id)
            .single();

          if (adminData) {
            // User is admin - redirect to admin dashboard
            navigate('/admin', { replace: true });
          } else {
            // Regular user - go to dashboard
            navigate('/dashboard', { replace: true });
          }
        } else if (error) {
          console.error('Error checking profile:', error);
          // Default to onboarding on error
          navigate('/onboarding/profile', { replace: true });
        }
      } catch (err) {
        console.error('Error checking profile:', err);
        navigate('/onboarding/profile', { replace: true });
      }
    }

    checkUserProfile();
  }, [user, authLoading, navigate]);

  return <Loading fullScreen message="Signing you in..." />;
}
