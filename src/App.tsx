import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from './contexts/AuthContext';
import { UserProvider } from './contexts/UserContext';
import { SettingsProvider } from './contexts/SettingsContext';

// Lazy load components for code splitting
import { lazy, Suspense } from 'react';
import Loading from './components/shared/Loading';
import ProtectedRoute from './components/auth/ProtectedRoute';

// Auth
const Login = lazy(() => import('./components/auth/Login'));
const AuthCallback = lazy(() => import('./components/auth/AuthCallback'));

// Onboarding
const ProfileSetup = lazy(() => import('./components/onboarding/ProfileSetup'));
const InterestPicker = lazy(() => import('./components/onboarding/InterestPicker'));
const SubjectPicker = lazy(() => import('./components/onboarding/SubjectPicker'));
const DiagnosticQuiz = lazy(() => import('./components/onboarding/DiagnosticQuiz'));

// Main App
const Dashboard = lazy(() => import('./components/home/Dashboard'));
const TopicSelection = lazy(() => import('./components/lesson/TopicSelection'));
const LessonView = lazy(() => import('./components/lesson/LessonView'));
const PracticeQuiz = lazy(() => import('./components/practice/PracticeQuiz'));
const LessonSummary = lazy(() => import('./components/lesson/LessonSummary'));

// Settings
const SettingsScreen = lazy(() => import('./components/settings/SettingsScreen'));

function App() {
  return (
    <Router>
      <AuthProvider>
        <UserProvider>
          <SettingsProvider>
            <Suspense fallback={<Loading fullScreen />}>
              <Routes>
                {/* Auth Routes - Public */}
                <Route path="/login" element={<Login />} />
                <Route path="/auth/callback" element={<AuthCallback />} />

                {/* Onboarding Flow - Requires auth only */}
                <Route path="/onboarding">
                  <Route path="profile" element={<ProtectedRoute><ProfileSetup /></ProtectedRoute>} />
                  <Route path="interests" element={<ProtectedRoute><InterestPicker /></ProtectedRoute>} />
                  <Route path="subject" element={<ProtectedRoute><SubjectPicker /></ProtectedRoute>} />
                  <Route path="diagnostic" element={<ProtectedRoute><DiagnosticQuiz /></ProtectedRoute>} />
                </Route>

                {/* Main App - Requires auth + profile */}
                <Route path="/" element={<ProtectedRoute requireProfile><Dashboard /></ProtectedRoute>} />
                <Route path="/topics/:subjectId" element={<ProtectedRoute requireProfile><TopicSelection /></ProtectedRoute>} />
                <Route path="/lesson/:topicId" element={<ProtectedRoute requireProfile><LessonView /></ProtectedRoute>} />
                <Route path="/practice/:topicId" element={<ProtectedRoute requireProfile><PracticeQuiz /></ProtectedRoute>} />
                <Route path="/summary/:topicId" element={<ProtectedRoute requireProfile><LessonSummary /></ProtectedRoute>} />

                {/* Settings - Requires auth + profile */}
                <Route path="/settings" element={<ProtectedRoute requireProfile><SettingsScreen /></ProtectedRoute>} />

                {/* Default redirect to login */}
                <Route path="*" element={<Navigate to="/login" replace />} />
              </Routes>
            </Suspense>
          </SettingsProvider>
        </UserProvider>
      </AuthProvider>
    </Router>
  );
}

export default App;
