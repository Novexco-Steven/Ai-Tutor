import { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { useAuth } from '@/contexts/AuthContext';
import { db, supabase } from '@/services/supabase';
import { storage, cn } from '@/utils/helpers';
import { getDefaultDifficultyForGrade } from '@/utils/difficulty';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import Button from '../shared/Button';
import { SkipForward } from 'lucide-react';

// Difficulty options for users to self-select
const difficultyOptions = [
  { level: 3, label: 'Just starting out', description: 'I\'m new to this subject' },
  { level: 5, label: 'Some experience', description: 'I know the basics' },
  { level: 7, label: 'Comfortable', description: 'I\'m ready for a challenge' },
];

export default function DiagnosticQuiz() {
  const navigate = useNavigate();
  const { user } = useAuth();
  const [submitting, _setSubmitting] = useState(false);
  const [selectedDifficulty, setSelectedDifficulty] = useState<number | null>(null);

  const handleSkip = () => {
    // Use grade-based default difficulty
    const onboardingData = storage.get<any>('tulomi_onboarding', {});
    const gradeLevel = onboardingData.gradeLevel || 5;
    const defaultDifficulty = getDefaultDifficultyForGrade(gradeLevel);
    completeOnboarding(defaultDifficulty);
  };

  const handleSelectDifficulty = (level: number) => {
    setSelectedDifficulty(level);
  };

  const handleContinue = () => {
    if (selectedDifficulty !== null) {
      completeOnboarding(selectedDifficulty);
    }
  };

  const completeOnboarding = async (difficulty: number) => {
    const onboardingData = storage.get<any>('tulomi_onboarding', {});

    try {
      // Create user profile if authenticated
      if (user) {
        const { error } = await supabase.from('users').insert({
          id: user.id,
          email: user.email,
          name: onboardingData.name,
          age: onboardingData.age,
          grade_level: onboardingData.gradeLevel,
          primary_interest: onboardingData.primaryInterest,
          difficulty_level: difficulty,
        });

        if (error) throw error;

        // Add user interests
        if (onboardingData.interests) {
          for (const interestId of onboardingData.interests) {
            await db.addUserInterest(
              user.id,
              interestId,
              interestId === onboardingData.primaryInterest
            );
          }
        }
      }

      // Mark onboarding as complete (preserve the data for Dashboard to use)
      storage.set('tulomi_onboarding', {
        ...onboardingData,
        completed: true,
        difficulty_level: difficulty,
      });

      // Navigate to home
      navigate('/');
    } catch (error) {
      console.error('Error completing onboarding:', error);
      // Still mark as complete and navigate to home even if there's an error saving to DB
      storage.set('tulomi_onboarding', {
        ...onboardingData,
        completed: true,
        difficulty_level: difficulty,
      });
      navigate('/');
    }
  };

  if (submitting) {
    return <Loading fullScreen message="Setting up your account..." />;
  }

  return (
    <div className="min-h-screen bg-gradient-primary p-4 py-8">
      <div className="container-app max-w-2xl">
        <Card className="animate-fade-in">
          <div className="text-center mb-8">
            <h1 className="text-2xl font-bold text-gray-900 dark:text-white mb-2">
              How would you describe your level?
            </h1>
            <p className="text-gray-600 dark:text-gray-300">
              Don't worry - we'll adjust as you learn!
            </p>
          </div>

          <div className="space-y-3 mb-8">
            {difficultyOptions.map((option) => (
              <button
                key={option.level}
                onClick={() => handleSelectDifficulty(option.level)}
                className={cn(
                  'w-full p-4 rounded-xl border-2 text-left transition-all duration-200',
                  selectedDifficulty === option.level
                    ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20'
                    : 'border-gray-200 dark:border-gray-700 hover:border-gray-300 dark:hover:border-gray-600'
                )}
              >
                <div className="font-medium text-gray-900 dark:text-white">
                  {option.label}
                </div>
                <div className="text-sm text-gray-500 dark:text-gray-400">
                  {option.description}
                </div>
              </button>
            ))}
          </div>

          <div className="space-y-3">
            <Button
              onClick={handleContinue}
              disabled={selectedDifficulty === null}
              variant="primary"
              size="lg"
              fullWidth
            >
              Continue
            </Button>

            <button
              onClick={handleSkip}
              className="w-full flex items-center justify-center gap-2 py-3 text-gray-500 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-200 transition-colors"
            >
              <SkipForward className="w-4 h-4" />
              Skip - decide for me
            </button>
          </div>

          <div className="mt-8 text-center">
            <p className="text-sm text-gray-500 dark:text-gray-400">
              Step 4 of 4 - Almost done!
            </p>
            <div className="mt-2 w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
              <div className="bg-primary-600 h-2 rounded-full w-full transition-all duration-300" />
            </div>
          </div>
        </Card>
      </div>
    </div>
  );
}
