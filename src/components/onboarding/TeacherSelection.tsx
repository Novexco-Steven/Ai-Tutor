import { useState } from 'react';
import Card from '../shared/Card';
import Button from '../shared/Button';
import { TEACHER_PERSONAS, TeacherPersona, TeacherGender, TeacherPersonality } from '@/services/prompts';
import { User, Sparkles } from 'lucide-react';
import { cn } from '@/utils/helpers';

interface TeacherSelectionProps {
  onSelect: (teacher: TeacherPersona) => void;
  onSkip?: () => void;
}

export default function TeacherSelection({ onSelect, onSkip }: TeacherSelectionProps) {
  const [selectedGender, setSelectedGender] = useState<TeacherGender | 'all'>('all');
  const [selectedPersonality, setSelectedPersonality] = useState<TeacherPersonality | 'all'>('all');

  const teachers = Object.values(TEACHER_PERSONAS);

  const filteredTeachers = teachers.filter(teacher => {
    const matchesGender = selectedGender === 'all' || teacher.gender === selectedGender;
    const matchesPersonality = selectedPersonality === 'all' || teacher.personality === selectedPersonality;
    return matchesGender && matchesPersonality;
  });

  const personalities: Array<{ value: TeacherPersonality | 'all'; label: string }> = [
    { value: 'all', label: 'All Styles' },
    { value: 'tough', label: 'Tough' },
    { value: 'straightforward', label: 'Straightforward' },
    { value: 'precise', label: 'Precise' },
    { value: 'encouraging', label: 'Encouraging' },
    { value: 'gentle', label: 'Gentle' },
    { value: 'playful', label: 'Playful' },
    { value: 'formal', label: 'Formal' }
  ];

  return (
    <div className="min-h-screen bg-gradient-primary p-4 py-8">
      <div className="container-app max-w-6xl">
        <div className="text-center mb-8 animate-fade-in">
          <Sparkles className="w-16 h-16 text-white mx-auto mb-4" />
          <h1 className="text-4xl font-bold text-white mb-3">Choose Your Teacher</h1>
          <p className="text-xl text-white/90 mb-2">
            Pick a teaching style that works best for you!
          </p>
          <p className="text-white/80">
            Each teacher has their own unique approach to help you learn
          </p>
        </div>

        <Card className="mb-6">
          <div className="space-y-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                Teacher Gender
              </label>
              <div className="flex gap-2 flex-wrap">
                {(['all', 'male', 'female', 'neutral'] as const).map(gender => (
                  <button
                    key={gender}
                    onClick={() => setSelectedGender(gender)}
                    className={cn(
                      'px-4 py-2 rounded-lg font-medium transition-all',
                      selectedGender === gender
                        ? 'bg-primary-600 text-white shadow-lg'
                        : 'bg-gray-100 text-gray-700 hover:bg-gray-200 dark:bg-gray-700 dark:text-gray-300'
                    )}
                  >
                    {gender === 'all' ? 'All' : gender.charAt(0).toUpperCase() + gender.slice(1)}
                  </button>
                ))}
              </div>
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-2">
                Teaching Style
              </label>
              <div className="flex gap-2 flex-wrap">
                {personalities.map(({ value, label }) => (
                  <button
                    key={value}
                    onClick={() => setSelectedPersonality(value)}
                    className={cn(
                      'px-4 py-2 rounded-lg font-medium transition-all',
                      selectedPersonality === value
                        ? 'bg-primary-600 text-white shadow-lg'
                        : 'bg-gray-100 text-gray-700 hover:bg-gray-200 dark:bg-gray-700 dark:text-gray-300'
                    )}
                  >
                    {label}
                  </button>
                ))}
              </div>
            </div>
          </div>
        </Card>

        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 mb-6">
          {filteredTeachers.map(teacher => (
            <Card
              key={teacher.id}
              className="hover:shadow-xl transition-all cursor-pointer group hover:scale-105"
              onClick={() => onSelect(teacher)}
            >
              <div className="flex items-start gap-3 mb-3">
                <div className={cn(
                  'w-12 h-12 rounded-full flex items-center justify-center',
                  teacher.personality === 'tough' ? 'bg-red-100 text-red-600' :
                  teacher.personality === 'gentle' ? 'bg-pink-100 text-pink-600' :
                  teacher.personality === 'playful' ? 'bg-yellow-100 text-yellow-600' :
                  teacher.personality === 'formal' ? 'bg-gray-100 text-gray-600' :
                  teacher.personality === 'precise' ? 'bg-blue-100 text-blue-600' :
                  teacher.personality === 'encouraging' ? 'bg-green-100 text-green-600' :
                  'bg-purple-100 text-purple-600'
                )}>
                  <User className="w-6 h-6" />
                </div>
                <div className="flex-1">
                  <h3 className="font-bold text-lg text-gray-900 dark:text-white group-hover:text-primary-600 transition-colors">
                    {teacher.name}
                  </h3>
                  <p className="text-xs text-gray-500 dark:text-gray-400 capitalize">
                    {teacher.personality} • {teacher.gender}
                  </p>
                </div>
              </div>

              <p className="text-sm text-gray-600 dark:text-gray-300 mb-3">
                {teacher.description}
              </p>

              <div className="space-y-2 text-xs text-gray-600 dark:text-gray-400">
                <div>
                  <span className="font-semibold">Style:</span> {teacher.teachingStyle.split('.')[0]}
                </div>
                <div>
                  <span className="font-semibold">Feedback:</span> {teacher.feedbackStyle.split('.')[0]}
                </div>
              </div>

              <Button
                variant="primary"
                size="sm"
                fullWidth
                className="mt-4"
                onClick={() => onSelect(teacher)}
              >
                Choose {teacher.name}
              </Button>
            </Card>
          ))}
        </div>

        {filteredTeachers.length === 0 && (
          <Card className="text-center py-8">
            <p className="text-gray-600 dark:text-gray-300">
              No teachers match these filters. Try adjusting your selection!
            </p>
          </Card>
        )}

        {onSkip && (
          <div className="text-center">
            <Button variant="ghost" onClick={onSkip}>
              Skip - I'll choose later
            </Button>
          </div>
        )}
      </div>
    </div>
  );
}
