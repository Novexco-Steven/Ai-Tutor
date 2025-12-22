import { useState } from 'react';
import { Link, useLocation } from 'react-router-dom';
import { Menu, X, ChevronDown } from 'lucide-react';
import Button from '../../shared/Button';
import LanguagePicker from '../../shared/LanguagePicker';
import TulomiLogo from '../../shared/TulomiLogo';

interface NavItem {
  label: string;
  href: string;
  children?: { label: string; href: string; description: string }[];
}

const navItems: NavItem[] = [
  {
    label: 'Product',
    href: '#',
    children: [
      { label: 'For Parents', href: '/for-parents', description: 'Track your child\'s learning journey' },
      { label: 'For Teachers', href: '/for-teachers', description: 'AI-powered classroom assistant' },
      { label: 'For Students', href: '/for-students', description: 'Fun and engaging learning' },
    ],
  },
  { label: 'Pricing', href: '/pricing' },
];

export default function Navbar() {
  const location = useLocation();
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);
  const [openDropdown, setOpenDropdown] = useState<string | null>(null);

  const isActive = (href: string) => location.pathname === href;

  return (
    <nav className="fixed top-0 left-0 right-0 z-50 bg-white/80 dark:bg-gray-900/80 backdrop-blur-lg border-b border-gray-200 dark:border-gray-800">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between h-16">
          {/* Logo */}
          <Link to="/" className="flex items-center">
            <TulomiLogo size="md" variant="wordmark" />
          </Link>

          {/* Desktop Navigation */}
          <div className="hidden md:flex items-center gap-8">
            {navItems.map((item) => (
              <div key={item.label} className="relative">
                {item.children ? (
                  <button
                    onClick={() => setOpenDropdown(openDropdown === item.label ? null : item.label)}
                    onBlur={() => setTimeout(() => setOpenDropdown(null), 200)}
                    className="flex items-center gap-1 text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white font-medium transition-colors"
                  >
                    {item.label}
                    <ChevronDown className={`w-4 h-4 transition-transform ${openDropdown === item.label ? 'rotate-180' : ''}`} />
                  </button>
                ) : (
                  <Link
                    to={item.href}
                    className={`font-medium transition-colors ${
                      isActive(item.href)
                        ? 'text-primary-600 dark:text-primary-400'
                        : 'text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white'
                    }`}
                  >
                    {item.label}
                  </Link>
                )}

                {/* Dropdown */}
                {item.children && openDropdown === item.label && (
                  <div className="absolute top-full left-0 mt-2 w-64 bg-white dark:bg-gray-800 rounded-xl shadow-lg border border-gray-200 dark:border-gray-700 overflow-hidden">
                    {item.children.map((child) => (
                      <Link
                        key={child.href}
                        to={child.href}
                        className="block px-4 py-3 hover:bg-gray-50 dark:hover:bg-gray-700 transition-colors"
                      >
                        <div className="font-medium text-gray-900 dark:text-white">{child.label}</div>
                        <div className="text-sm text-gray-500 dark:text-gray-400">{child.description}</div>
                      </Link>
                    ))}
                  </div>
                )}
              </div>
            ))}
          </div>

          {/* CTA Buttons */}
          <div className="hidden md:flex items-center gap-4">
            <LanguagePicker variant="compact" />
            <Link to="/login">
              <Button variant="ghost" size="sm">
                Log in
              </Button>
            </Link>
            <Link to="/signup">
              <Button size="sm">
                Get Started Free
              </Button>
            </Link>
          </div>

          {/* Mobile Menu Button */}
          <button
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            className="md:hidden p-2 text-gray-600 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white"
          >
            {mobileMenuOpen ? <X className="w-6 h-6" /> : <Menu className="w-6 h-6" />}
          </button>
        </div>

        {/* Mobile Menu */}
        {mobileMenuOpen && (
          <div className="md:hidden py-4 border-t border-gray-200 dark:border-gray-700">
            <div className="space-y-2">
              {navItems.map((item) => (
                <div key={item.label}>
                  {item.children ? (
                    <div className="space-y-2">
                      <div className="px-4 py-2 text-sm font-semibold text-gray-500 dark:text-gray-400 uppercase">
                        {item.label}
                      </div>
                      {item.children.map((child) => (
                        <Link
                          key={child.href}
                          to={child.href}
                          onClick={() => setMobileMenuOpen(false)}
                          className="block px-4 py-2 text-gray-900 dark:text-white hover:bg-gray-50 dark:hover:bg-gray-800 rounded-lg"
                        >
                          {child.label}
                        </Link>
                      ))}
                    </div>
                  ) : (
                    <Link
                      to={item.href}
                      onClick={() => setMobileMenuOpen(false)}
                      className={`block px-4 py-2 rounded-lg ${
                        isActive(item.href)
                          ? 'bg-primary-50 dark:bg-primary-900/20 text-primary-600 dark:text-primary-400'
                          : 'text-gray-900 dark:text-white hover:bg-gray-50 dark:hover:bg-gray-800'
                      }`}
                    >
                      {item.label}
                    </Link>
                  )}
                </div>
              ))}
            </div>
            <div className="mt-4 pt-4 border-t border-gray-200 dark:border-gray-700 space-y-2 px-4">
              <div className="flex items-center justify-between py-2">
                <span className="text-sm text-gray-600 dark:text-gray-400">Language</span>
                <LanguagePicker />
              </div>
              <Link to="/login" onClick={() => setMobileMenuOpen(false)}>
                <Button variant="secondary" fullWidth>
                  Log in
                </Button>
              </Link>
              <Link to="/signup" onClick={() => setMobileMenuOpen(false)}>
                <Button fullWidth>
                  Get Started Free
                </Button>
              </Link>
            </div>
          </div>
        )}
      </div>
    </nav>
  );
}
