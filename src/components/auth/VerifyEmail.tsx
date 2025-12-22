import { useEffect, useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { Check, X, Loader2 } from 'lucide-react';
import Button from '../shared/Button';
import Card from '../shared/Card';
import { supabase } from '@/services/supabase';

export default function VerifyEmail() {
  const navigate = useNavigate();
  const [status, setStatus] = useState<'loading' | 'success' | 'error'>('loading');
  const [errorMessage, setErrorMessage] = useState<string>('');

  useEffect(() => {
    const verifyEmail = async () => {
      try {
        // Check if there's an active session (verification successful)
        const { data: { session }, error } = await supabase.auth.getSession();

        if (error) {
          setErrorMessage(error.message);
          setStatus('error');
          return;
        }

        if (session) {
          setStatus('success');
          // Redirect to callback which will handle onboarding/dashboard routing
          setTimeout(() => {
            navigate('/auth/callback');
          }, 2000);
        } else {
          setErrorMessage('Email verification failed. The link may have expired.');
          setStatus('error');
        }
      } catch (err) {
        console.error('Verification error:', err);
        setErrorMessage('An unexpected error occurred during verification.');
        setStatus('error');
      }
    };

    verifyEmail();
  }, [navigate]);

  return (
    <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
      <Card className="w-full max-w-md animate-fade-in text-center">
        {status === 'loading' && (
          <>
            <div className="w-16 h-16 bg-primary-100 dark:bg-primary-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
              <Loader2 className="w-8 h-8 text-primary-600 dark:text-primary-400 animate-spin" />
            </div>
            <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
              Verifying your email...
            </h1>
            <p className="text-gray-600 dark:text-gray-300">
              Please wait while we verify your email address.
            </p>
          </>
        )}

        {status === 'success' && (
          <>
            <div className="w-16 h-16 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
              <Check className="w-8 h-8 text-green-600 dark:text-green-400" />
            </div>
            <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
              Email verified!
            </h1>
            <p className="text-gray-600 dark:text-gray-300">
              Your email has been verified successfully. Redirecting you now...
            </p>
          </>
        )}

        {status === 'error' && (
          <>
            <div className="w-16 h-16 bg-red-100 dark:bg-red-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
              <X className="w-8 h-8 text-red-600 dark:text-red-400" />
            </div>
            <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
              Verification Failed
            </h1>
            <p className="text-gray-600 dark:text-gray-300 mb-6">
              {errorMessage}
            </p>
            <div className="space-y-3">
              <Link to="/signup">
                <Button fullWidth>
                  Try Again
                </Button>
              </Link>
              <Link to="/login">
                <Button variant="secondary" fullWidth>
                  Back to Login
                </Button>
              </Link>
            </div>
          </>
        )}
      </Card>
    </div>
  );
}
