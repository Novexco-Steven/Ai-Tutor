import { Link } from 'react-router-dom';
import { Twitter, Linkedin, Facebook, Instagram } from 'lucide-react';
import TulomiLogo from '../../shared/TulomiLogo';

const footerLinks = {
  Product: [
    { label: 'For Parents', href: '/for-parents' },
    { label: 'For Teachers', href: '/for-teachers' },
    { label: 'For Students', href: '/for-students' },
    { label: 'Pricing', href: '/pricing' },
  ],
  Resources: [
    { label: 'Help Center', href: '/help-center' },
  ],
  Company: [
    { label: 'About Us', href: '/about' },
    { label: 'Contact', href: '/contact' },
  ],
  Legal: [
    { label: 'Privacy Policy', href: '/privacy' },
    { label: 'Terms of Service', href: '/terms' },
    { label: 'Cookie Policy', href: '/cookies' },
    { label: 'COPPA Compliance', href: '/coppa' },
  ],
};

const socialLinks = [
  { icon: Twitter, href: '#', label: 'Twitter' },
  { icon: Linkedin, href: '#', label: 'LinkedIn' },
  { icon: Facebook, href: '#', label: 'Facebook' },
  { icon: Instagram, href: '#', label: 'Instagram' },
];

export default function Footer() {
  return (
    <footer className="bg-gray-900 text-white">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12">
        <div className="grid grid-cols-2 md:grid-cols-6 gap-8">
          {/* Logo and Description */}
          <div className="col-span-2">
            <Link to="/" className="flex items-center mb-4">
              <TulomiLogo size="md" variant="wordmark" textColor="light" />
            </Link>
            <p className="text-gray-400 text-sm mb-6 max-w-xs">
              AI-powered tutoring that makes learning fun and personalized for every K-12 student.
            </p>
            {/* Social Links */}
            <div className="flex items-center gap-4">
              {socialLinks.map((social) => (
                <a
                  key={social.label}
                  href={social.href}
                  aria-label={social.label}
                  className="text-gray-400 hover:text-white transition-colors"
                >
                  <social.icon className="w-5 h-5" />
                </a>
              ))}
            </div>
          </div>

          {/* Link Columns */}
          {Object.entries(footerLinks).map(([category, links]) => (
            <div key={category}>
              <h3 className="font-semibold text-white mb-4">{category}</h3>
              <ul className="space-y-3">
                {links.map((link) => (
                  <li key={link.label}>
                    <Link
                      to={link.href}
                      className="text-gray-400 hover:text-white text-sm transition-colors"
                    >
                      {link.label}
                    </Link>
                  </li>
                ))}
              </ul>
            </div>
          ))}
        </div>

        {/* Bottom Bar */}
        <div className="mt-12 pt-8 border-t border-gray-800 flex flex-col md:flex-row items-center justify-between gap-4">
          <p className="text-gray-400 text-sm">
            © {new Date().getFullYear()} Tulomi. All rights reserved.
          </p>
          <div className="flex items-center gap-6 text-sm text-gray-400">
            <span>Made with love for learners everywhere</span>
          </div>
        </div>
      </div>
    </footer>
  );
}
