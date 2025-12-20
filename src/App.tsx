import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from './contexts/AuthContext';
import { UserProvider } from './contexts/UserContext';
import { SettingsProvider } from './contexts/SettingsContext';
import { GamificationProvider } from './contexts/GamificationContext';
import { StudySessionProvider } from './contexts/StudySessionContext';
import { NotificationProvider } from './contexts/NotificationContext';
import ErrorBoundary from './components/shared/ErrorBoundary';

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
const CurriculumView = lazy(() => import('./components/curriculum/CurriculumView'));
const TopicSelection = lazy(() => import('./components/lesson/TopicSelection'));
const LessonView = lazy(() => import('./components/lesson/LessonView'));
const CustomLessonView = lazy(() => import('./components/lesson/CustomLessonView'));
const PracticeQuiz = lazy(() => import('./components/practice/PracticeQuiz'));
const LessonSummary = lazy(() => import('./components/lesson/LessonSummary'));

// Settings
const SettingsScreen = lazy(() => import('./components/settings/SettingsScreen'));

// Tools
const ScanToSolve = lazy(() => import('./components/tools/ScanToSolve'));
const MathToolsHub = lazy(() => import('./components/tools/MathToolsHub'));

// Avatar
const AvatarBuilder = lazy(() => import('./components/avatar/AvatarBuilder'));

// Parent
const ParentDashboard = lazy(() => import('./components/parent/ParentDashboard'));

// Admin
const AdminRoute = lazy(() => import('./components/admin/AdminRoute'));
const AdminDashboard = lazy(() => import('./components/admin/AdminDashboard'));
const AdminHome = lazy(() => import('./components/admin/AdminDashboard').then(m => ({ default: m.AdminHome })));
const PromptTemplateList = lazy(() => import('./components/admin/prompts/PromptTemplateList'));
const PromptTemplateForm = lazy(() => import('./components/admin/prompts/PromptTemplateForm'));

function App() {
  return (
    <ErrorBoundary>
      <NotificationProvider>
        <Router>
          <AuthProvider>
        <UserProvider>
          <SettingsProvider>
            <GamificationProvider>
              <StudySessionProvider>
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
                <Route path="/curriculum/:subjectId" element={<ProtectedRoute requireProfile><CurriculumView /></ProtectedRoute>} />
                <Route path="/topics/:subjectId" element={<ProtectedRoute requireProfile><TopicSelection /></ProtectedRoute>} />
                <Route path="/lesson/:topicId" element={<ProtectedRoute requireProfile><LessonView /></ProtectedRoute>} />
                <Route path="/custom-lesson/:customTopicId" element={<ProtectedRoute requireProfile><CustomLessonView /></ProtectedRoute>} />
                <Route path="/practice/:topicId" element={<ProtectedRoute requireProfile><PracticeQuiz /></ProtectedRoute>} />
                <Route path="/summary/:topicId" element={<ProtectedRoute requireProfile><LessonSummary /></ProtectedRoute>} />

                {/* Settings - Requires auth + profile */}
                <Route path="/settings" element={<ProtectedRoute requireProfile><SettingsScreen /></ProtectedRoute>} />

                {/* Tools - Requires auth + profile */}
                <Route path="/scan" element={<ProtectedRoute requireProfile><ScanToSolve /></ProtectedRoute>} />
                <Route path="/tools" element={<ProtectedRoute requireProfile><MathToolsHub /></ProtectedRoute>} />

                {/* Avatar - Requires auth + profile */}
                <Route path="/avatar" element={<ProtectedRoute requireProfile><AvatarBuilder /></ProtectedRoute>} />

                {/* Parent Dashboard - Requires auth + profile */}
                <Route path="/parent" element={<ProtectedRoute requireProfile><ParentDashboard /></ProtectedRoute>} />

                {/* Admin Dashboard - Requires auth + admin role */}
                <Route path="/admin" element={
                  <ProtectedRoute requireProfile>
                    <AdminRoute>
                      <AdminDashboard />
                    </AdminRoute>
                  </ProtectedRoute>
                }>
                  <Route index element={<AdminHome />} />
                  <Route path="prompts" element={<PromptTemplateList />} />
                  <Route path="prompts/new" element={<PromptTemplateForm />} />
                  <Route path="prompts/:id" element={<PromptTemplateForm />} />
                </Route>

                {/* Default redirect to login */}
                <Route path="*" element={<Navigate to="/login" replace />} />
              </Routes>
                </Suspense>
              </StudySessionProvider>
            </GamificationProvider>
          </SettingsProvider>
        </UserProvider>
          </AuthProvider>
        </Router>
      </NotificationProvider>
    </ErrorBoundary>
  );
}

export default App;
