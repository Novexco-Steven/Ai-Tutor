import { useState, useEffect } from 'react';
import { useUser } from '@/contexts/UserContext';
import { isUserAdmin, getAdminUser } from '@/services/promptAdmin';
import { supabase } from '@/services/supabase';

export interface UserRole {
  isAdmin: boolean;
  isParent: boolean;
  adminRole: 'admin' | 'super_admin' | null;
  loading: boolean;
}

export function useUserRole(): UserRole {
  const { profile } = useUser();
  const [isAdmin, setIsAdmin] = useState(false);
  const [isParent, setIsParent] = useState(false);
  const [adminRole, setAdminRole] = useState<'admin' | 'super_admin' | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    async function checkRoles() {
      if (!profile?.id) {
        setLoading(false);
        return;
      }

      setLoading(true);

      try {
        // Check admin status
        const adminStatus = await isUserAdmin(profile.id);
        setIsAdmin(adminStatus);

        if (adminStatus) {
          const adminUser = await getAdminUser(profile.id);
          setAdminRole(adminUser?.role as 'admin' | 'super_admin' | null);
        }

        // Check parent status (has children linked)
        const { data: children } = await supabase
          .from('parent_children')
          .select('id')
          .eq('parent_id', profile.id)
          .limit(1);

        setIsParent((children?.length ?? 0) > 0);
      } catch (error) {
        console.error('Error checking user roles:', error);
      } finally {
        setLoading(false);
      }
    }

    checkRoles();
  }, [profile?.id]);

  return {
    isAdmin,
    isParent,
    adminRole,
    loading,
  };
}
