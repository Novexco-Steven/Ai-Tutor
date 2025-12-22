import { Shield, Lock, Eye, Trash2, AlertCircle, CheckCircle } from 'lucide-react';

const protections = [
  {
    icon: <Shield className="w-6 h-6" />,
    title: 'Parental Consent Required',
    description: 'We require verifiable parental consent before collecting any personal information from children under 13.',
  },
  {
    icon: <Lock className="w-6 h-6" />,
    title: 'Minimal Data Collection',
    description: 'We only collect information necessary to provide our educational services. No unnecessary data is ever collected.',
  },
  {
    icon: <Eye className="w-6 h-6" />,
    title: 'No Third-Party Marketing',
    description: 'We never share children\'s personal information with third parties for marketing or advertising purposes.',
  },
  {
    icon: <Trash2 className="w-6 h-6" />,
    title: 'Parental Control',
    description: 'Parents can review, modify, or delete their child\'s information at any time through the parent dashboard.',
  },
];

const dataCollected = [
  { item: 'First name and username', purpose: 'Account identification and personalization' },
  { item: 'Age or grade level', purpose: 'Age-appropriate content and difficulty' },
  { item: 'Learning progress', purpose: 'Adaptive tutoring and progress reports' },
  { item: 'Subject preferences', purpose: 'Personalized curriculum recommendations' },
  { item: 'Quiz responses', purpose: 'Assessment and learning optimization' },
];

const notCollected = [
  'Full name without parental consent',
  'Home address or physical location',
  'Phone numbers',
  'Social media profiles',
  'Photos or videos of children',
  'Biometric data',
];

export default function CoppaPage() {
  return (
    <div className="min-h-screen bg-white">
      {/* Header */}
      <div className="bg-gradient-to-br from-green-600 to-green-800 text-white py-16">
        <div className="max-w-4xl mx-auto px-4">
          <div className="flex items-center gap-3 mb-4">
            <Shield className="w-10 h-10" />
            <h1 className="text-4xl font-bold">COPPA Compliance</h1>
          </div>
          <p className="text-xl text-green-100">
            Protecting children's privacy is our top priority
          </p>
          <p className="text-green-200 mt-2">Last updated: December 22, 2024</p>
        </div>
      </div>

      {/* Content */}
      <div className="max-w-4xl mx-auto px-4 py-12">
        <div className="prose prose-lg max-w-none">
          <div className="bg-green-50 border border-green-200 rounded-xl p-6 mb-8">
            <div className="flex items-start gap-4">
              <CheckCircle className="w-6 h-6 text-green-600 flex-shrink-0 mt-1" />
              <div>
                <h3 className="text-lg font-semibold text-green-800 mb-2">COPPA Certified</h3>
                <p className="text-green-700">
                  Tulomi is fully compliant with the Children's Online Privacy Protection Act (COPPA).
                  We are committed to protecting the privacy of children under 13 years of age.
                </p>
              </div>
            </div>
          </div>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">What is COPPA?</h2>
            <p className="text-gray-600">
              The Children's Online Privacy Protection Act (COPPA) is a U.S. federal law designed to
              protect the privacy of children under 13 years old. It places requirements on operators
              of websites and online services directed at children, as well as general audience sites
              that knowingly collect personal information from children under 13.
            </p>
          </section>

          {/* Protections Grid */}
          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-6">How We Protect Your Child</h2>
            <div className="grid md:grid-cols-2 gap-6">
              {protections.map((protection) => (
                <div key={protection.title} className="bg-gray-50 rounded-xl p-6">
                  <div className="flex items-center gap-3 mb-3">
                    <div className="p-2 bg-green-100 text-green-600 rounded-lg">
                      {protection.icon}
                    </div>
                    <h3 className="font-semibold text-gray-900">{protection.title}</h3>
                  </div>
                  <p className="text-gray-600 text-sm">{protection.description}</p>
                </div>
              ))}
            </div>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Parental Consent Process</h2>
            <p className="text-gray-600 mb-4">
              Before a child under 13 can use Tulomi, we require verifiable parental consent through
              the following process:
            </p>
            <ol className="list-decimal pl-6 text-gray-600 space-y-3">
              <li>Parent creates an account using their email address</li>
              <li>Parent provides consent to create a child profile</li>
              <li>We verify parental consent through email verification and payment card verification</li>
              <li>Parent can then create and manage their child's learning profile</li>
              <li>Parent maintains full control over their child's account and data</li>
            </ol>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Information We Collect</h2>
            <p className="text-gray-600 mb-4">
              We collect only the minimum information necessary to provide our educational services:
            </p>
            <div className="overflow-x-auto">
              <table className="w-full border-collapse">
                <thead>
                  <tr className="bg-gray-100">
                    <th className="text-left p-4 font-semibold text-gray-900">Information</th>
                    <th className="text-left p-4 font-semibold text-gray-900">Purpose</th>
                  </tr>
                </thead>
                <tbody>
                  {dataCollected.map((data) => (
                    <tr key={data.item} className="border-b border-gray-200">
                      <td className="p-4 text-gray-900">{data.item}</td>
                      <td className="p-4 text-gray-600">{data.purpose}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Information We Do NOT Collect</h2>
            <div className="bg-red-50 border border-red-200 rounded-xl p-6">
              <div className="flex items-start gap-4 mb-4">
                <AlertCircle className="w-6 h-6 text-red-600 flex-shrink-0" />
                <p className="text-red-700 font-medium">
                  We never collect the following from children:
                </p>
              </div>
              <ul className="grid md:grid-cols-2 gap-2 pl-10">
                {notCollected.map((item) => (
                  <li key={item} className="text-red-700 flex items-center gap-2">
                    <span className="w-1.5 h-1.5 bg-red-400 rounded-full"></span>
                    {item}
                  </li>
                ))}
              </ul>
            </div>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Parental Rights</h2>
            <p className="text-gray-600 mb-4">
              As a parent or guardian, you have the right to:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2">
              <li>Review the personal information we have collected about your child</li>
              <li>Request that we delete your child's personal information</li>
              <li>Refuse to permit further collection or use of your child's information</li>
              <li>Modify or update your child's information</li>
              <li>Receive a copy of your child's data in a portable format</li>
            </ul>
            <p className="text-gray-600 mt-4">
              To exercise any of these rights, please contact us at privacy@tulomi.com or through
              your parent dashboard.
            </p>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Data Security</h2>
            <p className="text-gray-600">
              We implement robust security measures to protect children's information, including:
            </p>
            <ul className="list-disc pl-6 text-gray-600 space-y-2 mt-4">
              <li>End-to-end encryption for all data transmission</li>
              <li>Encrypted storage of personal information</li>
              <li>Regular security audits and penetration testing</li>
              <li>Strict access controls and employee training</li>
              <li>Immediate breach notification procedures</li>
            </ul>
          </section>

          <section className="mb-12">
            <h2 className="text-2xl font-bold text-gray-900 mb-4">Contact Our Privacy Team</h2>
            <p className="text-gray-600 mb-4">
              If you have questions about our COPPA compliance or your child's privacy, please contact:
            </p>
            <div className="bg-gray-50 rounded-lg p-6">
              <p className="text-gray-700"><strong>Tulomi Children's Privacy Team</strong></p>
              <p className="text-gray-600">Email: coppa@tulomi.com</p>
              <p className="text-gray-600">Phone: 1-800-TULOMI (1-800-885-6646)</p>
              <p className="text-gray-600">Address: 123 Education Way, Suite 400, San Francisco, CA 94105</p>
            </div>
          </section>
        </div>
      </div>
    </div>
  );
}
