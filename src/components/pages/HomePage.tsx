import { Brain, Sparkles, Target, Users, BarChart3, Shield, Zap, BookOpen } from 'lucide-react';
import Hero from '../marketing/sections/Hero';
import TrustBadges from '../marketing/sections/TrustBadges';
import FeatureGrid from '../marketing/sections/FeatureGrid';
import StatsSection from '../marketing/sections/StatsSection';
import TestimonialCarousel from '../marketing/sections/TestimonialCarousel';
import CTASection from '../marketing/sections/CTASection';

const features = [
  {
    icon: <Brain className="w-6 h-6" />,
    title: 'AI-Powered Learning',
    description: 'Personalized lessons that adapt to each student\'s unique learning style and pace.',
    illustration: 'feature-ai-learning' as const,
  },
  {
    icon: <Sparkles className="w-6 h-6" />,
    title: 'Gamified Experience',
    description: 'Earn XP, unlock badges, and maintain streaks to stay motivated and engaged.',
    illustration: 'feature-gamified' as const,
  },
  {
    icon: <Target className="w-6 h-6" />,
    title: 'Curriculum Aligned',
    description: 'Content designed to align with K-12 standards across all major subjects.',
    illustration: 'feature-curriculum' as const,
  },
  {
    icon: <Users className="w-6 h-6" />,
    title: 'Parent Dashboard',
    description: 'Monitor progress, set limits, and stay involved in your child\'s education.',
    illustration: 'feature-parent-dashboard' as const,
  },
  {
    icon: <BarChart3 className="w-6 h-6" />,
    title: 'Detailed Analytics',
    description: 'Track performance, identify strengths, and address areas for improvement.',
    illustration: 'feature-analytics' as const,
  },
  {
    icon: <Shield className="w-6 h-6" />,
    title: 'Safe & Secure',
    description: 'COPPA compliant with bank-level security to protect your family\'s data.',
    illustration: 'feature-security' as const,
  },
];

const howItWorks = [
  {
    icon: <BookOpen className="w-6 h-6" />,
    title: '1. Choose Your Subject',
    description: 'Pick from math, science, reading, and more. Our AI tailors content to your grade level.',
    illustration: 'step-choose-subject' as const,
  },
  {
    icon: <Zap className="w-6 h-6" />,
    title: '2. Learn at Your Pace',
    description: 'Interactive lessons adapt in real-time. Get help when you\'re stuck, move faster when you\'re ready.',
    illustration: 'step-learn-pace' as const,
  },
  {
    icon: <Target className="w-6 h-6" />,
    title: '3. Track Your Progress',
    description: 'Watch your skills grow with detailed analytics. Parents and teachers stay informed.',
    illustration: 'step-track-progress' as const,
  },
];

const stats = [
  { value: '50K+', label: 'Active Students' },
  { value: '1M+', label: 'Lessons Completed' },
  { value: '4.9/5', label: 'Parent Rating' },
  { value: '95%', label: 'Improvement Rate' },
];

const testimonials = [
  {
    quote: 'My daughter went from struggling with math to actually enjoying it. The personalized lessons make such a difference!',
    author: 'Sarah M.',
    role: 'Parent of 4th Grader',
    rating: 5,
  },
  {
    quote: 'As a teacher, I love how Tulomi supplements my classroom instruction. The analytics help me identify which students need extra help.',
    author: 'Mr. Johnson',
    role: '5th Grade Teacher',
    rating: 5,
  },
  {
    quote: 'I actually look forward to my study time now. The badges and streaks make learning feel like a game!',
    author: 'Emma T.',
    role: '7th Grade Student',
    rating: 5,
  },
  {
    quote: 'Finally, an educational app that my kids choose to use over their games. Worth every penny.',
    author: 'Michael R.',
    role: 'Father of 3',
    rating: 5,
  },
  {
    quote: 'The parent dashboard gives me peace of mind. I can see exactly what my son is learning and how he\'s progressing.',
    author: 'Jennifer L.',
    role: 'Parent of 2nd Grader',
    rating: 5,
  },
  {
    quote: 'Tulomi helped me catch up after missing school. The AI tutor explains things in ways I actually understand.',
    author: 'Alex P.',
    role: '9th Grade Student',
    rating: 5,
  },
];

export default function HomePage() {
  return (
    <>
      <Hero
        headline="AI-Powered Tutoring for Every K-12 Student"
        subheadline="Personalized lessons, adaptive learning, and real-time progress tracking. Make education fun and effective."
        primaryCTA={{ text: 'Start Learning Free', href: '/signup' }}
        secondaryCTA={{ text: 'Watch Demo', href: '#' }}
        variant="home"
      />

      <TrustBadges title="Trusted by parents and educators worldwide" />

      <FeatureGrid
        title="Everything Your Child Needs to Succeed"
        subtitle="From personalized AI tutoring to comprehensive progress tracking, Tulomi has it all."
        features={features}
        columns={3}
      />

      <StatsSection stats={stats} />

      <TestimonialCarousel
        title="Loved by Families Everywhere"
        subtitle="See what parents, teachers, and students are saying about Tulomi"
        testimonials={testimonials}
      />

      <FeatureGrid
        title="How Tulomi Works"
        subtitle="Getting started is easy. Here's how your child will begin their learning journey."
        features={howItWorks}
        columns={3}
      />

      <CTASection
        headline="Ready to Transform Your Child's Education?"
        subheadline="Join thousands of families already using Tulomi. Start your free trial today."
        ctaText="Get Started Free"
        ctaHref="/signup"
        variant="gradient"
      />
    </>
  );
}
