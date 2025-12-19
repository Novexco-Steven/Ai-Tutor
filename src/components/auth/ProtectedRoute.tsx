import { useEffect, useState, ReactNode } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '@/contexts/AuthContext';
import { supabase } from '@/services/supabase';
import Loading from '../shared/Loading';

interface ProtectedRouteProps {
  children: ReactNode;
  requireProfile?: boolean;
}

export default function ProtectedRoute({ children, requireProfile = false }: ProtectedRouteProps) {
  const navigate = useNavigate();
  const { user, loading: authLoading } = useAuth();
  const [profileChecked, setProfileChecked] = useState(!requireProfile);
  const [hasProfile, setHasProfile] = useState(false);

  // Handle auth redirect
  useEffect(() => {
    if (!authLoading && !user) {
      navigate('/login', { replace: true });
    }
  }, [user, authLoading, navigate]);

  // Handle profile check if required
  useEffect(() => {
    async function checkProfile() {
      if (!requireProfile || !user) return;

      try {
        const { data, error } = await supabase
          .from('users')
          .select('id')
          .eq('id', user.id)
          .single();

        if (error && error.code === 'PGRST116') {
          // No profile found
          setHasProfile(false);
          navigate('/onboarding/profile', { replace: true });
        } else if (data) {
          setHasProfile(true);
        } else if (error) {
          console.error('Error checking profile:', error);
          navigate('/onboarding/profile', { replace: true });
        }
      } catch (err) {
        console.error('Error checking profile:', err);
        navigate('/onboarding/profile', { replace: true });
      } finally {
        setProfileChecked(true);
      }
    }

    if (user && requireProfile && !profileChecked) {
      checkProfile();
    }
  }, [user, requireProfile, profileChecked, navigate]);

  // Show loading while auth is loading
  if (authLoading) {
    return <Loading fullScreen />;
  }

  // No user - will redirect
  if (!user) {
    return null;
  }

  // Still checking profile
  if (requireProfile && !profileChecked) {
    return <Loading fullScreen />;
  }

  // Profile required but not found - will redirect
  if (requireProfile && !hasProfile) {
    return null;
  }

  return <>{children}</>;
}
