import { createContext, useContext, useEffect, useState, ReactNode } from 'react';
import { User as SupabaseUser } from '@supabase/supabase-js';
import { supabase, getCurrentUser } from '@/services/supabase';

interface SignUpMetadata {
  name?: string;
  grade_level?: number;
}

interface AuthResult {
  error: string | null;
}

interface SignUpResult extends AuthResult {
  needsVerification: boolean;
}

interface AuthContextType {
  user: SupabaseUser | null;
  loading: boolean;
  signInWithGoogle: () => Promise<void>;
  signInWithEmail: (email: string, password: string) => Promise<AuthResult>;
  signUpWithEmail: (email: string, password: string, metadata?: SignUpMetadata) => Promise<SignUpResult>;
  resetPassword: (email: string) => Promise<AuthResult>;
  signOut: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: ReactNode }) {
  const [user, setUser] = useState<SupabaseUser | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    // Check active session
    getCurrentUser().then(user => {
      setUser(user);
      setLoading(false);
    });

    // Listen for auth changes
    const { data: { subscription } } = supabase.auth.onAuthStateChange((_event, session) => {
      setUser(session?.user ?? null);
      setLoading(false);
    });

    return () => {
      subscription.unsubscribe();
    };
  }, []);

  const signInWithGoogle = async () => {
    const { error } = await supabase.auth.signInWithOAuth({
      provider: 'google',
      options: {
        redirectTo: `${window.location.origin}/auth/callback`,
      },
    });
    if (error) throw error;
  };

  const signInWithEmail = async (email: string, password: string): Promise<AuthResult> => {
    const { error } = await supabase.auth.signInWithPassword({
      email,
      password,
    });

    if (error) {
      if (error.message.includes('Email not confirmed')) {
        return { error: 'Please verify your email before signing in.' };
      }
      if (error.message.includes('Invalid login credentials')) {
        return { error: 'Invalid email or password.' };
      }
      return { error: error.message };
    }

    return { error: null };
  };

  const signUpWithEmail = async (
    email: string,
    password: string,
    metadata?: SignUpMetadata
  ): Promise<SignUpResult> => {
    const { data, error } = await supabase.auth.signUp({
      email,
      password,
      options: {
        emailRedirectTo: `${window.location.origin}/auth/callback`,
        data: metadata,
      },
    });

    if (error) {
      if (error.message.includes('already registered')) {
        return { error: 'An account with this email already exists.', needsVerification: false };
      }
      return { error: error.message, needsVerification: false };
    }

    // Check if email confirmation is required
    const needsVerification = !data.session && !!data.user;

    return { error: null, needsVerification };
  };

  const resetPassword = async (email: string): Promise<AuthResult> => {
    const { error } = await supabase.auth.resetPasswordForEmail(email, {
      redirectTo: `${window.location.origin}/auth/reset-password`,
    });

    if (error) {
      return { error: error.message };
    }

    return { error: null };
  };

  const signOut = async () => {
    const { error } = await supabase.auth.signOut();
    if (error) throw error;
  };

  const value = {
    user,
    loading,
    signInWithGoogle,
    signInWithEmail,
    signUpWithEmail,
    resetPassword,
    signOut,
  };

  return <AuthContext.Provider value={value}>{children}</AuthContext.Provider>;
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (context === undefined) {
    throw new Error('useAuth must be used within an AuthProvider');
  }
  return context;
}
