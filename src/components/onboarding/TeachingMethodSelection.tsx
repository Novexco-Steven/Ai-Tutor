import { useState } from 'react';
import Card from '../shared/Card';
import Button from '../shared/Button';
import { TEACHING_METHODS, TeachingMethod, TeachingMethodInfo } from '@/services/prompts';
import { GraduationCap, Lightbulb } from 'lucide-react';
import { cn } from '@/utils/helpers';

interface TeachingMethodSelectionProps {
  grade: number;
  onSelect: (method: TeachingMethod) => void;
  onSkip?: () => void;
}

export default function TeachingMethodSelection({ grade, onSelect, onSkip }: TeachingMethodSelectionProps) {
  const [selectedMethod, setSelectedMethod] = useState<TeachingMethod | null>(null);

  // Filter methods appropriate for the grade
  const availableMethods = Object.values(TEACHING_METHODS).filter(
    method => grade >= method.gradeRange[0] && grade <= method.gradeRange[1]
  );

  const getMethodIcon = (method: TeachingMethodInfo) => {
    switch (method.id) {
      case 'play-based':
        return '🎮';
      case 'montessori':
        return '🎨';
      case 'direct-instruction':
        return '📚';
      case 'inquiry-based':
        return '🔬';
      case 'scaffolding':
        return '🪜';
      case 'positive-reinforcement':
        return '⭐';
      case 'multi-sensory':
        return '👁️';
      case 'cooperative':
        return '👥';
      case 'modeling':
        return '👨‍🏫';
      case 'repetition-routine':
        return '🔄';
      default:
        return '📖';
    }
  };

  return (
    <div className="min-h-screen bg-gradient-primary p-4 py-8">
      <div className="container-app max-w-6xl">
        <div className="text-center mb-8 animate-fade-in">
          <Lightbulb className="w-16 h-16 text-white mx-auto mb-4" />
          <h1 className="text-4xl font-bold text-white mb-3">How Do You Learn Best?</h1>
          <p className="text-xl text-white/90 mb-2">
            Choose a teaching method that matches your learning style
          </p>
          <p className="text-white/80">
            We'll use this approach to make lessons perfect for you!
          </p>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-6">
          {availableMethods.map(method => (
            <Card
              key={method.id}
              className={cn(
                'cursor-pointer transition-all hover:scale-102 hover:shadow-xl',
                selectedMethod === method.id && 'ring-4 ring-primary-400 shadow-2xl'
              )}
              onClick={() => setSelectedMethod(method.id)}
            >
              <div className="flex items-start gap-4">
                <div className="text-4xl">{getMethodIcon(method)}</div>
                <div className="flex-1">
                  <h3 className="text-lg font-bold text-gray-900 dark:text-white mb-1">
                    {method.name}
                  </h3>
                  <p className="text-sm text-gray-600 dark:text-gray-300 mb-3">
                    {method.description}
                  </p>
                  <div className="text-xs text-gray-500 dark:text-gray-400 mb-2">
                    <span className="font-semibold">Best for:</span> {method.bestFor}
                  </div>
                  {selectedMethod === method.id && (
                    <div className="mt-3 p-3 bg-blue-50 dark:bg-blue-900/20 rounded-lg text-sm text-gray-700 dark:text-gray-300">
                      <p className="font-semibold mb-1">How it works:</p>
                      <p>{method.implementation.split('.')[0]}.</p>
                    </div>
                  )}
                </div>
              </div>
            </Card>
          ))}
        </div>

        {selectedMethod && (
          <div className="flex gap-4 justify-center animate-fade-in">
            <Button
              variant="primary"
              size="lg"
              onClick={() => onSelect(selectedMethod)}
            >
              <GraduationCap className="w-5 h-5 mr-2" />
              Use {TEACHING_METHODS[selectedMethod].name}
            </Button>
          </div>
        )}

        {onSkip && (
          <div className="text-center mt-6">
            <Button variant="ghost" onClick={onSkip}>
              Skip - Use default teaching method
            </Button>
          </div>
        )}
      </div>
    </div>
  );
}
