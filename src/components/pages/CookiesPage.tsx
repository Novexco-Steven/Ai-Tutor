import { Cookie, Shield, Settings, BarChart3, Target } from 'lucide-react';

const cookieTypes = [
  {
    icon: <Shield className="w-5 h-5" />,
    name: 'Essential Cookies',
    required: true,
    description: 'These cookies are necessary for the website to function and cannot be switched off. They are usually set in response to actions you take, such as logging in or filling in forms.',
    examples: ['Session management', 'Authentication', 'Security tokens', 'Load balancing'],
  },
  {
    icon: <Settings className="w-5 h-5" />,
    name: 'Functional Cookies',
    required: false,
    description: 'These cookies enable personalized features and functionality. They may be set by us or by third-party providers whose services we use.',
    examples: ['Language preferences', 'Theme settings', 'User preferences', 'Accessibility options'],
  },
  {
    icon: <BarChart3 className="w-5 h-5" />,
    name: 'Analytics Cookies',
    required: false,
    description: 'These cookies help us understand how visitors interact with our website by collecting and reporting information anonymously.',
    examples: ['Page views', 'Session duration', 'Navigation paths', 'Error tracking'],
  },
  {
    icon: <Target className="w-5 h-5" />,
    name: 'Marketing Cookies',
    required: false,
    description: 'These cookies may be set through our site by our advertising partners to build a profile of your interests and show you relevant ads.',
    examples: ['Ad targeting', 'Campaign tracking', 'Social media pixels', 'Remarketing'],
  },
];

const thirdPartyCookies = [
  {
    provider: 'Google Analytics',
    purpose: 'Website analytics and usage tracking',
    cookies: '_ga, _gid, _gat',
    retention: 'Up to 2 years',
  },
  {
    provider: 'Stripe',
    purpose: 'Payment processing and fraud prevention',
    cookies: '__stripe_mid, __stripe_sid',
    retention: 'Session to 1 year',
  },
  {
    provider: 'Intercom',
    purpose: 'Customer support chat functionality',
    cookies: 'intercom-id, intercom-session',
    retention: 'Up to 1 year',
  },
];

export default function CookiesPage() {
  return (
    <div className="min-h-screen bg-white">
      {/* Header */}
      <div className="bg-gray-900 text-white py-16">
        <div className="max-w-4xl mx-auto px-4">
          <div className="flex items-center gap-4 mb-4">
            <Cookie className="w-10 h-10" />
            <h1 className="text-4xl font-bold">Cookie Policy</h1>
          </div>
          <p className="text-gray-400">Last updated: December 22, 2024</p>
        </div>
      </div>

      {/* Content */}
      <div className="max-w-4xl mx-auto px-4 py-12">
        <div className="prose prose-lg max-w-none">
          <p className="lead text-xl text-gray-600 mb-8">
            This Cookie Policy explains how Tulomi uses cookies and similar technologies to recognize
            you when you visit our platform. It explains what these technologies are and why we use
            them, as well as your rights to control their use.
          </p>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">What are Cookies?</h2>
            <p className="text-gray-600 mb-4">
              Cookies are small text files that are placed on your device when you visit a website.
              They are widely used to make websites work more efficiently and provide information to
              the owners of the site.
            </p>
            <p className="text-gray-600">
              We use both first-party cookies (set by Tulomi) and third-party cookies (set by our
              service providers) for various purposes.
            </p>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Types of Cookies We Use</h2>
            <div className="space-y-6">
              {cookieTypes.map((type) => (
                <div key={type.name} className="bg-gray-50 rounded-xl p-6">
                  <div className="flex items-center gap-3 mb-3">
                    <div className="p-2 bg-primary-100 text-primary-600 rounded-lg">
                      {type.icon}
                    </div>
                    <h3 className="text-lg font-semibold text-gray-900">{type.name}</h3>
                    {type.required && (
                      <span className="px-2 py-1 bg-yellow-100 text-yellow-800 text-xs font-medium rounded">
                        Required
                      </span>
                    )}
                  </div>
                  <p className="text-gray-600 mb-4">{type.description}</p>
                  <div className="flex flex-wrap gap-2">
                    {type.examples.map((example) => (
                      <span
                        key={example}
                        className="px-3 py-1 bg-white text-gray-600 text-sm rounded-full border border-gray-200"
                      >
                        {example}
                      </span>
                    ))}
                  </div>
                </div>
              ))}
            </div>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Third-Party Cookies</h2>
            <p className="text-gray-600 mb-6">
              We work with third-party service providers who may set cookies on your device.
              Here are the main third-party cookies we use:
            </p>
            <div className="overflow-x-auto">
              <table className="w-full border-collapse">
                <thead>
                  <tr className="bg-gray-100">
                    <th className="text-left p-4 font-semibold text-gray-900">Provider</th>
                    <th className="text-left p-4 font-semibold text-gray-900">Purpose</th>
                    <th className="text-left p-4 font-semibold text-gray-900">Cookies</th>
                    <th className="text-left p-4 font-semibold text-gray-900">Retention</th>
                  </tr>
                </thead>
                <tbody>
                  {thirdPartyCookies.map((cookie) => (
                    <tr key={cookie.provider} className="border-b border-gray-200">
                      <td className="p-4 text-gray-900 font-medium">{cookie.provider}</td>
                      <td className="p-4 text-gray-600">{cookie.purpose}</td>
                      <td className="p-4 text-gray-600 font-mono text-sm">{cookie.cookies}</td>
                      <td className="p-4 text-gray-600">{cookie.retention}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">How to Control Cookies</h2>
            <p className="text-gray-600 mb-4">
              You have the right to decide whether to accept or reject cookies. You can exercise
              your cookie preferences in the following ways:
            </p>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Cookie Consent Banner</h3>
            <p className="text-gray-600 mb-4">
              When you first visit our website, you will be presented with a cookie consent banner
              where you can accept or customize your preferences.
            </p>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Browser Settings</h3>
            <p className="text-gray-600 mb-4">
              Most browsers allow you to control cookies through their settings. You can typically
              find these in the "Options" or "Preferences" menu of your browser.
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li><a href="https://support.google.com/chrome/answer/95647" className="text-primary-600 hover:underline">Chrome</a></li>
              <li><a href="https://support.mozilla.org/en-US/kb/cookies-information-websites-store-on-your-computer" className="text-primary-600 hover:underline">Firefox</a></li>
              <li><a href="https://support.apple.com/guide/safari/manage-cookies-and-website-data-sfri11471" className="text-primary-600 hover:underline">Safari</a></li>
              <li><a href="https://support.microsoft.com/en-us/windows/delete-and-manage-cookies-168dab11-0753-043d-7c16-ede5947fc64d" className="text-primary-600 hover:underline">Edge</a></li>
            </ul>

            <h3 className="text-lg font-semibold text-gray-800 mt-6 mb-3">Opt-Out Tools</h3>
            <p className="text-gray-600">
              For advertising cookies, you can opt out through the{' '}
              <a href="https://optout.networkadvertising.org/" className="text-primary-600 hover:underline">
                Network Advertising Initiative
              </a>{' '}
              or{' '}
              <a href="https://optout.aboutads.info/" className="text-primary-600 hover:underline">
                Digital Advertising Alliance
              </a>.
            </p>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Children and Cookies</h2>
            <p className="text-gray-600">
              We do not use behavioral advertising cookies for children under 13. For student
              accounts, we limit cookie usage to essential and functional cookies necessary for the
              educational experience. We comply with COPPA requirements for data collection from children.
            </p>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Updates to This Policy</h2>
            <p className="text-gray-600">
              We may update this Cookie Policy from time to time to reflect changes in technology,
              regulation, or our business practices. Any changes will be posted on this page with an
              updated revision date.
            </p>
          </section>

          <section className="mb-8">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Contact Us</h2>
            <p className="text-gray-600">
              If you have questions about our use of cookies, please contact us:
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
