import { Search, BookOpen, MessageCircle, Video, FileText, ChevronRight } from 'lucide-react';
import { useState } from 'react';
import { Link } from 'react-router-dom';

const helpCategories = [
  {
    icon: <BookOpen className="w-6 h-6" />,
    title: 'Getting Started',
    description: 'Learn the basics of using Tulomi',
    articles: [
      { title: 'Creating your account', slug: 'creating-account' },
      { title: 'Setting up your child\'s profile', slug: 'child-profile' },
      { title: 'Choosing subjects and grade level', slug: 'subjects-grades' },
      { title: 'Understanding the dashboard', slug: 'dashboard-guide' },
    ],
  },
  {
    icon: <Video className="w-6 h-6" />,
    title: 'Lessons & Learning',
    description: 'Make the most of tutoring sessions',
    articles: [
      { title: 'How AI tutoring works', slug: 'ai-tutoring' },
      { title: 'Taking practice quizzes', slug: 'practice-quizzes' },
      { title: 'Tracking progress', slug: 'tracking-progress' },
      { title: 'Using voice features', slug: 'voice-features' },
    ],
  },
  {
    icon: <MessageCircle className="w-6 h-6" />,
    title: 'Parent Features',
    description: 'Monitor and manage your child\'s learning',
    articles: [
      { title: 'Parent dashboard overview', slug: 'parent-dashboard' },
      { title: 'Setting screen time limits', slug: 'screen-time' },
      { title: 'Understanding progress reports', slug: 'progress-reports' },
      { title: 'Managing multiple children', slug: 'multiple-children' },
    ],
  },
  {
    icon: <FileText className="w-6 h-6" />,
    title: 'Account & Billing',
    description: 'Manage your subscription and account',
    articles: [
      { title: 'Subscription plans explained', slug: 'subscription-plans' },
      { title: 'Updating payment information', slug: 'payment-info' },
      { title: 'Canceling your subscription', slug: 'cancel-subscription' },
      { title: 'Requesting a refund', slug: 'refund-request' },
    ],
  },
];

const popularArticles = [
  { title: 'How to reset your password', views: '2.4k' },
  { title: 'Why is my child seeing the wrong grade level?', views: '1.8k' },
  { title: 'How to contact support', views: '1.5k' },
  { title: 'Understanding the XP and leveling system', views: '1.2k' },
  { title: 'Troubleshooting audio issues', views: '980' },
];

export default function HelpCenterPage() {
  const [searchQuery, setSearchQuery] = useState('');

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Hero Section */}
      <div className="bg-gradient-to-br from-primary-600 to-primary-800 text-white py-16">
        <div className="max-w-4xl mx-auto px-4 text-center">
          <h1 className="text-4xl font-bold mb-4">How can we help you?</h1>
          <p className="text-xl text-primary-100 mb-8">
            Search our knowledge base or browse categories below
          </p>
          <div className="relative max-w-2xl mx-auto">
            <Search className="absolute left-4 top-1/2 transform -translate-y-1/2 text-gray-400 w-5 h-5" />
            <input
              type="text"
              placeholder="Search for help articles..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="w-full pl-12 pr-4 py-4 rounded-xl text-gray-900 placeholder-gray-500 focus:outline-none focus:ring-4 focus:ring-primary-300"
            />
          </div>
        </div>
      </div>

      {/* Main Content */}
      <div className="max-w-6xl mx-auto px-4 py-12">
        {/* Categories Grid */}
        <section className="mb-16">
          <h2 className="text-2xl font-bold text-gray-900 mb-8">Browse by Category</h2>
          <div className="grid md:grid-cols-2 gap-6">
            {helpCategories.map((category) => (
              <div
                key={category.title}
                className="bg-white rounded-xl p-6 shadow-sm border border-gray-100 hover:shadow-md transition-shadow"
              >
                <div className="flex items-start gap-4 mb-4">
                  <div className="p-3 bg-primary-100 text-primary-600 rounded-lg">
                    {category.icon}
                  </div>
                  <div>
                    <h3 className="font-semibold text-gray-900 text-lg">{category.title}</h3>
                    <p className="text-gray-600 text-sm">{category.description}</p>
                  </div>
                </div>
                <ul className="space-y-2">
                  {category.articles.map((article) => (
                    <li key={article.slug}>
                      <button className="text-left w-full flex items-center justify-between text-gray-700 hover:text-primary-600 py-2 px-3 rounded-lg hover:bg-gray-50 transition-colors">
                        <span>{article.title}</span>
                        <ChevronRight className="w-4 h-4" />
                      </button>
                    </li>
                  ))}
                </ul>
              </div>
            ))}
          </div>
        </section>

        {/* Popular Articles */}
        <section className="mb-16">
          <h2 className="text-2xl font-bold text-gray-900 mb-8">Popular Articles</h2>
          <div className="bg-white rounded-xl shadow-sm border border-gray-100 divide-y divide-gray-100">
            {popularArticles.map((article) => (
              <button
                key={article.title}
                className="w-full flex items-center justify-between p-4 hover:bg-gray-50 transition-colors text-left"
              >
                <span className="text-gray-900">{article.title}</span>
                <div className="flex items-center gap-4">
                  <span className="text-sm text-gray-500">{article.views} views</span>
                  <ChevronRight className="w-4 h-4 text-gray-400" />
                </div>
              </button>
            ))}
          </div>
        </section>

        {/* Contact Support */}
        <section className="bg-gradient-to-br from-primary-50 to-secondary-50 rounded-2xl p-8 text-center">
          <h2 className="text-2xl font-bold text-gray-900 mb-4">Still need help?</h2>
          <p className="text-gray-600 mb-6 max-w-lg mx-auto">
            Our support team is here to help you with any questions or issues you may have.
          </p>
          <div className="flex flex-col sm:flex-row items-center justify-center gap-4">
            <Link
              to="/contact"
              className="px-6 py-3 bg-primary-600 text-white rounded-lg font-medium hover:bg-primary-700 transition-colors"
            >
              Contact Support
            </Link>
            <a
              href="mailto:support@tulomi.com"
              className="px-6 py-3 bg-white text-gray-700 rounded-lg font-medium hover:bg-gray-100 transition-colors border border-gray-200"
            >
              Email Us
            </a>
          </div>
        </section>
      </div>
    </div>
  );
}
