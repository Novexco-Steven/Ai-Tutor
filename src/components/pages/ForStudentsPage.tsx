import { Sparkles, Trophy, Zap, Gamepad2, Brain, Star } from 'lucide-react';
import Hero from '../marketing/sections/Hero';
import FeatureGrid from '../marketing/sections/FeatureGrid';
import TestimonialCarousel from '../marketing/sections/TestimonialCarousel';
import StatsSection from '../marketing/sections/StatsSection';
import CTASection from '../marketing/sections/CTASection';

const features = [
  {
    icon: <Sparkles className="w-6 h-6" />,
    title: 'Learn What You Love',
    description: 'Lessons use your favorite topics like sports, games, or animals to make learning fun!',
    highlight: true,
    illustration: 'student-interests' as const,
  },
  {
    icon: <Trophy className="w-6 h-6" />,
    title: 'Earn Badges & Rewards',
    description: 'Collect awesome badges, unlock achievements, and show off your progress.',
    illustration: 'student-badges' as const,
  },
  {
    icon: <Zap className="w-6 h-6" />,
    title: 'Keep Your Streak',
    description: 'Study every day to build your streak. How long can you keep it going?',
    illustration: 'student-streak' as const,
  },
  {
    icon: <Gamepad2 className="w-6 h-6" />,
    title: 'Fun Practice Games',
    description: 'Practice quizzes that feel like games. Learning has never been this fun!',
    illustration: 'student-games' as const,
  },
  {
    icon: <Brain className="w-6 h-6" />,
    title: 'Your Personal AI Tutor',
    description: 'Ask questions anytime. Get explanations that actually make sense to you.',
    illustration: 'student-ai-tutor' as const,
  },
  {
    icon: <Star className="w-6 h-6" />,
    title: 'Level Up Your Skills',
    description: 'Watch yourself improve as you earn XP and level up in every subject.',
    illustration: 'student-level-up' as const,
  },
];

const testimonials = [
  {
    quote: 'I used to hate math, but now it\'s actually fun! The badges make me want to keep learning.',
    author: 'Jake, Age 10',
    role: '5th Grader',
    rating: 5,
  },
  {
    quote: 'The AI tutor explains things way better than my textbook. I finally understand fractions!',
    author: 'Sophia, Age 12',
    role: '7th Grader',
    rating: 5,
  },
  {
    quote: 'I\'ve had a 30-day streak! My friends and I compete to see who can learn the most.',
    author: 'Marcus, Age 11',
    role: '6th Grader',
    rating: 5,
  },
  {
    quote: 'Tulomi helped me catch up when I missed school. Now I\'m ahead of my class!',
    author: 'Emily, Age 14',
    role: '9th Grader',
    rating: 5,
  },
  {
    quote: 'I love that lessons are about things I like. Learning about dinosaurs while doing math is awesome!',
    author: 'Noah, Age 8',
    role: '3rd Grader',
    rating: 5,
  },
  {
    quote: 'The practice quizzes are like playing a game. I don\'t even realize I\'m studying!',
    author: 'Ava, Age 13',
    role: '8th Grader',
    rating: 5,
  },
];

const stats = [
  { value: '🏆', label: '150+ Badges to Earn', icon: '🏆' },
  { value: '⭐', label: 'Unlimited XP', icon: '⭐' },
  { value: '🔥', label: 'Daily Streaks', icon: '🔥' },
  { value: '📚', label: '1000+ Fun Lessons', icon: '📚' },
];

export default function ForStudentsPage() {
  return (
    <>
      <Hero
        headline="Learn Anything, Have Fun Doing It!"
        subheadline="Earn badges, keep streaks, and level up while learning math, science, reading, and more!"
        primaryCTA={{ text: 'Start Learning Now', href: '/signup' }}
        variant="students"
      >
        {/* Fun illustration for students */}
        <div className="relative aspect-square max-w-md mx-auto">
          <div className="absolute inset-0 bg-gradient-to-br from-orange-400 to-yellow-500 rounded-3xl rotate-3 opacity-20" />
          <div className="absolute inset-0 bg-gradient-to-br from-orange-400 to-yellow-500 rounded-3xl -rotate-3 opacity-20" />
          <div className="relative bg-white dark:bg-gray-800 rounded-3xl shadow-2xl p-8 h-full flex flex-col items-center justify-center">
            <div className="text-7xl mb-4">🚀</div>
            <div className="flex gap-2 text-4xl mb-4">
              <span>🏆</span>
              <span>⭐</span>
              <span>🔥</span>
            </div>
            <p className="text-gray-500 dark:text-gray-400 font-medium">Level Up Your Learning!</p>
          </div>
        </div>
      </Hero>

      <StatsSection stats={stats} />

      <FeatureGrid
        title="Why Students Love Tulomi"
        subtitle="It's not just learning—it's an adventure!"
        features={features}
        columns={3}
      />

      <TestimonialCarousel
        title="What Students Are Saying"
        subtitle="Join thousands of students who are having fun while learning"
        testimonials={testimonials}
      />

      <CTASection
        headline="Ready to Start Your Learning Adventure?"
        subheadline="Join millions of students and start earning badges today!"
        ctaText="Start Learning Free"
        ctaHref="/signup"
        variant="gradient"
      />
    </>
  );
}
