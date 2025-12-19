import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import Button from '../shared/Button';
import Input from '../shared/Input';
import Card from '../shared/Card';
import { ageToGradeLevel } from '@/utils/helpers';
import { storage } from '@/utils/helpers';

const profileSchema = z.object({
  name: z.string().min(1, 'Name is required').max(50, 'Name is too long'),
  age: z.number().min(5, 'Age must be at least 5').max(18, 'Age must be 18 or under').optional(),
});

type ProfileForm = z.infer<typeof profileSchema>;

export default function ProfileSetup() {
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<ProfileForm>({
    resolver: zodResolver(profileSchema),
  });

  const onSubmit = async (data: ProfileForm) => {
    setLoading(true);

    try {
      const gradeLevel = data.age ? ageToGradeLevel(data.age) : undefined;

      // Store onboarding data in localStorage temporarily
      const onboardingData = {
        name: data.name,
        age: data.age,
        gradeLevel,
      };

      storage.set('learnlit_onboarding', onboardingData);

      // Navigate to interests selection
      navigate('/onboarding/interests');
    } catch (error) {
      console.error('Error saving profile:', error);
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-gradient-primary flex items-center justify-center p-4">
      <Card className="w-full max-w-md animate-fade-in">
        <div className="text-center mb-8">
          <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-2">
            Welcome to LearnLit! 🎉
          </h1>
          <p className="text-gray-600 dark:text-gray-300">
            Let's get to know you a little better
          </p>
        </div>

        <form onSubmit={handleSubmit(onSubmit)} className="space-y-6">
          <Input
            label="What's your name?"
            placeholder="Enter your name"
            {...register('name')}
            error={errors.name?.message}
            autoFocus
          />

          <Input
            label="How old are you? (Optional)"
            type="number"
            placeholder="Your age"
            {...register('age', { valueAsNumber: true })}
            error={errors.age?.message}
            min={5}
            max={18}
          />

          <div className="pt-4">
            <Button
              type="submit"
              variant="primary"
              size="lg"
              fullWidth
              loading={loading}
            >
              Continue
            </Button>
          </div>
        </form>

        <div className="mt-6 text-center">
          <p className="text-sm text-gray-500 dark:text-gray-400">
            Step 1 of 4
          </p>
          <div className="mt-2 w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
            <div className="bg-primary-600 h-2 rounded-full w-1/4 transition-all duration-300" />
          </div>
        </div>
      </Card>
    </div>
  );
}
