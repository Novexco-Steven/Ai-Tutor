import Hero from '../marketing/sections/Hero';
import PricingTable from '../marketing/pricing/PricingTable';
import FAQSection from '../marketing/sections/FAQSection';
import CTASection from '../marketing/sections/CTASection';

const faqs = [
  {
    question: 'Can I try Tulomi for free?',
    answer: 'Yes! Our Free plan gives you access to 3 lessons per week with basic features. No credit card required. When you\'re ready for unlimited learning, you can upgrade to Pro.',
  },
  {
    question: 'What\'s included in the Pro plan?',
    answer: 'Pro includes unlimited lessons across all subjects, advanced analytics, custom learning paths, priority support, offline mode, and an ad-free experience. It\'s perfect for serious learners and families.',
  },
  {
    question: 'Can I cancel anytime?',
    answer: 'Absolutely! There are no long-term contracts. You can cancel your subscription at any time from your account settings. You\'ll continue to have access until the end of your billing period.',
  },
  {
    question: 'Do you offer family plans?',
    answer: 'Yes! With Pro, you can add multiple learners to your account at no extra cost. Each learner gets their own personalized profile and progress tracking.',
  },
  {
    question: 'What payment methods do you accept?',
    answer: 'We accept all major credit cards (Visa, MasterCard, American Express), PayPal, and Apple Pay. For Team/Enterprise plans, we also offer invoicing.',
  },
  {
    question: 'Is there a discount for schools?',
    answer: 'Yes! We offer special pricing for schools and districts. Contact our education team for a custom quote. We also have grants available for Title I schools.',
  },
  {
    question: 'What happens to my data if I cancel?',
    answer: 'Your learning data and progress are retained for 30 days after cancellation, giving you time to reconsider or export your data. After that, it\'s permanently deleted per our privacy policy.',
  },
  {
    question: 'Do you offer refunds?',
    answer: 'We offer a 7-day money-back guarantee for all new Pro subscriptions. If you\'re not satisfied, contact us within 7 days for a full refund.',
  },
];

export default function PricingPage() {
  return (
    <>
      <Hero
        headline="Simple, Transparent Pricing"
        subheadline="Start free, upgrade when you're ready. No hidden fees, no surprises."
        primaryCTA={{ text: 'Get Started Free', href: '/signup' }}
        variant="home"
      />

      <PricingTable />

      <FAQSection
        title="Pricing Questions"
        subtitle="Everything you need to know about our plans"
        faqs={faqs}
      />

      <CTASection
        headline="Start Learning Today"
        subheadline="Join thousands of learners. Try Tulomi free—no credit card required."
        ctaText="Get Started Free"
        ctaHref="/signup"
        variant="gradient"
      />
    </>
  );
}
