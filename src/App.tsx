import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from './contexts/AuthContext';
import { UserProvider } from './contexts/UserContext';
import { SettingsProvider } from './contexts/SettingsContext';

// Lazy load components for code splitting
import { lazy, Suspense } from 'react';
import Loading from './components/shared/Loading';

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
                {/* Onboarding Flow */}
                <Route path="/onboarding">
                  <Route path="profile" element={<ProfileSetup />} />
                  <Route path="interests" element={<InterestPicker />} />
                  <Route path="subject" element={<SubjectPicker />} />
                  <Route path="diagnostic" element={<DiagnosticQuiz />} />
                </Route>

                {/* Main App */}
                <Route path="/" element={<Dashboard />} />
                <Route path="/topics/:subjectId" element={<TopicSelection />} />
                <Route path="/lesson/:topicId" element={<LessonView />} />
                <Route path="/practice/:topicId" element={<PracticeQuiz />} />
                <Route path="/summary/:topicId" element={<LessonSummary />} />

                {/* Settings */}
                <Route path="/settings" element={<SettingsScreen />} />

                {/* Default redirect */}
                <Route path="*" element={<Navigate to="/" replace />} />
              </Routes>
            </Suspense>
          </SettingsProvider>
        </UserProvider>
      </AuthProvider>
    </Router>
  );
}

export default App;
