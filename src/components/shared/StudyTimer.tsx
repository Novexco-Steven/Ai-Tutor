import { useState, useEffect } from 'react';
import { useStudySession, formatStudyTime, BREAK_ACTIVITIES } from '@/contexts/StudySessionContext';
import { cn } from '@/utils/helpers';
import { Timer, Coffee, Play, Pause, Target, Sparkles, X } from 'lucide-react';
import type { BreakActivity } from '@/types';

interface StudyTimerProps {
  className?: string;
  compact?: boolean;
}

export default function StudyTimer({ className, compact = false }: StudyTimerProps) {
  const {
    isStudying,
    currentSessionDuration,
    shouldTakeBreak,
    dailyProgress,
    data,
    startSession,
    pauseSession,
    recordBreak,
    getRandomBreakActivity,
  } = useStudySession();

  const [showBreakModal, setShowBreakModal] = useState(false);
  const [breakActivity, setBreakActivity] = useState<BreakActivity | null>(null);
  const [breakDismissed, setBreakDismissed] = useState(false);

  // Show break reminder
  useEffect(() => {
    if (shouldTakeBreak && !breakDismissed && !showBreakModal) {
      setBreakActivity(getRandomBreakActivity());
      setShowBreakModal(true);
    }
  }, [shouldTakeBreak, breakDismissed, showBreakModal, getRandomBreakActivity]);

  // Auto-start session when component mounts
  useEffect(() => {
    if (!isStudying) {
      startSession();
    }
    return () => {
      // Don't pause on unmount - let them continue
    };
  }, []);

  const handleTakeBreak = () => {
    recordBreak();
    setShowBreakModal(false);
    setBreakDismissed(false);
  };

  const handleSkipBreak = () => {
    setShowBreakModal(false);
    setBreakDismissed(true);
    // Reset dismissed after 10 minutes
    setTimeout(() => setBreakDismissed(false), 10 * 60 * 1000);
  };

  const handleNewActivity = () => {
    setBreakActivity(getRandomBreakActivity());
  };

  if (compact) {
    return (
      <div className={cn("flex items-center gap-2", className)}>
        <div className="flex items-center gap-1.5 px-2 py-1 bg-blue-500/20 rounded-full">
          <Timer className="w-3.5 h-3.5 text-blue-400" />
          <span className="text-xs font-medium text-blue-400">
            {formatStudyTime(currentSessionDuration)}
          </span>
        </div>
        {shouldTakeBreak && !breakDismissed && (
          <button
            onClick={() => setShowBreakModal(true)}
            className="flex items-center gap-1 px-2 py-1 bg-amber-500/20 rounded-full animate-pulse"
          >
            <Coffee className="w-3.5 h-3.5 text-amber-400" />
            <span className="text-xs font-medium text-amber-400">Break?</span>
          </button>
        )}

        {/* Break Modal */}
        {showBreakModal && breakActivity && (
          <BreakModal
            activity={breakActivity}
            onTakeBreak={handleTakeBreak}
            onSkip={handleSkipBreak}
            onNewActivity={handleNewActivity}
          />
        )}
      </div>
    );
  }

  return (
    <div className={cn(
      "bg-gradient-to-r from-slate-800 to-slate-900 rounded-xl p-4 border border-slate-700/50",
      className
    )}>
      <div className="flex items-center justify-between">
        {/* Timer Display */}
        <div className="flex items-center gap-3">
          <div className={cn(
            "w-10 h-10 rounded-full flex items-center justify-center",
            isStudying
              ? "bg-gradient-to-br from-blue-400 to-blue-600"
              : "bg-slate-700"
          )}>
            <Timer className="w-5 h-5 text-white" />
          </div>
          <div>
            <p className="text-xs text-slate-400">Study Time</p>
            <p className="text-xl font-bold text-white">
              {formatStudyTime(currentSessionDuration)}
            </p>
          </div>
        </div>

        {/* Controls */}
        <div className="flex items-center gap-2">
          {shouldTakeBreak && !breakDismissed && (
            <button
              onClick={() => setShowBreakModal(true)}
              className="flex items-center gap-1.5 px-3 py-1.5 bg-amber-500/20 rounded-lg border border-amber-500/30 animate-pulse hover:bg-amber-500/30 transition-colors"
            >
              <Coffee className="w-4 h-4 text-amber-400" />
              <span className="text-sm font-medium text-amber-400">Take a Break!</span>
            </button>
          )}
          <button
            onClick={isStudying ? pauseSession : startSession}
            className={cn(
              "p-2 rounded-lg transition-colors",
              isStudying
                ? "bg-slate-700 hover:bg-slate-600 text-slate-300"
                : "bg-blue-500 hover:bg-blue-600 text-white"
            )}
          >
            {isStudying ? <Pause className="w-4 h-4" /> : <Play className="w-4 h-4" />}
          </button>
        </div>
      </div>

      {/* Daily Goal Progress */}
      <div className="mt-4">
        <div className="flex items-center justify-between text-xs mb-1">
          <div className="flex items-center gap-1 text-slate-400">
            <Target className="w-3 h-3" />
            <span>Daily Goal: {data.dailyGoalMinutes}min</span>
          </div>
          <span className={cn(
            "font-medium",
            data.dailyGoalCompleted ? "text-green-400" : "text-slate-400"
          )}>
            {Math.round(dailyProgress)}%
          </span>
        </div>
        <div className="h-2 bg-slate-700 rounded-full overflow-hidden">
          <div
            className={cn(
              "h-full rounded-full transition-all duration-500",
              data.dailyGoalCompleted
                ? "bg-gradient-to-r from-green-400 to-emerald-500"
                : "bg-gradient-to-r from-blue-400 to-blue-600"
            )}
            style={{ width: `${dailyProgress}%` }}
          />
        </div>
        {data.dailyGoalCompleted && (
          <p className="text-xs text-green-400 mt-1 flex items-center gap-1">
            <Sparkles className="w-3 h-3" />
            Daily goal reached! Great job!
          </p>
        )}
      </div>

      {/* Break Modal */}
      {showBreakModal && breakActivity && (
        <BreakModal
          activity={breakActivity}
          onTakeBreak={handleTakeBreak}
          onSkip={handleSkipBreak}
          onNewActivity={handleNewActivity}
        />
      )}
    </div>
  );
}

// Break Modal Component
interface BreakModalProps {
  activity: BreakActivity;
  onTakeBreak: () => void;
  onSkip: () => void;
  onNewActivity: () => void;
}

function BreakModal({ activity, onTakeBreak, onSkip, onNewActivity }: BreakModalProps) {
  const categoryColors = {
    movement: 'from-green-400 to-emerald-500',
    relaxation: 'from-blue-400 to-cyan-500',
    fun: 'from-purple-400 to-pink-500',
    mindfulness: 'from-amber-400 to-orange-500',
  };

  return (
    <div className="fixed inset-0 bg-black/70 flex items-center justify-center z-50 p-4 animate-fade-in">
      <div className="bg-slate-800 rounded-2xl p-6 max-w-sm w-full border border-slate-700 shadow-2xl">
        <button
          onClick={onSkip}
          className="absolute top-4 right-4 text-slate-400 hover:text-white"
        >
          <X className="w-5 h-5" />
        </button>

        {/* Header */}
        <div className="text-center mb-6">
          <div className={cn(
            "w-20 h-20 rounded-2xl mx-auto flex items-center justify-center text-4xl mb-4",
            `bg-gradient-to-br ${categoryColors[activity.category]} shadow-lg`
          )}>
            {activity.icon}
          </div>
          <h3 className="text-xl font-bold text-white mb-1">Time for a Break!</h3>
          <p className="text-slate-400 text-sm">
            You've been studying for 25 minutes. Let's recharge!
          </p>
        </div>

        {/* Activity */}
        <div className="bg-slate-700/50 rounded-xl p-4 mb-6">
          <h4 className="font-semibold text-white mb-2">{activity.title}</h4>
          <p className="text-slate-300 text-sm mb-2">{activity.description}</p>
          <p className="text-xs text-slate-400">
            ⏱️ About {activity.duration < 60 ? `${activity.duration} seconds` : `${Math.round(activity.duration / 60)} minute${activity.duration >= 120 ? 's' : ''}`}
          </p>
        </div>

        {/* Actions */}
        <div className="space-y-2">
          <button
            onClick={onTakeBreak}
            className="w-full py-3 bg-gradient-to-r from-green-500 to-emerald-600 text-white font-semibold rounded-xl hover:from-green-600 hover:to-emerald-700 transition-colors"
          >
            ✓ I Took My Break!
          </button>
          <div className="flex gap-2">
            <button
              onClick={onNewActivity}
              className="flex-1 py-2 bg-slate-700 text-slate-300 rounded-xl hover:bg-slate-600 transition-colors text-sm"
            >
              🔄 Different Activity
            </button>
            <button
              onClick={onSkip}
              className="flex-1 py-2 bg-slate-700 text-slate-300 rounded-xl hover:bg-slate-600 transition-colors text-sm"
            >
              ⏭️ Skip for Now
            </button>
          </div>
        </div>

        {/* Quick activities grid */}
        <div className="mt-4 pt-4 border-t border-slate-700">
          <p className="text-xs text-slate-500 mb-2">Or try one of these:</p>
          <div className="flex gap-2 justify-center">
            {BREAK_ACTIVITIES.slice(0, 5).map((act) => (
              <button
                key={act.id}
                onClick={() => {
                  // Could set this as the new activity
                }}
                className="w-10 h-10 rounded-lg bg-slate-700/50 hover:bg-slate-600 flex items-center justify-center text-lg transition-colors"
                title={act.title}
              >
                {act.icon}
              </button>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}
