export default function PrivacyPage() {
  return (
    <div className="min-h-screen bg-white">
      {/* Header */}
      <div className="bg-gray-900 text-white py-16">
        <div className="max-w-4xl mx-auto px-4">
          <h1 className="text-4xl font-bold mb-4">Privacy Policy</h1>
          <p className="text-gray-400">Last updated: December 22, 2024</p>
        </div>
      </div>

      {/* Content */}
      <div className="max-w-4xl mx-auto px-4 py-12">
        <div className="prose prose-lg max-w-none">
          <p className="lead text-xl text-gray-600 mb-8">
            At Tulomi, we take your privacy seriously. This Privacy Policy explains how we collect,
            use, disclose, and safeguard your information when you use our educational platform.
          </p>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">1. Information We Collect</h2>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Personal Information</h3>
            <p className="text-gray-600 mb-4">
              We collect information you provide directly to us, including:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Name and email address when you create an account</li>
              <li>Child's name, age, and grade level for personalized learning</li>
              <li>Payment information when you subscribe to a paid plan</li>
              <li>Communications you send to us</li>
            </ul>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Learning Data</h3>
            <p className="text-gray-600 mb-4">
              To provide personalized education, we collect:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Lesson progress and quiz results</li>
              <li>Learning preferences and interests</li>
              <li>Time spent on different subjects and topics</li>
              <li>Interactions with the AI tutor</li>
            </ul>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Automatically Collected Information</h3>
            <p className="text-gray-600 mb-4">
              When you access our platform, we automatically collect:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Device information (type, operating system, browser)</li>
              <li>Usage data (pages visited, features used)</li>
              <li>IP address and general location</li>
              <li>Cookies and similar tracking technologies</li>
            </ul>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">2. How We Use Your Information</h2>
            <p className="text-gray-600 mb-4">We use the information we collect to:</p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Provide, maintain, and improve our educational services</li>
              <li>Personalize learning experiences for each student</li>
              <li>Generate progress reports for parents and educators</li>
              <li>Process payments and send transaction confirmations</li>
              <li>Send important updates and educational content</li>
              <li>Respond to your comments, questions, and support requests</li>
              <li>Analyze usage patterns to improve our platform</li>
              <li>Protect against fraud and unauthorized access</li>
            </ul>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">3. Children's Privacy (COPPA Compliance)</h2>
            <p className="text-gray-600 mb-4">
              We are committed to protecting children's privacy. Tulomi complies with the Children's
              Online Privacy Protection Act (COPPA). We:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Require parental consent before collecting personal information from children under 13</li>
              <li>Limit data collection to what is necessary for educational purposes</li>
              <li>Do not share children's personal information with third parties for marketing</li>
              <li>Allow parents to review, modify, or delete their child's information</li>
              <li>Do not condition a child's participation on providing more information than necessary</li>
            </ul>
            <p className="text-gray-600 mt-4">
              For more details, please see our <a href="/coppa" className="text-primary-600 hover:underline">COPPA Compliance</a> page.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">4. Information Sharing</h2>
            <p className="text-gray-600 mb-4">
              We do not sell your personal information. We may share information in the following circumstances:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li><strong>Service Providers:</strong> With vendors who help us operate our platform (hosting, payment processing, analytics)</li>
              <li><strong>Legal Requirements:</strong> When required by law or to protect our rights</li>
              <li><strong>Business Transfers:</strong> In connection with a merger, acquisition, or sale of assets</li>
              <li><strong>With Consent:</strong> With your permission for specific purposes</li>
            </ul>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">5. Data Security</h2>
            <p className="text-gray-600 mb-4">
              We implement industry-standard security measures to protect your information:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Encryption in transit (TLS/SSL) and at rest</li>
              <li>Regular security audits and vulnerability assessments</li>
              <li>Access controls and authentication requirements</li>
              <li>Secure data centers with physical security measures</li>
            </ul>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">6. Your Rights and Choices</h2>
            <p className="text-gray-600 mb-4">You have the right to:</p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Access the personal information we hold about you</li>
              <li>Correct inaccurate or incomplete information</li>
              <li>Delete your account and associated data</li>
              <li>Opt out of marketing communications</li>
              <li>Export your data in a portable format</li>
            </ul>
            <p className="text-gray-600 mt-4">
              To exercise these rights, please contact us at privacy@tulomi.com.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">7. Data Retention</h2>
            <p className="text-gray-600">
              We retain your information for as long as your account is active or as needed to provide
              services. Upon account deletion, we will delete or anonymize your data within 30 days,
              except where we need to retain it for legal or legitimate business purposes.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">8. Changes to This Policy</h2>
            <p className="text-gray-600">
              We may update this Privacy Policy from time to time. We will notify you of any material
              changes by posting the new policy on this page and updating the "Last updated" date.
              We encourage you to review this policy periodically.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">9. Contact Us</h2>
            <p className="text-gray-600">
              If you have questions about this Privacy Policy or our privacy practices, please contact us:
            </p>
            <div className="mt-4 p-4 bg-gray-50 rounded-lg">
              <p className="text-gray-700"><strong>Tulomi Privacy Team</strong></p>
              <p className="text-gray-600">Email: privacy@tulomi.com</p>
              <p className="text-gray-600">Address: 123 Education Way, Suite 400, San Francisco, CA 94105</p>
            </div>
          </section>
        </div>
      </div>
    </div>
  );
}
