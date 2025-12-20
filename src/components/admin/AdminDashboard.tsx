import { useState } from 'react';
import { Link, Outlet, useLocation } from 'react-router-dom';
import {
  Settings,
  FileText,
  Users,
  Home,
  ChevronRight,
  Menu,
  X,
  MessageSquare,
  Globe,
  BookOpen,
} from 'lucide-react';

interface NavItem {
  label: string;
  path: string;
  icon: React.ReactNode;
}

const navItems: NavItem[] = [
  { label: 'Dashboard', path: '/admin', icon: <Home className="w-5 h-5" /> },
  { label: 'Prompts', path: '/admin/prompts', icon: <MessageSquare className="w-5 h-5" /> },
  { label: 'Locations', path: '/admin/locations', icon: <Globe className="w-5 h-5" /> },
  { label: 'Curriculum', path: '/admin/curriculum', icon: <BookOpen className="w-5 h-5" /> },
];

export default function AdminDashboard() {
  const location = useLocation();
  const [sidebarOpen, setSidebarOpen] = useState(false);

  const isActive = (path: string) => {
    if (path === '/admin') {
      return location.pathname === '/admin';
    }
    return location.pathname.startsWith(path);
  };

  return (
    <div className="min-h-screen bg-slate-900 flex">
      {/* Mobile sidebar overlay */}
      {sidebarOpen && (
        <div
          className="fixed inset-0 bg-black/50 z-40 lg:hidden"
          onClick={() => setSidebarOpen(false)}
        />
      )}

      {/* Sidebar */}
      <aside
        className={`fixed lg:static inset-y-0 left-0 z-50 w-64 bg-slate-800 border-r border-slate-700 transform transition-transform duration-200 ease-in-out ${
          sidebarOpen ? 'translate-x-0' : '-translate-x-full lg:translate-x-0'
        }`}
      >
        {/* Sidebar header */}
        <div className="h-16 flex items-center justify-between px-4 border-b border-slate-700">
          <Link to="/admin" className="flex items-center gap-2">
            <Settings className="w-6 h-6 text-blue-400" />
            <span className="text-lg font-semibold text-white">Admin</span>
          </Link>
          <button
            onClick={() => setSidebarOpen(false)}
            className="lg:hidden p-2 text-slate-400 hover:text-white"
          >
            <X className="w-5 h-5" />
          </button>
        </div>

        {/* Navigation */}
        <nav className="p-4 space-y-1">
          {navItems.map((item) => (
            <Link
              key={item.path}
              to={item.path}
              onClick={() => setSidebarOpen(false)}
              className={`flex items-center gap-3 px-3 py-2 rounded-lg transition-colors ${
                isActive(item.path)
                  ? 'bg-blue-500/20 text-blue-400'
                  : 'text-slate-400 hover:bg-slate-700 hover:text-white'
              }`}
            >
              {item.icon}
              <span>{item.label}</span>
              {isActive(item.path) && (
                <ChevronRight className="w-4 h-4 ml-auto" />
              )}
            </Link>
          ))}
        </nav>

        {/* Back to app link */}
        <div className="absolute bottom-4 left-4 right-4">
          <Link
            to="/"
            className="flex items-center gap-2 px-3 py-2 text-slate-400 hover:text-white transition-colors"
          >
            <Home className="w-5 h-5" />
            <span>Back to App</span>
          </Link>
        </div>
      </aside>

      {/* Main content */}
      <div className="flex-1 flex flex-col min-h-screen">
        {/* Top bar */}
        <header className="h-16 bg-slate-800 border-b border-slate-700 flex items-center px-4 lg:px-6">
          <button
            onClick={() => setSidebarOpen(true)}
            className="lg:hidden p-2 -ml-2 text-slate-400 hover:text-white"
          >
            <Menu className="w-6 h-6" />
          </button>

          {/* Breadcrumb */}
          <div className="flex items-center gap-2 text-sm">
            <span className="text-slate-500">Admin</span>
            {location.pathname !== '/admin' && (
              <>
                <ChevronRight className="w-4 h-4 text-slate-600" />
                <span className="text-slate-300 capitalize">
                  {location.pathname.split('/').pop()?.replace(/-/g, ' ')}
                </span>
              </>
            )}
          </div>
        </header>

        {/* Page content */}
        <main className="flex-1 p-4 lg:p-6 overflow-auto">
          <Outlet />
        </main>
      </div>
    </div>
  );
}

/**
 * Admin home page content
 */
export function AdminHome() {
  return (
    <div className="max-w-6xl mx-auto">
      <h1 className="text-2xl font-bold text-white mb-6">Admin Dashboard</h1>

      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        {/* Prompts Card */}
        <Link
          to="/admin/prompts"
          className="bg-slate-800 rounded-xl p-6 border border-slate-700 hover:border-blue-500/50 transition-colors group"
        >
          <div className="w-12 h-12 bg-blue-500/10 rounded-lg flex items-center justify-center mb-4 group-hover:bg-blue-500/20 transition-colors">
            <MessageSquare className="w-6 h-6 text-blue-400" />
          </div>
          <h2 className="text-lg font-semibold text-white mb-2">Prompt Templates</h2>
          <p className="text-slate-400 text-sm">
            Manage AI prompts for lessons, quizzes, and feedback. Configure per subject, topic, and location.
          </p>
        </Link>

        {/* Locations Card */}
        <Link
          to="/admin/locations"
          className="bg-slate-800 rounded-xl p-6 border border-slate-700 hover:border-green-500/50 transition-colors group"
        >
          <div className="w-12 h-12 bg-green-500/10 rounded-lg flex items-center justify-center mb-4 group-hover:bg-green-500/20 transition-colors">
            <Globe className="w-6 h-6 text-green-400" />
          </div>
          <h2 className="text-lg font-semibold text-white mb-2">Locations</h2>
          <p className="text-slate-400 text-sm">
            Configure supported countries and regions. Set curriculum standards and language variants.
          </p>
        </Link>

        {/* Curriculum Card */}
        <Link
          to="/admin/curriculum"
          className="bg-slate-800 rounded-xl p-6 border border-slate-700 hover:border-purple-500/50 transition-colors group"
        >
          <div className="w-12 h-12 bg-purple-500/10 rounded-lg flex items-center justify-center mb-4 group-hover:bg-purple-500/20 transition-colors">
            <BookOpen className="w-6 h-6 text-purple-400" />
          </div>
          <h2 className="text-lg font-semibold text-white mb-2">Curriculum</h2>
          <p className="text-slate-400 text-sm">
            Manage subjects, units, and topics. Review and approve custom topics.
          </p>
        </Link>
      </div>

      {/* Quick stats */}
      <div className="mt-8 grid gap-4 md:grid-cols-4">
        <div className="bg-slate-800/50 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-white">-</div>
          <div className="text-sm text-slate-400">Active Prompts</div>
        </div>
        <div className="bg-slate-800/50 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-white">-</div>
          <div className="text-sm text-slate-400">Locations</div>
        </div>
        <div className="bg-slate-800/50 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-white">-</div>
          <div className="text-sm text-slate-400">Subjects</div>
        </div>
        <div className="bg-slate-800/50 rounded-lg p-4 border border-slate-700">
          <div className="text-2xl font-bold text-white">-</div>
          <div className="text-sm text-slate-400">Topics</div>
        </div>
      </div>
    </div>
  );
}
