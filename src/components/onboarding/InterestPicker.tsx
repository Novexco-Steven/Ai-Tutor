import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { db } from '@/services/supabase';
import { storage } from '@/utils/helpers';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import type { Interest } from '@/types';
import { Check } from 'lucide-react';
import { cn } from '@/utils/helpers';

export default function InterestPicker() {
  const navigate = useNavigate();
  const [interests, setInterests] = useState<Interest[]>([]);
  const [selectedInterests, setSelectedInterests] = useState<string[]>([]);
  const [primaryInterest, setPrimaryInterest] = useState<string>('');
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    loadInterests();
  }, []);

  const loadInterests = async () => {
    try {
      const data = await db.getAllInterests();
      setInterests(data);
    } catch (error) {
      console.error('Error loading interests:', error);
    } finally {
      setLoading(false);
    }
  };

  const toggleInterest = (interestId: string) => {
    if (selectedInterests.includes(interestId)) {
      setSelectedInterests(prev => prev.filter(id => id !== interestId));
      if (primaryInterest === interestId) {
        setPrimaryInterest('');
      }
    } else {
      if (selectedInterests.length < 5) {
        setSelectedInterests(prev => [...prev, interestId]);
        if (!primaryInterest) {
          setPrimaryInterest(interestId);
        }
      }
    }
  };

  const setPrimary = (interestId: string) => {
    if (selectedInterests.includes(interestId)) {
      setPrimaryInterest(interestId);
    }
  };

  const handleContinue = async () => {
    if (selectedInterests.length < 3) {
      alert('Please select at least 3 interests');
      return;
    }

    setSaving(true);

    try {
      const onboardingData = storage.get('learnlit_onboarding', {});
      storage.set('learnlit_onboarding', {
        ...onboardingData,
        interests: selectedInterests,
        primaryInterest: primaryInterest || selectedInterests[0],
      });

      navigate('/onboarding/subject');
    } catch (error) {
      console.error('Error saving interests:', error);
    } finally {
      setSaving(false);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Loading interests..." />;
  }

  // Group interests by category
  const groupedInterests = interests.reduce((acc, interest) => {
    if (!acc[interest.category]) {
      acc[interest.category] = [];
    }
    acc[interest.category].push(interest);
    return acc;
  }, {} as Record<string, Interest[]>);

  return (
    <div className="min-h-screen bg-gradient-primary p-4 py-8">
      <div className="container-app max-w-4xl">
        <Card className="animate-fade-in">
          <div className="text-center mb-8">
            <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-2">
              What do you love? ❤️
            </h1>
            <p className="text-gray-600 dark:text-gray-300">
              Pick 3-5 things you're interested in. We'll use these to make learning fun!
            </p>
            <p className="text-sm text-primary-600 dark:text-primary-400 mt-2">
              {selectedInterests.length} / 5 selected
            </p>
          </div>

          <div className="space-y-6 mb-8">
            {Object.entries(groupedInterests).map(([category, categoryInterests]) => (
              <div key={category}>
                <h3 className="text-lg font-semibold text-gray-700 dark:text-gray-300 mb-3">
                  {category}
                </h3>
                <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3">
                  {categoryInterests.map(interest => {
                    const isSelected = selectedInterests.includes(interest.id);
                    const isPrimary = primaryInterest === interest.id;

                    return (
                      <button
                        key={interest.id}
                        onClick={() => toggleInterest(interest.id)}
                        onDoubleClick={() => setPrimary(interest.id)}
                        className={cn(
                          'relative p-4 rounded-xl border-2 transition-all duration-200 text-center',
                          isSelected
                            ? isPrimary
                              ? 'border-primary-600 bg-primary-50 dark:bg-primary-900/20 shadow-lg scale-105'
                              : 'border-primary-400 bg-primary-50 dark:bg-primary-900/10'
                            : 'border-gray-200 dark:border-gray-700 hover:border-gray-300 dark:hover:border-gray-600'
                        )}
                      >
                        {isSelected && (
                          <div className="absolute top-2 right-2">
                            <Check className={cn(
                              'w-5 h-5',
                              isPrimary ? 'text-primary-600' : 'text-primary-400'
                            )} />
                          </div>
                        )}
                        <div className="text-2xl mb-2">{interest.icon_url || '📚'}</div>
                        <div className={cn(
                          'text-sm font-medium',
                          isSelected ? 'text-primary-700 dark:text-primary-300' : 'text-gray-700 dark:text-gray-300'
                        )}>
                          {interest.name}
                        </div>
                        {isPrimary && (
                          <div className="text-xs text-primary-600 dark:text-primary-400 mt-1">
                            ⭐ Primary
                          </div>
                        )}
                      </button>
                    );
                  })}
                </div>
              </div>
            ))}
          </div>

          {selectedInterests.length > 0 && (
            <div className="bg-blue-50 dark:bg-blue-900/20 p-4 rounded-lg mb-6">
              <p className="text-sm text-blue-800 dark:text-blue-300">
                💡 <strong>Tip:</strong> Double-click an interest to make it your primary choice!
                {primaryInterest && ` Your primary interest is: ${interests.find(i => i.id === primaryInterest)?.name}`}
              </p>
            </div>
          )}

          <div className="flex gap-4">
            <Button
              variant="secondary"
              size="lg"
              onClick={() => navigate('/onboarding/profile')}
            >
              Back
            </Button>
            <Button
              variant="primary"
              size="lg"
              fullWidth
              onClick={handleContinue}
              loading={saving}
              disabled={selectedInterests.length < 3}
            >
              Continue
            </Button>
          </div>

          <div className="mt-6 text-center">
            <p className="text-sm text-gray-500 dark:text-gray-400">
              Step 2 of 4
            </p>
            <div className="mt-2 w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
              <div className="bg-primary-600 h-2 rounded-full w-2/4 transition-all duration-300" />
            </div>
          </div>
        </Card>
      </div>
    </div>
  );
}
