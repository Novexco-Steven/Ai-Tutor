import { useState, useEffect } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Eye, EyeOff, Check, X } from 'lucide-react';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Input from '../shared/Input';
import { supabase } from '@/services/supabase';

const resetPasswordSchema = z.object({
  password: z
    .string()
    .min(8, 'Password must be at least 8 characters')
    .regex(/[a-z]/, 'Password must contain a lowercase letter')
    .regex(/[A-Z]/, 'Password must contain an uppercase letter')
    .regex(/[0-9]/, 'Password must contain a number'),
  confirmPassword: z.string(),
}).refine((data) => data.password === data.confirmPassword, {
  message: "Passwords don't match",
  path: ['confirmPassword'],
});

type ResetPasswordFormData = z.infer<typeof resetPasswordSchema>;

const passwordRequirements = [
  { regex: /.{8,}/, label: 'At least 8 characters' },
  { regex: /[a-z]/, label: 'One lowercase letter' },
  { regex: /[A-Z]/, label: 'One uppercase letter' },
  { regex: /[0-9]/, label: 'One number' },
];

export default function ResetPassword() {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [success, setSuccess] = useState(false);
  const [isValidSession, setIsValidSession] = useState<boolean | null>(null);

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
  } = useForm<ResetPasswordFormData>({
    resolver: zodResolver(resetPasswordSchema),
    mode: 'onChange',
  });

  const password = watch('password', '');

  useEffect(() => {
    // Check if we have a valid session from the reset link
    const checkSession = async () => {
      const { data: { session } } = await supabase.auth.getSession();
      setIsValidSession(!!session);
    };
    checkSession();
  }, []);

  const onSubmit = async (data: ResetPasswordFormData) => {
    setLoading(true);
    setError(null);

    const { error } = await supabase.auth.updateUser({
      password: data.password,
    });

    if (error) {
      setError(error.message);
      setLoading(false);
      return;
    }

    setSuccess(true);
    setLoading(false);

    // Redirect to dashboard after 2 seconds
    setTimeout(() => {
      navigate('/dashboard');
    }, 2000);
  };

  if (isValidSession === null) {
    return (
      <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
        <Card className="w-full max-w-md animate-fade-in text-center">
          <div className="w-8 h-8 border-2 border-primary-600 border-t-transparent rounded-full animate-spin mx-auto" />
          <p className="mt-4 text-gray-600 dark:text-gray-300">Validating reset link...</p>
        </Card>
      </div>
    );
  }

  if (!isValidSession) {
    return (
      <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
        <Card className="w-full max-w-md animate-fade-in text-center">
          <div className="w-16 h-16 bg-red-100 dark:bg-red-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
            <X className="w-8 h-8 text-red-600 dark:text-red-400" />
          </div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
            Invalid or Expired Link
          </h1>
          <p className="text-gray-600 dark:text-gray-300 mb-6">
            This password reset link is invalid or has expired. Please request a new one.
          </p>
          <Link to="/forgot-password">
            <Button fullWidth>
              Request New Link
            </Button>
          </Link>
        </Card>
      </div>
    );
  }

  if (success) {
    return (
      <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
        <Card className="w-full max-w-md animate-fade-in text-center">
          <div className="w-16 h-16 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
            <Check className="w-8 h-8 text-green-600 dark:text-green-400" />
          </div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
            Password Updated!
          </h1>
          <p className="text-gray-600 dark:text-gray-300">
            Your password has been successfully updated. Redirecting you to your dashboard...
          </p>
        </Card>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
      <Card className="w-full max-w-md animate-fade-in">
        <div className="text-center mb-6">
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
            Reset your password
          </h1>
          <p className="text-gray-600 dark:text-gray-300">
            Enter your new password below.
          </p>
        </div>

        {error && (
          <div className="mb-6 p-4 bg-red-50 dark:bg-red-900/20 border border-red-200 dark:border-red-800 rounded-lg">
            <p className="text-red-600 dark:text-red-400 text-sm text-center">
              {error}
            </p>
          </div>
        )}

        <form onSubmit={handleSubmit(onSubmit)} className="space-y-4">
          <div className="relative">
            <Input
              label="New Password"
              type={showPassword ? 'text' : 'password'}
              placeholder="Enter your new password"
              error={errors.password?.message}
              {...register('password')}
            />
            <button
              type="button"
              onClick={() => setShowPassword(!showPassword)}
              className="absolute right-3 top-8 text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
            >
              {showPassword ? <EyeOff className="w-5 h-5" /> : <Eye className="w-5 h-5" />}
            </button>
          </div>

          {/* Password strength indicator */}
          {password && (
            <div className="space-y-1">
              {passwordRequirements.map((req, index) => (
                <div
                  key={index}
                  className={`flex items-center gap-2 text-sm ${
                    req.regex.test(password)
                      ? 'text-green-600 dark:text-green-400'
                      : 'text-gray-400 dark:text-gray-500'
                  }`}
                >
                  {req.regex.test(password) ? (
                    <Check className="w-4 h-4" />
                  ) : (
                    <X className="w-4 h-4" />
                  )}
                  {req.label}
                </div>
              ))}
            </div>
          )}

          <div className="relative">
            <Input
              label="Confirm New Password"
              type={showConfirmPassword ? 'text' : 'password'}
              placeholder="Confirm your new password"
              error={errors.confirmPassword?.message}
              {...register('confirmPassword')}
            />
            <button
              type="button"
              onClick={() => setShowConfirmPassword(!showConfirmPassword)}
              className="absolute right-3 top-8 text-gray-500 hover:text-gray-700 dark:text-gray-400 dark:hover:text-gray-200"
            >
              {showConfirmPassword ? <EyeOff className="w-5 h-5" /> : <Eye className="w-5 h-5" />}
            </button>
          </div>

          <Button type="submit" fullWidth loading={loading} size="lg">
            Update Password
          </Button>
        </form>
      </Card>
    </div>
  );
}
