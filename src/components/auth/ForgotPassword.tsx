import { useState } from 'react';
import { Link } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import { ArrowLeft, Mail } from 'lucide-react';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Input from '../shared/Input';
import { useAuth } from '@/contexts/AuthContext';

const forgotPasswordSchema = z.object({
  email: z.string().email('Please enter a valid email address'),
});

type ForgotPasswordFormData = z.infer<typeof forgotPasswordSchema>;

export default function ForgotPassword() {
  const { resetPassword } = useAuth();
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [emailSent, setEmailSent] = useState(false);

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<ForgotPasswordFormData>({
    resolver: zodResolver(forgotPasswordSchema),
  });

  const onSubmit = async (data: ForgotPasswordFormData) => {
    setLoading(true);
    setError(null);

    const result = await resetPassword(data.email);

    if (result.error) {
      setError(result.error);
      setLoading(false);
      return;
    }

    setEmailSent(true);
    setLoading(false);
  };

  if (emailSent) {
    return (
      <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
        <Card className="w-full max-w-md animate-fade-in text-center">
          <div className="w-16 h-16 bg-primary-100 dark:bg-primary-900/30 rounded-full flex items-center justify-center mx-auto mb-6">
            <Mail className="w-8 h-8 text-primary-600 dark:text-primary-400" />
          </div>
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
            Check your email
          </h1>
          <p className="text-gray-600 dark:text-gray-300 mb-6">
            We've sent password reset instructions to your email address. Please check your inbox and follow the link.
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
        <Link
          to="/login"
          className="inline-flex items-center gap-2 text-gray-600 dark:text-gray-400 hover:text-gray-900 dark:hover:text-white mb-6"
        >
          <ArrowLeft className="w-4 h-4" />
          Back to login
        </Link>

        <div className="text-center mb-6">
          <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
            Forgot your password?
          </h1>
          <p className="text-gray-600 dark:text-gray-300">
            No worries! Enter your email and we'll send you reset instructions.
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
            label="Email"
            type="email"
            placeholder="Enter your email"
            error={errors.email?.message}
            {...register('email')}
          />

          <Button type="submit" fullWidth loading={loading} size="lg">
            Send Reset Link
          </Button>
        </form>
      </Card>
    </div>
  );
}
