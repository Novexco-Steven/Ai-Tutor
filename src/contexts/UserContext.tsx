import { createContext, useContext, useEffect, useState, ReactNode } from 'react';
import { useAuth } from './AuthContext';
import { db } from '@/services/supabase';
import type { User, UserInterest, UserProgress } from '@/types';

interface UserContextType {
  profile: User | null;
  interests: UserInterest[];
  progress: UserProgress[];
  loading: boolean;
  error: string | null;
  refreshProfile: () => Promise<void>;
  refreshInterests: () => Promise<void>;
  refreshProgress: (subjectId?: string) => Promise<void>;
  updateProfile: (updates: Partial<User>) => Promise<void>;
  addInterest: (interestId: string, isPrimary?: boolean) => Promise<void>;
  removeInterest: (interestId: string) => Promise<void>;
}

const UserContext = createContext<UserContextType | undefined>(undefined);

export function UserProvider({ children }: { children: ReactNode }) {
  const { user } = useAuth();
  const [profile, setProfile] = useState<User | null>(null);
  const [interests, setInterests] = useState<UserInterest[]>([]);
  const [progress, setProgress] = useState<UserProgress[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState<string | null>(null);

  const refreshProfile = async () => {
    if (!user) return;

    try {
      setLoading(true);
      setError(null);
      const data = await db.getUser(user.id);
      setProfile(data);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Failed to load profile');
      console.error('Error loading profile:', err);
    } finally {
      setLoading(false);
    }
  };

  const refreshInterests = async () => {
    if (!user) return;

    try {
      const data = await db.getUserInterests(user.id);
      setInterests(data);
    } catch (err) {
      console.error('Error loading interests:', err);
    }
  };

  const refreshProgress = async (subjectId?: string) => {
    if (!user) return;

    try {
      const data = await db.getUserProgress(user.id, subjectId);
      setProgress(data);
    } catch (err) {
      console.error('Error loading progress:', err);
    }
  };

  const updateProfile = async (updates: Partial<User>) => {
    if (!user) return;

    try {
      const updated = await db.updateUser(user.id, updates);
      setProfile(updated);
    } catch (err) {
      throw err;
    }
  };

  const addInterest = async (interestId: string, isPrimary = false) => {
    if (!user) return;

    try {
      await db.addUserInterest(user.id, interestId, isPrimary);
      await refreshInterests();
    } catch (err) {
      throw err;
    }
  };

  const removeInterest = async (interestId: string) => {
    if (!user) return;

    try {
      await db.removeUserInterest(user.id, interestId);
      await refreshInterests();
    } catch (err) {
      throw err;
    }
  };

  useEffect(() => {
    if (user) {
      refreshProfile();
      refreshInterests();
      refreshProgress();
    } else {
      setProfile(null);
      setInterests([]);
      setProgress([]);
      setLoading(false);
    }
  }, [user]);

  const value = {
    profile,
    interests,
    progress,
    loading,
    error,
    refreshProfile,
    refreshInterests,
    refreshProgress,
    updateProfile,
    addInterest,
    removeInterest,
  };

  return <UserContext.Provider value={value}>{children}</UserContext.Provider>;
}

export function useUser() {
  const context = useContext(UserContext);
  if (context === undefined) {
    throw new Error('useUser must be used within a UserProvider');
  }
  return context;
}
