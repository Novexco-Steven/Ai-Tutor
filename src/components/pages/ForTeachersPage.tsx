import { Users, BarChart3, BookOpen, Zap, Clock, Layers } from 'lucide-react';
import Hero from '../marketing/sections/Hero';
import FeatureGrid from '../marketing/sections/FeatureGrid';
import TestimonialCarousel from '../marketing/sections/TestimonialCarousel';
import FAQSection from '../marketing/sections/FAQSection';
import CTASection from '../marketing/sections/CTASection';
import PricingTable from '../marketing/pricing/PricingTable';

const features = [
  {
    icon: <Users className="w-6 h-6" />,
    title: 'Classroom Management',
    description: 'Easily manage your entire class, assign lessons, and track progress from one dashboard.',
    highlight: true,
    illustration: 'educator-classroom' as const,
  },
  {
    icon: <BarChart3 className="w-6 h-6" />,
    title: 'Student Analytics',
    description: 'Identify struggling students early with detailed performance analytics and insights.',
    illustration: 'educator-analytics' as const,
  },
  {
    icon: <BookOpen className="w-6 h-6" />,
    title: 'Curriculum Alignment',
    description: 'Content aligned with Common Core and state standards. Easily integrate with your lesson plans.',
    illustration: 'educator-curriculum' as const,
  },
  {
    icon: <Zap className="w-6 h-6" />,
    title: 'Auto-Differentiation',
    description: 'AI automatically adjusts difficulty for each student, so every learner is challenged appropriately.',
    illustration: 'educator-differentiation' as const,
  },
  {
    icon: <Clock className="w-6 h-6" />,
    title: 'Time Saver',
    description: 'Reduce grading time with automatic assessments and progress reports.',
    illustration: 'educator-time-saver' as const,
  },
  {
    icon: <Layers className="w-6 h-6" />,
    title: 'LMS Integration',
    description: 'Seamlessly integrate with Google Classroom, Canvas, and other popular LMS platforms.',
    illustration: 'educator-lms' as const,
  },
];

const testimonials = [
  {
    quote: 'Tulomi has transformed how I differentiate instruction. Every student gets what they need, automatically.',
    author: 'Ms. Rodriguez',
    role: '4th Grade Teacher',
    rating: 5,
  },
  {
    quote: 'The analytics dashboard helps me identify which students need extra support before they fall behind.',
    author: 'Mr. Thompson',
    role: 'Middle School Math',
    rating: 5,
  },
  {
    quote: 'Integration with Google Classroom was seamless. My students were up and running in minutes.',
    author: 'Mrs. Chen',
    role: '6th Grade Science',
    rating: 5,
  },
  {
    quote: 'I\'ve reduced my grading time by hours each week. The automatic assessments are a lifesaver.',
    author: 'Mr. Williams',
    role: 'High School English',
    rating: 5,
  },
];

const faqs = [
  {
    question: 'How does Tulomi integrate with my existing curriculum?',
    answer: 'Tulomi content is aligned with Common Core and major state standards. You can assign specific topics that match your lesson plans, or let students explore at their own pace. Our curriculum mapping tool helps you find content that complements your teaching.',
  },
  {
    question: 'Can I track all my students in one place?',
    answer: 'Yes! The teacher dashboard gives you a comprehensive view of your entire class. See who\'s on track, who needs help, and what topics are causing the most difficulty. You can also drill down into individual student reports.',
  },
  {
    question: 'How does the auto-differentiation work?',
    answer: 'Our AI assesses each student\'s current level and learning pace. It automatically adjusts the difficulty of lessons and practice problems. Advanced students get more challenging content, while struggling students receive additional scaffolding and support.',
  },
  {
    question: 'What LMS platforms do you integrate with?',
    answer: 'We currently integrate with Google Classroom, Canvas, Clever, and ClassLink. Single Sign-On (SSO) is supported for easy student access. Contact us if you need integration with a different platform.',
  },
  {
    question: 'Is there a free option for schools?',
    answer: 'We offer special pricing for schools and districts. Reach out to our education team for a custom quote that fits your needs. We also have grants available for Title I schools.',
  },
  {
    question: 'How do I get started with my class?',
    answer: 'Getting started is easy! Create a teacher account, set up your class, and invite students via email or class code. You can also import your roster from Google Classroom or your school\'s SIS.',
  },
];

export default function ForTeachersPage() {
  return (
    <>
      <Hero
        headline="Your AI Teaching Assistant"
        subheadline="Save time, differentiate instruction, and help every student succeed with powerful classroom tools."
        primaryCTA={{ text: 'Request Demo', href: '#' }}
        secondaryCTA={{ text: 'Start Free Trial', href: '/signup' }}
        variant="teachers"
      />

      <FeatureGrid
        title="Built for Educators"
        subtitle="Everything you need to enhance your classroom and support every learner."
        features={features}
        columns={3}
      />

      <TestimonialCarousel
        title="Trusted by Teachers"
        subtitle="Hear from educators who use Tulomi every day"
        testimonials={testimonials}
      />

      <PricingTable
        title="Plans for Every Classroom"
        subtitle="From individual teachers to entire districts, we have a plan that works for you."
      />

      <FAQSection
        title="Questions from Educators"
        subtitle="Everything you need to know about using Tulomi in your classroom"
        faqs={faqs}
      />

      <CTASection
        headline="Ready to Transform Your Classroom?"
        subheadline="Join thousands of teachers using Tulomi to help their students succeed."
        ctaText="Request a Demo"
        ctaHref="#"
        variant="gradient"
      />
    </>
  );
}
