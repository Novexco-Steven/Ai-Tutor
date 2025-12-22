import { BarChart3, Clock, Shield, Bell, Eye, Heart } from 'lucide-react';
import Hero from '../marketing/sections/Hero';
import FeatureGrid from '../marketing/sections/FeatureGrid';
import TestimonialCarousel from '../marketing/sections/TestimonialCarousel';
import FAQSection from '../marketing/sections/FAQSection';
import CTASection from '../marketing/sections/CTASection';

const features = [
  {
    icon: <BarChart3 className="w-6 h-6" />,
    title: 'Real-Time Progress Tracking',
    description: 'See exactly what your child is learning, their strengths, and areas that need attention.',
    highlight: true,
    illustration: 'parent-progress-tracking' as const,
  },
  {
    icon: <Clock className="w-6 h-6" />,
    title: 'Screen Time Controls',
    description: 'Set daily learning limits and schedules that work for your family.',
    illustration: 'parent-screen-time' as const,
  },
  {
    icon: <Shield className="w-6 h-6" />,
    title: 'Safe Learning Environment',
    description: 'COPPA compliant with no ads, no chat with strangers, and content moderation.',
    illustration: 'parent-safe-environment' as const,
  },
  {
    icon: <Bell className="w-6 h-6" />,
    title: 'Weekly Progress Reports',
    description: 'Receive detailed email reports on your child\'s achievements and recommendations.',
    illustration: 'parent-weekly-reports' as const,
  },
  {
    icon: <Eye className="w-6 h-6" />,
    title: 'Multi-Child Support',
    description: 'Manage multiple children from one account with individual profiles and progress.',
    illustration: 'parent-multi-child' as const,
  },
  {
    icon: <Heart className="w-6 h-6" />,
    title: 'Interest-Based Learning',
    description: 'Lessons are personalized using your child\'s interests to keep them engaged.',
    illustration: 'parent-interest-learning' as const,
  },
];

const testimonials = [
  {
    quote: 'As a working mom, I love that I can check my daughter\'s progress during my lunch break. The weekly reports are incredibly detailed.',
    author: 'Maria S.',
    role: 'Mother of 3rd Grader',
    rating: 5,
  },
  {
    quote: 'The screen time controls are a game changer. My kids get their learning in, and I don\'t have to worry about them spending too much time on screens.',
    author: 'David K.',
    role: 'Father of 2 Kids',
    rating: 5,
  },
  {
    quote: 'I was skeptical about online learning, but Tulomi proved me wrong. My son actually asks to use it!',
    author: 'Lisa T.',
    role: 'Parent of 5th Grader',
    rating: 5,
  },
  {
    quote: 'The safety features give me peace of mind. I know exactly what my children are exposed to.',
    author: 'Robert M.',
    role: 'Father of 3',
    rating: 5,
  },
];

const faqs = [
  {
    question: 'How does Tulomi personalize learning for my child?',
    answer: 'Tulomi uses AI to assess your child\'s current knowledge level, learning style, and interests. Lessons are then tailored to their pace, using topics they care about to explain concepts. The system continuously adapts based on their performance.',
  },
  {
    question: 'Is Tulomi safe for my child?',
    answer: 'Absolutely. We are COPPA compliant and take child safety seriously. There are no ads, no chat features with strangers, and all content is carefully moderated. We use bank-level encryption to protect your family\'s data.',
  },
  {
    question: 'How much screen time does Tulomi require?',
    answer: 'We recommend 15-30 minutes per day for optimal learning. You can set custom time limits in the parent dashboard, and the app will notify children when their learning time is up.',
  },
  {
    question: 'Can I track multiple children?',
    answer: 'Yes! With a Pro or Team plan, you can add multiple children to your account. Each child gets their own profile with personalized learning paths and progress tracking.',
  },
  {
    question: 'What subjects does Tulomi cover?',
    answer: 'Tulomi covers all core K-12 subjects including Mathematics, Science, Reading, Writing, and Social Studies. We\'re constantly adding new content aligned with national and state standards.',
  },
  {
    question: 'What if my child needs extra help?',
    answer: 'Our AI tutor is available 24/7 to explain concepts in different ways. If your child is struggling, the system automatically provides additional practice and alternative explanations. You\'ll also receive alerts about areas needing attention.',
  },
];

export default function ForParentsPage() {
  return (
    <>
      <Hero
        headline="Give Your Child the Learning Advantage"
        subheadline="Track progress, set boundaries, and watch your child thrive with personalized AI tutoring."
        primaryCTA={{ text: 'Start Free Trial', href: '/signup' }}
        secondaryCTA={{ text: 'See How It Works', href: '#' }}
        variant="parents"
      />

      <FeatureGrid
        title="Everything Parents Need"
        subtitle="Stay involved in your child's education with powerful tools designed for busy parents."
        features={features}
        columns={3}
      />

      <TestimonialCarousel
        title="Parents Love Tulomi"
        subtitle="Join thousands of parents who trust Tulomi with their children's education"
        testimonials={testimonials}
      />

      <FAQSection
        title="Frequently Asked Questions"
        subtitle="Everything you need to know about Tulomi for your family"
        faqs={faqs}
      />

      <CTASection
        headline="Start Your Child's Learning Journey Today"
        subheadline="Try Tulomi free for 7 days. No credit card required."
        ctaText="Get Started Free"
        ctaHref="/signup"
        variant="gradient"
      />
    </>
  );
}
