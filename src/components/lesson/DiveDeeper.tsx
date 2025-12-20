import { useState } from 'react';
import { diveDeeper } from '@/services/ai';
import { cn } from '@/utils/helpers';
import Button from '../shared/Button';
import Card from '../shared/Card';
import { Telescope, Sparkles, Globe, Heart, Compass, X, Loader2, ChevronDown, ChevronUp } from 'lucide-react';
import type { AIDiveDeeperResponse } from '@/types';

interface DiveDeeperProps {
  concept: string;
  currentExplanation: string;
  gradeLevel: number;
  difficultyLevel: number;
  interestTheme: string;
  className?: string;
}

export default function DiveDeeper({
  concept,
  currentExplanation,
  gradeLevel,
  difficultyLevel,
  interestTheme,
  className
}: DiveDeeperProps) {
  const [isOpen, setIsOpen] = useState(false);
  const [isLoading, setIsLoading] = useState(false);
  const [content, setContent] = useState<AIDiveDeeperResponse | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [expandedSections, setExpandedSections] = useState<Set<string>>(new Set(['explanation']));

  const handleDiveDeeper = async () => {
    if (content) {
      setIsOpen(true);
      return;
    }

    setIsLoading(true);
    setError(null);

    try {
      const response = await diveDeeper({
        concept,
        currentExplanation,
        gradeLevel,
        difficultyLevel,
        interestTheme
      });
      setContent(response);
      setIsOpen(true);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Something went wrong');
    } finally {
      setIsLoading(false);
    }
  };

  const toggleSection = (section: string) => {
    const newExpanded = new Set(expandedSections);
    if (newExpanded.has(section)) {
      newExpanded.delete(section);
    } else {
      newExpanded.add(section);
    }
    setExpandedSections(newExpanded);
  };

  return (
    <>
      {/* Trigger Button */}
      <Button
        variant="secondary"
        onClick={handleDiveDeeper}
        disabled={isLoading}
        className={cn(
          "bg-gradient-to-r from-purple-500/10 to-blue-500/10 border-purple-500/30 hover:from-purple-500/20 hover:to-blue-500/20",
          className
        )}
      >
        {isLoading ? (
          <>
            <Loader2 className="w-4 h-4 mr-2 animate-spin" />
            Exploring...
          </>
        ) : (
          <>
            <Telescope className="w-4 h-4 mr-2" />
            Dive Deeper
          </>
        )}
      </Button>

      {/* Modal */}
      {isOpen && content && (
        <div className="fixed inset-0 bg-black/70 flex items-center justify-center z-50 p-4 animate-fade-in overflow-y-auto">
          <div className="bg-white dark:bg-gray-800 rounded-2xl max-w-2xl w-full max-h-[90vh] overflow-hidden shadow-2xl my-8">
            {/* Header */}
            <div className="bg-gradient-to-r from-purple-600 to-blue-600 p-6 relative">
              <button
                onClick={() => setIsOpen(false)}
                className="absolute top-4 right-4 p-2 hover:bg-white/20 rounded-full transition-colors"
              >
                <X className="w-5 h-5 text-white" />
              </button>
              <div className="flex items-center gap-3">
                <div className="w-12 h-12 rounded-xl bg-white/20 flex items-center justify-center">
                  <Telescope className="w-6 h-6 text-white" />
                </div>
                <div>
                  <h2 className="text-xl font-bold text-white">Dive Deeper</h2>
                  <p className="text-white/80 text-sm">{concept}</p>
                </div>
              </div>
            </div>

            {/* Content */}
            <div className="p-6 overflow-y-auto max-h-[calc(90vh-200px)] space-y-4">
              {/* Deeper Explanation */}
              <CollapsibleSection
                title="The Deep Dive"
                icon={<Sparkles className="w-5 h-5 text-purple-500" />}
                isOpen={expandedSections.has('explanation')}
                onToggle={() => toggleSection('explanation')}
                gradient="from-purple-500/10 to-purple-500/5"
              >
                <p className="text-gray-700 dark:text-gray-300 leading-relaxed whitespace-pre-wrap">
                  {content.deeperExplanation}
                </p>
              </CollapsibleSection>

              {/* Fun Facts */}
              <CollapsibleSection
                title="Fun Facts"
                icon={<Sparkles className="w-5 h-5 text-amber-500" />}
                isOpen={expandedSections.has('funFacts')}
                onToggle={() => toggleSection('funFacts')}
                gradient="from-amber-500/10 to-amber-500/5"
                badge={`${content.funFacts.length} facts`}
              >
                <ul className="space-y-3">
                  {content.funFacts.map((fact, idx) => (
                    <li key={idx} className="flex items-start gap-3">
                      <span className="text-2xl">
                        {['🌟', '💡', '🎯', '🔥', '✨'][idx % 5]}
                      </span>
                      <span className="text-gray-700 dark:text-gray-300">{fact}</span>
                    </li>
                  ))}
                </ul>
              </CollapsibleSection>

              {/* Real World Connections */}
              <CollapsibleSection
                title="In the Real World"
                icon={<Globe className="w-5 h-5 text-green-500" />}
                isOpen={expandedSections.has('realWorld')}
                onToggle={() => toggleSection('realWorld')}
                gradient="from-green-500/10 to-green-500/5"
              >
                <ul className="space-y-3">
                  {content.realWorldConnections.map((connection, idx) => (
                    <li key={idx} className="flex items-start gap-3">
                      <span className="text-2xl">
                        {['🌍', '🏠', '🚀', '🎮', '📱'][idx % 5]}
                      </span>
                      <span className="text-gray-700 dark:text-gray-300">{connection}</span>
                    </li>
                  ))}
                </ul>
              </CollapsibleSection>

              {/* Why It Matters */}
              <CollapsibleSection
                title="Why This Matters"
                icon={<Heart className="w-5 h-5 text-red-500" />}
                isOpen={expandedSections.has('whyItMatters')}
                onToggle={() => toggleSection('whyItMatters')}
                gradient="from-red-500/10 to-red-500/5"
              >
                <p className="text-gray-700 dark:text-gray-300 leading-relaxed">
                  {content.whyItMatters}
                </p>
              </CollapsibleSection>

              {/* Related Concepts */}
              <CollapsibleSection
                title="Explore More"
                icon={<Compass className="w-5 h-5 text-blue-500" />}
                isOpen={expandedSections.has('related')}
                onToggle={() => toggleSection('related')}
                gradient="from-blue-500/10 to-blue-500/5"
              >
                <div className="flex flex-wrap gap-2">
                  {content.relatedConcepts.map((topic, idx) => (
                    <span
                      key={idx}
                      className="px-3 py-1.5 bg-blue-100 dark:bg-blue-900/30 text-blue-700 dark:text-blue-300 rounded-full text-sm font-medium"
                    >
                      {topic}
                    </span>
                  ))}
                </div>
              </CollapsibleSection>
            </div>

            {/* Footer */}
            <div className="p-4 border-t border-gray-200 dark:border-gray-700 bg-gray-50 dark:bg-gray-900">
              <Button
                variant="primary"
                onClick={() => setIsOpen(false)}
                fullWidth
                className="bg-gradient-to-r from-purple-600 to-blue-600"
              >
                Got it! Back to Learning
              </Button>
            </div>
          </div>
        </div>
      )}

      {/* Error Toast */}
      {error && (
        <div className="fixed bottom-4 right-4 bg-red-500 text-white px-4 py-2 rounded-lg shadow-lg z-50">
          {error}
          <button onClick={() => setError(null)} className="ml-2 hover:underline">
            Dismiss
          </button>
        </div>
      )}
    </>
  );
}

// Collapsible Section Component
interface CollapsibleSectionProps {
  title: string;
  icon: React.ReactNode;
  isOpen: boolean;
  onToggle: () => void;
  gradient: string;
  badge?: string;
  children: React.ReactNode;
}

function CollapsibleSection({ title, icon, isOpen, onToggle, gradient, badge, children }: CollapsibleSectionProps) {
  return (
    <Card className={cn("overflow-hidden", `bg-gradient-to-r ${gradient}`)}>
      <button
        onClick={onToggle}
        className="w-full flex items-center justify-between p-4"
      >
        <div className="flex items-center gap-3">
          {icon}
          <span className="font-semibold text-gray-900 dark:text-white">{title}</span>
          {badge && (
            <span className="text-xs px-2 py-0.5 bg-white/50 dark:bg-black/20 rounded-full text-gray-600 dark:text-gray-300">
              {badge}
            </span>
          )}
        </div>
        {isOpen ? (
          <ChevronUp className="w-5 h-5 text-gray-500" />
        ) : (
          <ChevronDown className="w-5 h-5 text-gray-500" />
        )}
      </button>
      {isOpen && (
        <div className="px-4 pb-4 animate-fade-in">
          {children}
        </div>
      )}
    </Card>
  );
}
