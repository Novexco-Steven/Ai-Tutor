import { Mail, MessageSquare, Phone, MapPin, Clock, Send } from 'lucide-react';
import { useState } from 'react';

const contactMethods = [
  {
    icon: <Mail className="w-6 h-6" />,
    title: 'Email Support',
    description: 'Get help via email within 24 hours',
    action: 'support@tulomi.com',
    href: 'mailto:support@tulomi.com',
  },
  {
    icon: <MessageSquare className="w-6 h-6" />,
    title: 'Live Chat',
    description: 'Chat with our support team',
    action: 'Start Chat',
    href: '#chat',
  },
  {
    icon: <Phone className="w-6 h-6" />,
    title: 'Phone Support',
    description: 'Premium plan members only',
    action: '1-800-TULOMI',
    href: 'tel:1-800-885664',
  },
];

const offices = [
  {
    city: 'San Francisco',
    address: '123 Education Way, Suite 400',
    region: 'San Francisco, CA 94105',
  },
  {
    city: 'Austin',
    address: '456 Learning Blvd, Floor 2',
    region: 'Austin, TX 78701',
  },
];

export default function ContactPage() {
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    subject: 'general',
    message: '',
  });
  const [submitted, setSubmitted] = useState(false);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    // In a real app, this would send to an API
    setSubmitted(true);
  };

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement | HTMLSelectElement>) => {
    setFormData(prev => ({
      ...prev,
      [e.target.name]: e.target.value,
    }));
  };

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Hero Section */}
      <div className="bg-gradient-to-br from-primary-600 to-primary-800 text-white py-16">
        <div className="max-w-4xl mx-auto px-4 text-center">
          <h1 className="text-4xl font-bold mb-4">Get in Touch</h1>
          <p className="text-xl text-primary-100">
            We're here to help. Reach out to us with any questions or feedback.
          </p>
        </div>
      </div>

      {/* Contact Methods */}
      <div className="max-w-6xl mx-auto px-4 -mt-8">
        <div className="grid md:grid-cols-3 gap-6">
          {contactMethods.map((method) => (
            <a
              key={method.title}
              href={method.href}
              className="bg-white rounded-xl p-6 shadow-lg border border-gray-100 hover:shadow-xl transition-shadow text-center"
            >
              <div className="inline-flex p-3 bg-primary-100 text-primary-600 rounded-lg mb-4">
                {method.icon}
              </div>
              <h3 className="font-semibold text-gray-900 text-lg mb-1">{method.title}</h3>
              <p className="text-gray-500 text-sm mb-3">{method.description}</p>
              <span className="text-primary-600 font-medium">{method.action}</span>
            </a>
          ))}
        </div>
      </div>

      {/* Main Content */}
      <div className="max-w-6xl mx-auto px-4 py-16">
        <div className="grid lg:grid-cols-2 gap-12">
          {/* Contact Form */}
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Send us a Message</h2>

            {submitted ? (
              <div className="bg-green-50 border border-green-200 rounded-xl p-8 text-center">
                <div className="inline-flex p-3 bg-green-100 text-green-600 rounded-full mb-4">
                  <Send className="w-6 h-6" />
                </div>
                <h3 className="text-xl font-semibold text-green-800 mb-2">Message Sent!</h3>
                <p className="text-green-700">
                  Thank you for reaching out. We'll get back to you within 24 hours.
                </p>
              </div>
            ) : (
              <form onSubmit={handleSubmit} className="space-y-6">
                <div>
                  <label htmlFor="name" className="block text-sm font-medium text-gray-700 mb-2">
                    Your Name
                  </label>
                  <input
                    type="text"
                    id="name"
                    name="name"
                    required
                    value={formData.name}
                    onChange={handleChange}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                    placeholder="John Smith"
                  />
                </div>

                <div>
                  <label htmlFor="email" className="block text-sm font-medium text-gray-700 mb-2">
                    Email Address
                  </label>
                  <input
                    type="email"
                    id="email"
                    name="email"
                    required
                    value={formData.email}
                    onChange={handleChange}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                    placeholder="john@example.com"
                  />
                </div>

                <div>
                  <label htmlFor="subject" className="block text-sm font-medium text-gray-700 mb-2">
                    Subject
                  </label>
                  <select
                    id="subject"
                    name="subject"
                    value={formData.subject}
                    onChange={handleChange}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                  >
                    <option value="general">General Inquiry</option>
                    <option value="support">Technical Support</option>
                    <option value="billing">Billing Question</option>
                    <option value="partnership">Partnership Opportunity</option>
                    <option value="feedback">Product Feedback</option>
                  </select>
                </div>

                <div>
                  <label htmlFor="message" className="block text-sm font-medium text-gray-700 mb-2">
                    Message
                  </label>
                  <textarea
                    id="message"
                    name="message"
                    required
                    rows={5}
                    value={formData.message}
                    onChange={handleChange}
                    className="w-full px-4 py-3 border border-gray-300 rounded-lg focus:ring-2 focus:ring-primary-500 focus:border-transparent resize-none"
                    placeholder="How can we help you?"
                  />
                </div>

                <button
                  type="submit"
                  className="w-full px-6 py-3 bg-primary-600 text-white rounded-lg font-medium hover:bg-primary-700 transition-colors"
                >
                  Send Message
                </button>
              </form>
            )}
          </div>

          {/* Additional Info */}
          <div>
            <h2 className="text-2xl font-bold text-gray-900 mb-6">Other Ways to Reach Us</h2>

            {/* Hours */}
            <div className="bg-white rounded-xl p-6 shadow-sm border border-gray-100 mb-6">
              <div className="flex items-start gap-4">
                <div className="p-2 bg-primary-100 text-primary-600 rounded-lg">
                  <Clock className="w-5 h-5" />
                </div>
                <div>
                  <h3 className="font-semibold text-gray-900 mb-2">Support Hours</h3>
                  <p className="text-gray-600 text-sm">Monday - Friday: 8am - 8pm EST</p>
                  <p className="text-gray-600 text-sm">Saturday: 9am - 5pm EST</p>
                  <p className="text-gray-600 text-sm">Sunday: Closed</p>
                </div>
              </div>
            </div>

            {/* Offices */}
            <div className="bg-white rounded-xl p-6 shadow-sm border border-gray-100">
              <div className="flex items-start gap-4 mb-4">
                <div className="p-2 bg-primary-100 text-primary-600 rounded-lg">
                  <MapPin className="w-5 h-5" />
                </div>
                <h3 className="font-semibold text-gray-900">Our Offices</h3>
              </div>
              <div className="space-y-4 pl-11">
                {offices.map((office) => (
                  <div key={office.city}>
                    <h4 className="font-medium text-gray-900">{office.city}</h4>
                    <p className="text-gray-600 text-sm">{office.address}</p>
                    <p className="text-gray-600 text-sm">{office.region}</p>
                  </div>
                ))}
              </div>
            </div>

            {/* FAQ Link */}
            <div className="mt-6 p-6 bg-gradient-to-br from-primary-50 to-secondary-50 rounded-xl">
              <h3 className="font-semibold text-gray-900 mb-2">Looking for quick answers?</h3>
              <p className="text-gray-600 text-sm mb-4">
                Check out our Help Center for instant answers to common questions.
              </p>
              <a
                href="/help-center"
                className="text-primary-600 font-medium hover:text-primary-700"
              >
                Visit Help Center →
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
