import { useGamification } from '@/contexts/GamificationContext';
import { cn } from '@/utils/helpers';
import { Zap, TrendingUp } from 'lucide-react';

interface XPDisplayProps {
  compact?: boolean;
  className?: string;
}

export default function XPDisplay({ compact = false, className }: XPDisplayProps) {
  const { data, getXPProgress, getXPForNextLevel } = useGamification();

  if (compact) {
    return (
      <div className={cn("flex items-center gap-2", className)}>
        <div className="flex items-center gap-1 px-2 py-1 bg-yellow-500/20 rounded-full">
          <Zap className="w-4 h-4 text-yellow-500" />
          <span className="text-sm font-bold text-yellow-500">{data.xp}</span>
        </div>
        <div className="flex items-center gap-1 px-2 py-1 bg-purple-500/20 rounded-full">
          <TrendingUp className="w-4 h-4 text-purple-500" />
          <span className="text-sm font-bold text-purple-400">Lvl {data.level}</span>
        </div>
      </div>
    );
  }

  const progress = getXPProgress();
  const nextLevelXP = getXPForNextLevel();

  return (
    <div className={cn("bg-gradient-to-r from-slate-800 to-slate-900 rounded-xl p-4 border border-slate-700/50", className)}>
      <div className="flex items-center justify-between mb-2">
        <div className="flex items-center gap-2">
          <div className="w-10 h-10 rounded-full bg-gradient-to-br from-yellow-400 to-orange-500 flex items-center justify-center shadow-lg shadow-yellow-500/20">
            <Zap className="w-5 h-5 text-white" />
          </div>
          <div>
            <p className="text-sm text-slate-400">Total XP</p>
            <p className="text-xl font-bold text-white">{data.xp.toLocaleString()}</p>
          </div>
        </div>
        <div className="text-right">
          <div className="flex items-center gap-1 px-3 py-1 bg-purple-500/20 rounded-full">
            <TrendingUp className="w-4 h-4 text-purple-400" />
            <span className="text-lg font-bold text-purple-400">Level {data.level}</span>
          </div>
        </div>
      </div>

      {/* Progress bar */}
      <div className="mt-3">
        <div className="flex justify-between text-xs text-slate-400 mb-1">
          <span>Progress to Level {data.level + 1}</span>
          <span>{Math.round(progress)}%</span>
        </div>
        <div className="h-2 bg-slate-700 rounded-full overflow-hidden">
          <div
            className="h-full bg-gradient-to-r from-yellow-500 to-orange-500 rounded-full transition-all duration-500"
            style={{ width: `${progress}%` }}
          />
        </div>
        <p className="text-xs text-slate-500 mt-1">
          {nextLevelXP - data.xp} XP to next level
        </p>
      </div>
    </div>
  );
}
