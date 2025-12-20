import { useState, useEffect } from 'react';
import { useGamification } from '@/contexts/GamificationContext';
import { storage } from '@/utils/helpers';
import { X, Flame, Sparkles, Trophy, Crown, Star } from 'lucide-react';
import { cn } from '@/utils/helpers';

interface StreakMilestone {
  days: number;
  title: string;
  message: string;
  icon: typeof Flame;
  gradient: string;
  confettiColors: string[];
}

const STREAK_MILESTONES: StreakMilestone[] = [
  {
    days: 3,
    title: "You're On Fire!",
    message: "3 days in a row! Your dedication is starting to pay off. Keep the momentum going!",
    icon: Flame,
    gradient: "from-orange-500 to-red-500",
    confettiColors: ['#f97316', '#ef4444', '#facc15'],
  },
  {
    days: 7,
    title: "Week Warrior!",
    message: "A full week of learning! You've built a powerful habit. Amazing work!",
    icon: Sparkles,
    gradient: "from-purple-500 to-pink-500",
    confettiColors: ['#a855f7', '#ec4899', '#f472b6'],
  },
  {
    days: 14,
    title: "Unstoppable!",
    message: "Two weeks strong! You're proving that consistency leads to mastery!",
    icon: Trophy,
    gradient: "from-amber-500 to-yellow-400",
    confettiColors: ['#f59e0b', '#facc15', '#fbbf24'],
  },
  {
    days: 21,
    title: "Habit Master!",
    message: "21 days! Scientists say habits form in 21 days - you've made learning a part of who you are!",
    icon: Star,
    gradient: "from-blue-500 to-cyan-400",
    confettiColors: ['#3b82f6', '#22d3ee', '#06b6d4'],
  },
  {
    days: 30,
    title: "LEGENDARY!",
    message: "30 days! You're an inspiration! Your commitment to learning is truly extraordinary!",
    icon: Crown,
    gradient: "from-yellow-400 via-amber-500 to-orange-500",
    confettiColors: ['#fbbf24', '#f59e0b', '#d97706'],
  },
];

interface ConfettiPiece {
  id: number;
  x: number;
  delay: number;
  color: string;
  size: number;
  duration: number;
}

export default function StreakCelebration() {
  const { data: gamificationData } = useGamification();
  const [showCelebration, setShowCelebration] = useState(false);
  const [currentMilestone, setCurrentMilestone] = useState<StreakMilestone | null>(null);
  const [confetti, setConfetti] = useState<ConfettiPiece[]>([]);

  useEffect(() => {
    const currentStreak = gamificationData.currentStreak;
    if (currentStreak < 3) return;

    // Find the highest milestone reached
    const milestone = [...STREAK_MILESTONES]
      .reverse()
      .find(m => currentStreak >= m.days);

    if (!milestone) return;

    // Check if we've already celebrated this milestone
    const celebratedKey = `learnlit_streak_celebrated_${milestone.days}`;
    const lastCelebratedStreak = storage.get<number>(celebratedKey, 0);

    // Only show if this is a new achievement of this milestone
    if (lastCelebratedStreak < currentStreak) {
      // Mark as celebrated
      storage.set(celebratedKey, currentStreak);

      // Generate confetti
      const pieces: ConfettiPiece[] = [];
      for (let i = 0; i < 50; i++) {
        pieces.push({
          id: i,
          x: Math.random() * 100,
          delay: Math.random() * 0.5,
          color: milestone.confettiColors[Math.floor(Math.random() * milestone.confettiColors.length)],
          size: Math.random() * 8 + 4,
          duration: Math.random() * 2 + 2,
        });
      }
      setConfetti(pieces);
      setCurrentMilestone(milestone);
      setShowCelebration(true);

      // Auto-dismiss after 8 seconds
      const timer = setTimeout(() => {
        setShowCelebration(false);
      }, 8000);

      return () => clearTimeout(timer);
    }
  }, [gamificationData.currentStreak]);

  if (!showCelebration || !currentMilestone) return null;

  const Icon = currentMilestone.icon;

  return (
    <div className="fixed inset-0 z-50 flex items-center justify-center p-4">
      {/* Backdrop */}
      <div
        className="absolute inset-0 bg-black/60 backdrop-blur-sm"
        onClick={() => setShowCelebration(false)}
      />

      {/* Confetti */}
      <div className="absolute inset-0 overflow-hidden pointer-events-none">
        {confetti.map(piece => (
          <div
            key={piece.id}
            className="absolute animate-confetti"
            style={{
              left: `${piece.x}%`,
              top: '-20px',
              width: piece.size,
              height: piece.size,
              backgroundColor: piece.color,
              borderRadius: Math.random() > 0.5 ? '50%' : '2px',
              animationDelay: `${piece.delay}s`,
              animationDuration: `${piece.duration}s`,
            }}
          />
        ))}
      </div>

      {/* Celebration Card */}
      <div className={cn(
        "relative z-10 max-w-md w-full rounded-3xl p-8 text-center",
        "bg-gradient-to-br shadow-2xl",
        currentMilestone.gradient,
        "animate-celebration-pop"
      )}>
        {/* Close button */}
        <button
          onClick={() => setShowCelebration(false)}
          className="absolute top-4 right-4 p-2 rounded-full bg-white/20 hover:bg-white/30 transition-colors"
        >
          <X className="w-5 h-5 text-white" />
        </button>

        {/* Icon with glow */}
        <div className="relative inline-block mb-6">
          <div className="absolute inset-0 blur-xl opacity-50 bg-white rounded-full scale-150" />
          <div className="relative w-24 h-24 mx-auto rounded-full bg-white/20 flex items-center justify-center animate-pulse-glow">
            <Icon className="w-12 h-12 text-white" />
          </div>
        </div>

        {/* Streak count */}
        <div className="inline-flex items-center gap-2 px-4 py-2 rounded-full bg-white/20 mb-4">
          <Flame className="w-5 h-5 text-white" />
          <span className="text-2xl font-bold text-white">{gamificationData.currentStreak}</span>
          <span className="text-white/80">day streak!</span>
        </div>

        {/* Title */}
        <h2 className="text-3xl font-bold text-white mb-3 drop-shadow-lg">
          {currentMilestone.title}
        </h2>

        {/* Message */}
        <p className="text-white/90 text-lg leading-relaxed mb-6">
          {currentMilestone.message}
        </p>

        {/* Continue button */}
        <button
          onClick={() => setShowCelebration(false)}
          className="px-8 py-3 rounded-full bg-white text-gray-900 font-semibold hover:bg-white/90 transition-colors shadow-lg"
        >
          Keep Going!
        </button>
      </div>
    </div>
  );
}
