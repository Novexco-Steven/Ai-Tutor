import { useState } from 'react';
import { useGamification, BADGES } from '@/contexts/GamificationContext';
import { cn } from '@/utils/helpers';
import { Award, Lock, X } from 'lucide-react';
import type { Badge } from '@/types';

interface BadgeGridProps {
  showLocked?: boolean;
  maxDisplay?: number;
  compact?: boolean;
  className?: string;
}

export default function BadgeGrid({
  showLocked = true,
  maxDisplay,
  compact = false,
  className
}: BadgeGridProps) {
  const { data, getBadge, hasBadge } = useGamification();
  const [selectedBadge, setSelectedBadge] = useState<Badge | null>(null);

  const earnedBadges = data.badges
    .map(ub => getBadge(ub.badgeId))
    .filter((b): b is Badge => b !== undefined);

  const lockedBadges = showLocked
    ? BADGES.filter(b => !hasBadge(b.id))
    : [];

  const displayBadges = maxDisplay
    ? earnedBadges.slice(0, maxDisplay)
    : earnedBadges;

  const categoryColors: Record<string, string> = {
    learning: 'from-blue-400 to-blue-600',
    streak: 'from-orange-400 to-red-500',
    mastery: 'from-purple-400 to-purple-600',
    exploration: 'from-green-400 to-green-600',
    achievement: 'from-yellow-400 to-yellow-600',
  };

  if (compact) {
    return (
      <div className={cn("flex items-center gap-2", className)}>
        <Award className="w-4 h-4 text-purple-400" />
        <span className="text-sm font-medium text-purple-400">
          {earnedBadges.length}/{BADGES.length}
        </span>
        <div className="flex -space-x-2">
          {displayBadges.slice(0, 5).map((badge) => (
            <div
              key={badge.id}
              className="w-8 h-8 rounded-full bg-gradient-to-br from-purple-400 to-purple-600 flex items-center justify-center border-2 border-slate-900 text-base"
              title={badge.name}
            >
              {badge.icon}
            </div>
          ))}
          {earnedBadges.length > 5 && (
            <div className="w-8 h-8 rounded-full bg-slate-700 flex items-center justify-center border-2 border-slate-900 text-xs text-slate-300 font-bold">
              +{earnedBadges.length - 5}
            </div>
          )}
        </div>
      </div>
    );
  }

  return (
    <div className={cn("bg-gradient-to-r from-slate-800 to-slate-900 rounded-xl p-4 border border-slate-700/50", className)}>
      <div className="flex items-center justify-between mb-4">
        <div className="flex items-center gap-2">
          <Award className="w-5 h-5 text-purple-400" />
          <h3 className="text-lg font-semibold text-white">Badges</h3>
        </div>
        <span className="text-sm text-slate-400">
          {earnedBadges.length}/{BADGES.length} earned
        </span>
      </div>

      {/* Earned badges */}
      {earnedBadges.length > 0 && (
        <div className="mb-4">
          <p className="text-sm text-slate-400 mb-2">Earned</p>
          <div className="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 gap-2">
            {displayBadges.map((badge) => (
              <button
                key={badge.id}
                onClick={() => setSelectedBadge(badge)}
                className={cn(
                  "aspect-square rounded-xl flex items-center justify-center text-2xl",
                  "bg-gradient-to-br shadow-lg transition-transform hover:scale-110",
                  categoryColors[badge.category]
                )}
                title={badge.name}
              >
                {badge.icon}
              </button>
            ))}
          </div>
        </div>
      )}

      {/* Locked badges */}
      {showLocked && lockedBadges.length > 0 && (
        <div>
          <p className="text-sm text-slate-400 mb-2">Locked</p>
          <div className="grid grid-cols-4 sm:grid-cols-6 md:grid-cols-8 gap-2">
            {lockedBadges.map((badge) => (
              <button
                key={badge.id}
                onClick={() => setSelectedBadge(badge)}
                className="aspect-square rounded-xl flex items-center justify-center bg-slate-700/50 text-slate-500 hover:bg-slate-700 transition-colors relative group"
                title={badge.name}
              >
                <span className="text-2xl opacity-30 grayscale">{badge.icon}</span>
                <Lock className="w-4 h-4 absolute bottom-1 right-1 text-slate-500" />
              </button>
            ))}
          </div>
        </div>
      )}

      {/* Empty state */}
      {earnedBadges.length === 0 && !showLocked && (
        <div className="text-center py-6">
          <Award className="w-12 h-12 text-slate-600 mx-auto mb-2" />
          <p className="text-slate-400">No badges earned yet</p>
          <p className="text-sm text-slate-500">Complete lessons and quizzes to earn badges!</p>
        </div>
      )}

      {/* Badge detail modal */}
      {selectedBadge && (
        <div
          className="fixed inset-0 bg-black/60 flex items-center justify-center z-50 p-4"
          onClick={() => setSelectedBadge(null)}
        >
          <div
            className="bg-slate-800 rounded-2xl p-6 max-w-sm w-full border border-slate-700"
            onClick={(e) => e.stopPropagation()}
          >
            <button
              onClick={() => setSelectedBadge(null)}
              className="absolute top-4 right-4 text-slate-400 hover:text-white"
            >
              <X className="w-5 h-5" />
            </button>

            <div className="text-center">
              <div className={cn(
                "w-20 h-20 rounded-2xl mx-auto flex items-center justify-center text-4xl mb-4",
                hasBadge(selectedBadge.id)
                  ? `bg-gradient-to-br ${categoryColors[selectedBadge.category]} shadow-lg`
                  : "bg-slate-700"
              )}>
                <span className={hasBadge(selectedBadge.id) ? "" : "opacity-30 grayscale"}>
                  {selectedBadge.icon}
                </span>
              </div>

              <h3 className="text-xl font-bold text-white mb-1">{selectedBadge.name}</h3>
              <p className="text-slate-400 mb-4">{selectedBadge.description}</p>

              {hasBadge(selectedBadge.id) ? (
                <div className="inline-flex items-center gap-2 px-3 py-1 bg-green-500/20 rounded-full text-green-400 text-sm">
                  <Award className="w-4 h-4" />
                  Earned!
                </div>
              ) : (
                <div className="inline-flex items-center gap-2 px-3 py-1 bg-slate-700 rounded-full text-slate-400 text-sm">
                  <Lock className="w-4 h-4" />
                  +{selectedBadge.xpReward} XP when earned
                </div>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
