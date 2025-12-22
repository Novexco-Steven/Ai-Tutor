import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import { z } from 'zod';
import Button from '../shared/Button';
import Input from '../shared/Input';
import Card from '../shared/Card';
import Illustration from '../shared/Illustration';
import { storage, cn } from '@/utils/helpers';
import { useAuth } from '@/contexts/AuthContext';

// Grade level options - works for kids AND adults
const gradeLevels = [
  { value: 0, label: 'Pre-K / Kindergarten', description: 'Ages 4-5' },
  { value: 1, label: 'Grade 1', description: 'Ages 5-6' },
  { value: 2, label: 'Grade 2', description: 'Ages 6-7' },
  { value: 3, label: 'Grade 3', description: 'Ages 7-8' },
  { value: 4, label: 'Grade 4', description: 'Ages 8-9' },
  { value: 5, label: 'Grade 5', description: 'Ages 9-10' },
  { value: 6, label: 'Grade 6', description: 'Ages 10-11' },
  { value: 7, label: 'Grade 7', description: 'Ages 11-12' },
  { value: 8, label: 'Grade 8', description: 'Ages 12-13' },
  { value: 9, label: 'High School (9-10)', description: 'Ages 13-15' },
  { value: 11, label: 'High School (11-12)', description: 'Ages 15-18' },
  { value: 13, label: 'Adult Learner', description: 'College & beyond' },
];

const profileSchema = z.object({
  name: z.string().min(1, 'Name is required').max(50, 'Name is too long'),
});

type ProfileForm = z.infer<typeof profileSchema>;

export default function ProfileSetup() {
  const navigate = useNavigate();
  const { user } = useAuth();
  const [loading, setLoading] = useState(false);
  const [selectedGrade, setSelectedGrade] = useState<number | null>(null);

  // Get name and grade from user metadata (set during signup)
  const userName = user?.user_metadata?.name || '';
  const userGrade = user?.user_metadata?.grade_level;

  // Initialize selected grade from signup if available
  useEffect(() => {
    if (userGrade !== undefined && selectedGrade === null) {
      setSelectedGrade(userGrade);
    }
  }, [userGrade, selectedGrade]);

  const {
    register,
    handleSubmit,
    formState: { errors },
  } = useForm<ProfileForm>({
    resolver: zodResolver(profileSchema),
    defaultValues: {
      name: userName,
    },
  });

  const onSubmit = async (data: ProfileForm) => {
    setLoading(true);

    try {
      // Store onboarding data in localStorage temporarily
      const onboardingData = {
        name: data.name,
        gradeLevel: selectedGrade ?? 5, // Default to grade 5 if not selected
      };

      storage.set('tulomi_onboarding', onboardingData);

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
        <div className="text-center mb-6">
          <Illustration type="tutor-welcome" size="md" className="mx-auto mb-4" />
          <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-2">
            Welcome to Tulomi!
          </h1>
          <p className="text-gray-600 dark:text-gray-300">
            Let's personalize your learning experience
          </p>
        </div>

        <form onSubmit={handleSubmit(onSubmit)} className="space-y-6">
          <Input
            label="What's your name?"
            placeholder="Enter your name"
            autoComplete="name"
            {...register('name')}
            error={errors.name?.message}
            autoFocus
          />

          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
              What level are you learning at?
            </label>
            <div className="grid grid-cols-2 gap-2 max-h-64 overflow-y-auto pr-1">
              {gradeLevels.map((grade) => (
                <button
                  key={grade.value}
                  type="button"
                  onClick={() => setSelectedGrade(grade.value)}
                  className={cn(
                    'p-3 rounded-lg border-2 text-left transition-all duration-200',
                    selectedGrade === grade.value
                      ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20'
                      : 'border-gray-200 dark:border-gray-700 hover:border-gray-300 dark:hover:border-gray-600'
                  )}
                >
                  <div className="font-medium text-sm text-gray-900 dark:text-white">
                    {grade.label}
                  </div>
                  <div className="text-xs text-gray-500 dark:text-gray-400">
                    {grade.description}
                  </div>
                </button>
              ))}
            </div>
          </div>

          <div className="pt-2">
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
