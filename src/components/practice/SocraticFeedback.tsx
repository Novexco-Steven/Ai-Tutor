import { cn } from '@/utils/helpers';
import { HelpCircle, Lightbulb, Heart, ThumbsUp, RefreshCw } from 'lucide-react';
import Button from '../shared/Button';
import type { AISocraticGuidanceResponse } from '@/types';

interface SocraticFeedbackProps {
  guidance: AISocraticGuidanceResponse;
  onTryAgain: () => void;
  onRevealAnswer: () => void;
  className?: string;
}

export default function SocraticFeedback({
  guidance,
  onTryAgain,
  onRevealAnswer,
  className
}: SocraticFeedbackProps) {
  const hintLevelColors = {
    1: 'from-blue-500/20 to-purple-500/20 border-blue-500/30',
    2: 'from-amber-500/20 to-orange-500/20 border-amber-500/30',
    3: 'from-pink-500/20 to-red-500/20 border-pink-500/30',
  };

  const hintLevelLabels = {
    1: 'Gentle Nudge',
    2: 'Helpful Hint',
    3: 'Strong Guidance',
  };

  return (
    <div className={cn(
      "rounded-2xl p-6 border-2 animate-fade-in",
      `bg-gradient-to-br ${hintLevelColors[guidance.hintLevel]}`,
      className
    )}>
      {/* Header */}
      <div className="flex items-center gap-3 mb-4">
        <div className="w-10 h-10 rounded-xl bg-gradient-to-br from-purple-500 to-blue-600 flex items-center justify-center">
          <HelpCircle className="w-5 h-5 text-white" />
        </div>
        <div>
          <h3 className="font-semibold text-white">
            {guidance.isCorrect ? "Great thinking! Let's go deeper..." : "Let's think about this..."}
          </h3>
          <span className="text-xs text-slate-400">{hintLevelLabels[guidance.hintLevel]}</span>
        </div>
      </div>

      {/* Encouragement */}
      <div className="flex items-start gap-3 mb-4 p-3 bg-white/10 rounded-xl">
        <Heart className="w-5 h-5 text-pink-400 shrink-0 mt-0.5" />
        <p className="text-slate-200 text-sm">{guidance.encouragement}</p>
      </div>

      {/* Guiding Question */}
      <div className="mb-4 p-4 bg-white/10 rounded-xl border border-white/20">
        <div className="flex items-center gap-2 mb-2">
          <HelpCircle className="w-4 h-4 text-purple-400" />
          <span className="text-sm font-medium text-purple-300">Guiding Question</span>
        </div>
        <p className="text-white text-lg leading-relaxed">
          {guidance.guidingQuestion}
        </p>
      </div>

      {/* Thinking Prompt */}
      <div className="mb-6 p-4 bg-white/10 rounded-xl border border-white/20">
        <div className="flex items-center gap-2 mb-2">
          <Lightbulb className="w-4 h-4 text-amber-400" />
          <span className="text-sm font-medium text-amber-300">Try This</span>
        </div>
        <p className="text-slate-200">
          {guidance.thinkingPrompt}
        </p>
      </div>

      {/* Actions */}
      <div className="flex gap-3">
        <Button
          variant="primary"
          onClick={onTryAgain}
          className="flex-1 bg-gradient-to-r from-green-500 to-emerald-600 hover:from-green-600 hover:to-emerald-700"
        >
          <RefreshCw className="w-4 h-4 mr-2" />
          Try Again
        </Button>
        {!guidance.isCorrect && (
          <Button
            variant="secondary"
            onClick={onRevealAnswer}
            className="bg-slate-700 hover:bg-slate-600 border-slate-600"
          >
            <ThumbsUp className="w-4 h-4 mr-2" />
            Show Answer
          </Button>
        )}
      </div>
    </div>
  );
}
