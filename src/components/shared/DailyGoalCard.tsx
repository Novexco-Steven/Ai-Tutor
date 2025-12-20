import { useState } from 'react';
import { useStudySession, formatStudyTime } from '@/contexts/StudySessionContext';
import { cn } from '@/utils/helpers';
import { Target, Clock, Trophy, ChevronDown, ChevronUp, Sparkles, Coffee } from 'lucide-react';

interface DailyGoalCardProps {
  className?: string;
}

export default function DailyGoalCard({ className }: DailyGoalCardProps) {
  const { data, dailyProgress, setDailyGoal } = useStudySession();
  const [showGoalSetter, setShowGoalSetter] = useState(false);

  const goalOptions = [15, 20, 30, 45, 60];

  const encouragingMessages = [
    "Every minute counts! 🌟",
    "You're doing amazing! 💪",
    "Keep up the great work! 🚀",
    "Learning superstar! ⭐",
  ];

  const randomMessage = encouragingMessages[Math.floor(Math.random() * encouragingMessages.length)];

  return (
    <div className={cn(
      "bg-gradient-to-r from-slate-800 to-slate-900 rounded-xl p-4 border border-slate-700/50",
      className
    )}>
      <div className="flex items-center justify-between mb-3">
        <div className="flex items-center gap-2">
          <Target className="w-5 h-5 text-blue-400" />
          <h3 className="font-semibold text-white">Today's Goal</h3>
        </div>
        <button
          onClick={() => setShowGoalSetter(!showGoalSetter)}
          className="text-slate-400 hover:text-white transition-colors"
        >
          {showGoalSetter ? <ChevronUp className="w-4 h-4" /> : <ChevronDown className="w-4 h-4" />}
        </button>
      </div>

      {/* Goal Setter */}
      {showGoalSetter && (
        <div className="mb-4 p-3 bg-slate-700/50 rounded-lg">
          <p className="text-xs text-slate-400 mb-2">Set your daily study goal:</p>
          <div className="flex gap-2">
            {goalOptions.map((mins) => (
              <button
                key={mins}
                onClick={() => {
                  setDailyGoal(mins);
                  setShowGoalSetter(false);
                }}
                className={cn(
                  "flex-1 py-2 rounded-lg text-sm font-medium transition-colors",
                  data.dailyGoalMinutes === mins
                    ? "bg-blue-500 text-white"
                    : "bg-slate-600 text-slate-300 hover:bg-slate-500"
                )}
              >
                {mins}m
              </button>
            ))}
          </div>
        </div>
      )}

      {/* Progress Display */}
      <div className="flex items-center gap-4 mb-3">
        <div className="flex-1">
          <div className="flex items-center justify-between text-sm mb-1">
            <span className="text-slate-400">
              {formatStudyTime(data.totalStudyTimeToday)} / {data.dailyGoalMinutes}min
            </span>
            <span className={cn(
              "font-semibold",
              data.dailyGoalCompleted ? "text-green-400" : "text-blue-400"
            )}>
              {Math.round(dailyProgress)}%
            </span>
          </div>
          <div className="h-3 bg-slate-700 rounded-full overflow-hidden">
            <div
              className={cn(
                "h-full rounded-full transition-all duration-700",
                data.dailyGoalCompleted
                  ? "bg-gradient-to-r from-green-400 to-emerald-500"
                  : "bg-gradient-to-r from-blue-400 to-purple-500"
              )}
              style={{ width: `${Math.min(100, dailyProgress)}%` }}
            />
          </div>
        </div>
        {data.dailyGoalCompleted && (
          <div className="w-12 h-12 rounded-full bg-gradient-to-br from-yellow-400 to-orange-500 flex items-center justify-center shadow-lg shadow-yellow-500/20">
            <Trophy className="w-6 h-6 text-white" />
          </div>
        )}
      </div>

      {/* Status Message */}
      {data.dailyGoalCompleted ? (
        <div className="flex items-center gap-2 p-2 bg-green-500/10 rounded-lg border border-green-500/20">
          <Sparkles className="w-4 h-4 text-green-400" />
          <span className="text-sm text-green-400 font-medium">
            Goal reached! You're a learning champion! 🎉
          </span>
        </div>
      ) : (
        <div className="flex items-center justify-between">
          <p className="text-xs text-slate-400">{randomMessage}</p>
          <div className="flex items-center gap-1 text-xs text-slate-500">
            <Coffee className="w-3 h-3" />
            <span>{data.breaksTaken} breaks today</span>
          </div>
        </div>
      )}

      {/* Stats Row */}
      <div className="flex gap-4 mt-3 pt-3 border-t border-slate-700/50">
        <div className="flex items-center gap-1.5">
          <Clock className="w-4 h-4 text-slate-500" />
          <div>
            <p className="text-xs text-slate-500">Total Today</p>
            <p className="text-sm font-medium text-white">{formatStudyTime(data.totalStudyTimeToday)}</p>
          </div>
        </div>
        <div className="flex items-center gap-1.5">
          <Coffee className="w-4 h-4 text-slate-500" />
          <div>
            <p className="text-xs text-slate-500">Breaks</p>
            <p className="text-sm font-medium text-white">{data.breaksTaken}</p>
          </div>
        </div>
      </div>
    </div>
  );
}
