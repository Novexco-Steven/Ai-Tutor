import { useState } from 'react';
import { useNavigate, Link } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { Eye, EyeOff, Check, X } from 'lucide-react';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Input from '../shared/Input';
import { useAuth } from '@/contexts/AuthContext';

const signupSchema = z.object({
  name: z.string().min(1, 'Name is required').max(50, 'Name must be 50 characters or less'),
  email: z.string().email('Please enter a valid email address'),
  password: z
    .string()
    .min(8, 'Password must be at least 8 characters')
    .regex(/[a-z]/, 'Password must contain a lowercase letter')
    .regex(/[A-Z]/, 'Password must contain an uppercase letter')
    .regex(/[0-9]/, 'Password must contain a number'),
  confirmPassword: z.string(),
  gradeLevel: z.number().min(1).max(12).optional(),
}).refine((data) => data.password === data.confirmPassword, {
  message: "Passwords don't match",
  path: ['confirmPassword'],
});

type SignupFormData = z.infer<typeof signupSchema>;

const passwordRequirements = [
  { regex: /.{8,}/, label: 'At least 8 characters' },
  { regex: /[a-z]/, label: 'One lowercase letter' },
  { regex: /[A-Z]/, label: 'One uppercase letter' },
  { regex: /[0-9]/, label: 'One number' },
];

export default function Signup() {
  const navigate = useNavigate();
  const { user, signUpWithEmail, signInWithGoogle } = useAuth();
  const [loading, setLoading] = useState(false);
  const [googleLoading, setGoogleLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [showPassword, setShowPassword] = useState(false);
  const [showConfirmPassword, setShowConfirmPassword] = useState(false);
  const [verificationSent, setVerificationSent] = useState(false);

  const {
    register,
    handleSubmit,
    watch,
    formState: { errors },
  } = useForm<SignupFormData>({
    resolver: zodResolver(signupSchema),
    mode: 'onChange',
  });

  const password = watch('password', '');

  // If already logged in, redirect
  if (user) {
    navigate('/auth/callback');
    return null;
  }

  const onSubmit = async (data: SignupFormData) => {
    setLoading(true);
    setError(null);

    const result = await signUpWithEmail(data.email, data.password, {
      name: data.name,
      grade_level: data.gradeLevel,
    });

    if (result.error) {
      setError(result.error);
      setLoading(false);
      return;
    }

    if (result.needsVerification) {
      setVerificationSent(true);
    } else {
      navigate('/auth/callback');
    }

    setLoading(false);
  };

  const handleGoogleSignIn = async () => {
    setGoogleLoading(true);
    setError(null);

    try {
      await signInWithGoogle();
    } catch (err) {
      setError('Failed to sign in with Google. Please try again.');
      console.error('Google sign-in error:', err);
      setGoogleLoading(false);
    }
  };

  if (verificationSent) {
    return (
      <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
        <Card className="w-full max-w-md animate-fade-in text-center">
          <div className="w-16 h-16 bg-green-100 dark:bg-green-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
            <Check className="w-8 h-8 text-green-600 dark:text-green-400" />
          </div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
            Check your email
          </h1>
          <p className="text-gray-600 dark:text-gray-300 mb-6">
            We've sent a verification link to your email address. Please click the link to verify your account.
          </p>
          <Link to="/login">
            <Button variant="secondary" fullWidth>
              Back to Login
            </Button>
          </Link>
        </Card>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
      <Card className="w-full max-w-md animate-fade-in">
        <div className="text-center mb-6">
          <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-2">
            Create your account
          </h1>
          <p className="text-gray-600 dark:text-gray-300">
            Join Tulomi and start learning today
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
          <Input
            label="Full Name"
            type="text"
            placeholder="Enter your name"
            autoComplete="name"
            error={errors.name?.message}
            {...register('name')}
          />

          <Input
            label="Email"
            type="email"
            placeholder="Enter your email"
            autoComplete="email"
            error={errors.email?.message}
            {...register('email')}
          />

          <div className="relative">
            <Input
              label="Password"
              type={showPassword ? 'text' : 'password'}
              placeholder="Create a password"
              autoComplete="new-password"
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
              label="Confirm Password"
              type={showConfirmPassword ? 'text' : 'password'}
              placeholder="Confirm your password"
              autoComplete="new-password"
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

          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Grade Level (Optional)
            </label>
            <select
              {...register('gradeLevel', {
                setValueAs: (v) => v === '' ? undefined : parseInt(v, 10)
              })}
              className="input w-full"
            >
              <option value="">Select grade level</option>
              {[...Array(12)].map((_, i) => (
                <option key={i + 1} value={i + 1}>
                  Grade {i + 1}
                </option>
              ))}
            </select>
          </div>

          <Button type="submit" fullWidth loading={loading} size="lg">
            Create Account
          </Button>
        </form>

        <div className="my-6 flex items-center">
          <div className="flex-1 border-t border-gray-200 dark:border-gray-700" />
          <span className="px-4 text-sm text-gray-500 dark:text-gray-400">OR</span>
          <div className="flex-1 border-t border-gray-200 dark:border-gray-700" />
        </div>

        <Button
          onClick={handleGoogleSignIn}
          variant="secondary"
          size="lg"
          fullWidth
          loading={googleLoading}
          className="flex items-center justify-center gap-3 bg-white dark:bg-gray-800 border-2 border-gray-200 dark:border-gray-600 hover:bg-gray-50 dark:hover:bg-gray-700"
        >
          <svg className="w-5 h-5" viewBox="0 0 24 24">
            <path
              fill="#4285F4"
              d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"
            />
            <path
              fill="#34A853"
              d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"
            />
            <path
              fill="#FBBC05"
              d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"
            />
            <path
              fill="#EA4335"
              d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"
            />
          </svg>
          Sign up with Google
        </Button>

        <div className="mt-6 text-center">
          <p className="text-sm text-gray-600 dark:text-gray-400">
            Already have an account?{' '}
            <Link to="/login" className="text-primary-600 hover:text-primary-700 font-medium">
              Sign in
            </Link>
          </p>
        </div>

        <div className="mt-4 text-center">
          <p className="text-xs text-gray-500 dark:text-gray-400">
            By creating an account, you agree to our{' '}
            <a href="#" className="text-primary-600 hover:underline">Terms of Service</a>{' '}
            and{' '}
            <a href="#" className="text-primary-600 hover:underline">Privacy Policy</a>
          </p>
        </div>
      </Card>
    </div>
  );
}
