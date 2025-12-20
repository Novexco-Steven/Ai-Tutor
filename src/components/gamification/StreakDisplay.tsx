import { useGamification } from '@/contexts/GamificationContext';
import { cn } from '@/utils/helpers';
import { Flame, Calendar, Trophy } from 'lucide-react';

interface StreakDisplayProps {
  compact?: boolean;
  className?: string;
}

export default function StreakDisplay({ compact = false, className }: StreakDisplayProps) {
  const { data } = useGamification();

  if (compact) {
    return (
      <div className={cn("flex items-center gap-1 px-2 py-1 bg-orange-500/20 rounded-full", className)}>
        <Flame className={cn("w-4 h-4", data.currentStreak > 0 ? "text-orange-500" : "text-slate-500")} />
        <span className={cn("text-sm font-bold", data.currentStreak > 0 ? "text-orange-500" : "text-slate-500")}>
          {data.currentStreak}
        </span>
      </div>
    );
  }

  const streakMessage = data.currentStreak === 0
    ? "Start your streak today!"
    : data.currentStreak === 1
    ? "Great start! Come back tomorrow to continue!"
    : data.currentStreak < 7
    ? `${7 - data.currentStreak} more days until Week Warrior badge!`
    : data.currentStreak < 14
    ? `${14 - data.currentStreak} days until Unstoppable badge!`
    : data.currentStreak < 30
    ? `${30 - data.currentStreak} days until Legend badge!`
    : "You're a Legend! Keep it up!";

  return (
    <div className={cn("bg-gradient-to-r from-slate-800 to-slate-900 rounded-xl p-4 border border-slate-700/50", className)}>
      <div className="flex items-center justify-between">
        <div className="flex items-center gap-3">
          <div className={cn(
            "w-12 h-12 rounded-full flex items-center justify-center shadow-lg",
            data.currentStreak > 0
              ? "bg-gradient-to-br from-orange-400 to-red-500 shadow-orange-500/20"
              : "bg-slate-700"
          )}>
            <Flame className={cn("w-6 h-6", data.currentStreak > 0 ? "text-white" : "text-slate-500")} />
          </div>
          <div>
            <p className="text-sm text-slate-400">Current Streak</p>
            <p className={cn(
              "text-2xl font-bold",
              data.currentStreak > 0 ? "text-orange-400" : "text-slate-500"
            )}>
              {data.currentStreak} {data.currentStreak === 1 ? 'day' : 'days'}
            </p>
          </div>
        </div>

        {data.longestStreak > 0 && (
          <div className="text-right">
            <div className="flex items-center gap-1 text-slate-400">
              <Trophy className="w-4 h-4 text-yellow-500" />
              <span className="text-sm">Best</span>
            </div>
            <p className="text-lg font-bold text-yellow-500">{data.longestStreak} days</p>
          </div>
        )}
      </div>

      <p className="mt-3 text-sm text-slate-400 flex items-center gap-2">
        <Calendar className="w-4 h-4" />
        {streakMessage}
      </p>

      {/* Streak visualization */}
      {data.currentStreak > 0 && (
        <div className="mt-3 flex gap-1">
          {Array.from({ length: Math.min(data.currentStreak, 7) }).map((_, i) => (
            <div
              key={i}
              className="w-8 h-8 rounded-lg bg-gradient-to-br from-orange-400 to-red-500 flex items-center justify-center"
            >
              <Flame className="w-4 h-4 text-white" />
            </div>
          ))}
          {data.currentStreak > 7 && (
            <div className="w-8 h-8 rounded-lg bg-slate-700 flex items-center justify-center text-slate-400 text-sm font-bold">
              +{data.currentStreak - 7}
            </div>
          )}
        </div>
      )}
    </div>
  );
}
