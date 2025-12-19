import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { db } from '@/services/supabase';
import { storage } from '@/utils/helpers';
import Button from '../shared/Button';
import Card from '../shared/Card';
import Loading from '../shared/Loading';
import type { Subject } from '@/types';
import { Check } from 'lucide-react';
import { cn } from '@/utils/helpers';

export default function SubjectPicker() {
  const navigate = useNavigate();
  const [subjects, setSubjects] = useState<Subject[]>([]);
  const [selectedSubject, setSelectedSubject] = useState<string>('');
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    loadSubjects();
  }, []);

  const loadSubjects = async () => {
    try {
      const data = await db.getAllSubjects();
      setSubjects(data);
    } catch (error) {
      console.error('Error loading subjects:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleContinue = async () => {
    if (!selectedSubject) {
      alert('Please select a subject');
      return;
    }

    setSaving(true);

    try {
      const onboardingData = storage.get('learnlit_onboarding', {});
      storage.set('learnlit_onboarding', {
        ...onboardingData,
        subject: selectedSubject,
      });

      navigate('/onboarding/diagnostic');
    } catch (error) {
      console.error('Error saving subject:', error);
    } finally {
      setSaving(false);
    }
  };

  if (loading) {
    return <Loading fullScreen message="Loading subjects..." />;
  }

  return (
    <div className="min-h-screen bg-gradient-primary p-4 py-8">
      <div className="container-app max-w-3xl">
        <Card className="animate-fade-in">
          <div className="text-center mb-8">
            <h1 className="text-3xl font-bold text-gray-900 dark:text-white mb-2">
              What do you want to learn? 📖
            </h1>
            <p className="text-gray-600 dark:text-gray-300">
              Choose a subject to get started. You can explore others later!
            </p>
          </div>

          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4 mb-8">
            {subjects.map(subject => {
              const isSelected = selectedSubject === subject.id;

              return (
                <button
                  key={subject.id}
                  onClick={() => setSelectedSubject(subject.id)}
                  className={cn(
                    'relative p-6 rounded-2xl border-2 transition-all duration-200 text-left',
                    isSelected
                      ? 'border-primary-600 shadow-lg scale-105'
                      : 'border-gray-200 dark:border-gray-700 hover:border-gray-300 dark:hover:border-gray-600'
                  )}
                  style={{
                    backgroundColor: isSelected
                      ? `${subject.color}15`
                      : undefined
                  }}
                >
                  {isSelected && (
                    <div className="absolute top-4 right-4">
                      <Check className="w-6 h-6 text-primary-600" />
                    </div>
                  )}

                  <div className="flex items-start gap-4">
                    <div
                      className="text-4xl p-3 rounded-xl"
                      style={{ backgroundColor: `${subject.color}20` }}
                    >
                      {subject.icon}
                    </div>
                    <div className="flex-1">
                      <h3
                        className="text-xl font-bold mb-1"
                        style={{ color: isSelected ? subject.color : undefined }}
                      >
                        {subject.name}
                      </h3>
                      <p className="text-sm text-gray-600 dark:text-gray-300">
                        {subject.description}
                      </p>
                    </div>
                  </div>
                </button>
              );
            })}
          </div>

          <div className="flex gap-4">
            <Button
              variant="secondary"
              size="lg"
              onClick={() => navigate('/onboarding/interests')}
            >
              Back
            </Button>
            <Button
              variant="primary"
              size="lg"
              fullWidth
              onClick={handleContinue}
              loading={saving}
              disabled={!selectedSubject}
            >
              Continue
            </Button>
          </div>

          <div className="mt-6 text-center">
            <p className="text-sm text-gray-500 dark:text-gray-400">
              Step 3 of 4
            </p>
            <div className="mt-2 w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
              <div className="bg-primary-600 h-2 rounded-full w-3/4 transition-all duration-300" />
            </div>
          </div>
        </Card>
      </div>
    </div>
  );
}
