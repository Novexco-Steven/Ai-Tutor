export default function TermsPage() {
  return (
    <div className="min-h-screen bg-white">
      {/* Header */}
      <div className="bg-gray-900 text-white py-16">
        <div className="max-w-4xl mx-auto px-4">
          <h1 className="text-4xl font-bold mb-4">Terms of Service</h1>
          <p className="text-gray-400">Last updated: December 22, 2024</p>
        </div>
      </div>

      {/* Content */}
      <div className="max-w-4xl mx-auto px-4 py-12">
        <div className="prose prose-lg max-w-none">
          <p className="lead text-xl text-gray-600 mb-8">
            Welcome to Tulomi. By accessing or using our platform, you agree to be bound by these
            Terms of Service. Please read them carefully.
          </p>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">1. Acceptance of Terms</h2>
            <p className="text-gray-600">
              By creating an account or using Tulomi's services, you agree to these Terms of Service,
              our Privacy Policy, and any additional terms that may apply. If you do not agree to
              these terms, please do not use our services.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">2. Description of Service</h2>
            <p className="text-gray-600 mb-4">
              Tulomi provides an AI-powered educational tutoring platform for K-12 students. Our services include:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Personalized AI tutoring across multiple subjects</li>
              <li>Interactive lessons and practice quizzes</li>
              <li>Progress tracking and reporting</li>
              <li>Parent dashboard and controls</li>
              <li>Gamification features to encourage learning</li>
            </ul>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">3. Account Registration</h2>
            <p className="text-gray-600 mb-4">To use Tulomi, you must:</p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Be at least 18 years old, or have parental consent</li>
              <li>Provide accurate and complete registration information</li>
              <li>Maintain the security of your account credentials</li>
              <li>Promptly notify us of any unauthorized account access</li>
            </ul>
            <p className="text-gray-600 mt-4">
              Parents or guardians are responsible for their children's use of the platform and must
              provide consent for children under 13.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">4. Subscription and Payment</h2>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Free Trial</h3>
            <p className="text-gray-600 mb-4">
              New users may be eligible for a free trial period. At the end of the trial, you will
              be charged unless you cancel before the trial ends.
            </p>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Billing</h3>
            <p className="text-gray-600 mb-4">
              Paid subscriptions are billed in advance on a monthly or annual basis. By subscribing,
              you authorize us to charge your payment method automatically.
            </p>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Cancellation</h3>
            <p className="text-gray-600 mb-4">
              You may cancel your subscription at any time through your account settings. Cancellation
              will take effect at the end of your current billing period.
            </p>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Refunds</h3>
            <p className="text-gray-600">
              We offer refunds within 14 days of purchase if you're not satisfied with our service.
              Contact support@tulomi.com to request a refund.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">5. Acceptable Use</h2>
            <p className="text-gray-600 mb-4">When using Tulomi, you agree not to:</p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Use the service for any unlawful purpose</li>
              <li>Share your account credentials with others</li>
              <li>Attempt to access other users' accounts</li>
              <li>Interfere with or disrupt the service</li>
              <li>Use automated systems to access the platform without permission</li>
              <li>Upload harmful content or attempt to exploit the system</li>
              <li>Violate any applicable laws or regulations</li>
            </ul>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">6. Intellectual Property</h2>
            <p className="text-gray-600 mb-4">
              All content on Tulomi, including but not limited to text, graphics, logos, icons,
              images, audio, video, and software, is the property of Tulomi or its content suppliers
              and is protected by intellectual property laws.
            </p>
            <p className="text-gray-600">
              You are granted a limited, non-exclusive, non-transferable license to access and use
              Tulomi for personal, non-commercial educational purposes only.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">7. AI-Generated Content</h2>
            <p className="text-gray-600 mb-4">
              Our platform uses artificial intelligence to generate personalized educational content. While we strive for accuracy:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>AI-generated content is for educational purposes and should not be considered professional advice</li>
              <li>Content may occasionally contain errors or inaccuracies</li>
              <li>Users should verify important information through additional sources</li>
              <li>We continuously improve our AI systems based on feedback</li>
            </ul>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">8. Disclaimer of Warranties</h2>
            <p className="text-gray-600">
              Tulomi is provided "as is" and "as available" without warranties of any kind, either
              express or implied. We do not warrant that the service will be uninterrupted, secure,
              or error-free. We are not responsible for any learning outcomes or academic results.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">9. Limitation of Liability</h2>
            <p className="text-gray-600">
              To the maximum extent permitted by law, Tulomi shall not be liable for any indirect,
              incidental, special, consequential, or punitive damages, or any loss of profits or
              revenues, whether incurred directly or indirectly, or any loss of data, use, goodwill,
              or other intangible losses resulting from your use of our service.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">10. Indemnification</h2>
            <p className="text-gray-600">
              You agree to indemnify and hold harmless Tulomi and its officers, directors, employees,
              and agents from any claims, damages, losses, liabilities, and expenses arising out of
              your use of the service or violation of these terms.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">11. Changes to Terms</h2>
            <p className="text-gray-600">
              We reserve the right to modify these terms at any time. We will notify users of any
              material changes by email or through the platform. Your continued use of Tulomi after
              changes constitutes acceptance of the new terms.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">12. Termination</h2>
            <p className="text-gray-600">
              We may suspend or terminate your account at any time for violation of these terms or
              for any other reason at our discretion. Upon termination, your right to use the service
              will immediately cease.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">13. Governing Law</h2>
            <p className="text-gray-600">
              These terms shall be governed by and construed in accordance with the laws of the State
              of California, without regard to its conflict of law provisions. Any disputes shall be
              resolved in the courts of San Francisco County, California.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">14. Contact Information</h2>
            <p className="text-gray-600">
              If you have questions about these Terms of Service, please contact us:
            </p>
            <div className="mt-4 p-4 bg-gray-50 rounded-lg">
              <p className="text-gray-700"><strong>Tulomi Legal Team</strong></p>
              <p className="text-gray-600">Email: legal@tulomi.com</p>
              <p className="text-gray-600">Address: 123 Education Way, Suite 400, San Francisco, CA 94105</p>
            </div>
          </section>
        </div>
      </div>
    </div>
  );
}
