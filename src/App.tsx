import { BrowserRouter as Router, Routes, Route, Navigate } from 'react-router-dom';
import { AuthProvider } from './contexts/AuthContext';
import { UserProvider } from './contexts/UserContext';
import { SettingsProvider } from './contexts/SettingsContext';
import { GamificationProvider } from './contexts/GamificationContext';
import { StudySessionProvider } from './contexts/StudySessionContext';
import { SpacedRepetitionProvider } from './contexts/SpacedRepetitionContext';
import { NotificationProvider } from './contexts/NotificationContext';
import { PWAProvider } from './contexts/PWAContext';
import ErrorBoundary from './components/shared/ErrorBoundary';
import { OfflineIndicator, InstallPrompt } from './components/pwa';

// Lazy load components for code splitting
import { lazy, Suspense } from 'react';
import Loading from './components/shared/Loading';
import ProtectedRoute from './components/auth/ProtectedRoute';

// Marketing Layout & Pages (Public)
const MarketingLayout = lazy(() => import('./components/marketing/layout/MarketingLayout'));
const HomePage = lazy(() => import('./components/pages/HomePage'));
const ForParentsPage = lazy(() => import('./components/pages/ForParentsPage'));
const ForTeachersPage = lazy(() => import('./components/pages/ForTeachersPage'));
const ForStudentsPage = lazy(() => import('./components/pages/ForStudentsPage'));
const PricingPage = lazy(() => import('./components/pages/PricingPage'));
const HelpCenterPage = lazy(() => import('./components/pages/HelpCenterPage'));
const AboutPage = lazy(() => import('./components/pages/AboutPage'));
const ContactPage = lazy(() => import('./components/pages/ContactPage'));
const PrivacyPage = lazy(() => import('./components/pages/PrivacyPage'));
const TermsPage = lazy(() => import('./components/pages/TermsPage'));
const CookiesPage = lazy(() => import('./components/pages/CookiesPage'));
const CoppaPage = lazy(() => import('./components/pages/CoppaPage'));

// Auth
const Login = lazy(() => import('./components/auth/Login'));
const Signup = lazy(() => import('./components/auth/Signup'));
const ForgotPassword = lazy(() => import('./components/auth/ForgotPassword'));
const ResetPassword = lazy(() => import('./components/auth/ResetPassword'));
const VerifyEmail = lazy(() => import('./components/auth/VerifyEmail'));
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

// Spaced Repetition / Review
const ReviewSession = lazy(() => import('./components/review/ReviewSession'));

// Analytics
const StudentAnalyticsDashboard = lazy(() => import('./components/analytics/StudentAnalyticsDashboard'));

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

// Admin Billing
const BillingDashboard = lazy(() => import('./components/admin/billing/BillingDashboard'));
const SubscriptionList = lazy(() => import('./components/admin/billing/SubscriptionList'));
const CustomerList = lazy(() => import('./components/admin/billing/CustomerList'));
const InvoiceList = lazy(() => import('./components/admin/billing/InvoiceList'));

// Admin Users & Analytics
const UserList = lazy(() => import('./components/admin/users/UserList'));
const UserDetails = lazy(() => import('./components/admin/users/UserDetails'));
const UsageAnalytics = lazy(() => import('./components/admin/analytics/UsageAnalytics'));
const ActivityFeed = lazy(() => import('./components/admin/activity/ActivityFeed'));

// Admin Voice Teachers
const VoiceTeacherList = lazy(() => import('./components/admin/voices/VoiceTeacherList'));
const VoiceTeacherForm = lazy(() => import('./components/admin/voices/VoiceTeacherForm'));

function App() {
  return (
    <ErrorBoundary>
      <NotificationProvider>
        <PWAProvider>
          <Router>
            <AuthProvider>
              <UserProvider>
                <SettingsProvider>
                  <GamificationProvider>
                    <SpacedRepetitionProvider>
                      <StudySessionProvider>
                        <Suspense fallback={<Loading fullScreen />}>
                          <Routes>
                            {/* Public Marketing Routes */}
                            <Route element={<MarketingLayout />}>
                              <Route path="/" element={<HomePage />} />
                              <Route path="/for-parents" element={<ForParentsPage />} />
                              <Route path="/for-teachers" element={<ForTeachersPage />} />
                              <Route path="/for-students" element={<ForStudentsPage />} />
                              <Route path="/pricing" element={<PricingPage />} />
                              <Route path="/help-center" element={<HelpCenterPage />} />
                              <Route path="/about" element={<AboutPage />} />
                              <Route path="/contact" element={<ContactPage />} />
                              <Route path="/privacy" element={<PrivacyPage />} />
                              <Route path="/terms" element={<TermsPage />} />
                              <Route path="/cookies" element={<CookiesPage />} />
                              <Route path="/coppa" element={<CoppaPage />} />
                            </Route>

                            {/* Auth Routes - Public */}
                            <Route path="/login" element={<Login />} />
                            <Route path="/signup" element={<Signup />} />
                            <Route path="/forgot-password" element={<ForgotPassword />} />
                            <Route path="/auth/callback" element={<AuthCallback />} />
                            <Route path="/auth/verify" element={<VerifyEmail />} />
                            <Route path="/auth/reset-password" element={<ResetPassword />} />

                            {/* Onboarding Flow - Requires auth only */}
                            <Route path="/onboarding">
                              <Route path="profile" element={<ProtectedRoute><ProfileSetup /></ProtectedRoute>} />
                              <Route path="interests" element={<ProtectedRoute><InterestPicker /></ProtectedRoute>} />
                              <Route path="subject" element={<ProtectedRoute><SubjectPicker /></ProtectedRoute>} />
                              <Route path="diagnostic" element={<ProtectedRoute><DiagnosticQuiz /></ProtectedRoute>} />
                            </Route>

                            {/* Main App - Requires auth + profile */}
                            <Route path="/dashboard" element={<ProtectedRoute requireProfile><Dashboard /></ProtectedRoute>} />
                            <Route path="/curriculum/:subjectId" element={<ProtectedRoute requireProfile><CurriculumView /></ProtectedRoute>} />
                            <Route path="/topics/:subjectId" element={<ProtectedRoute requireProfile><TopicSelection /></ProtectedRoute>} />
                            <Route path="/lesson/:topicId" element={<ProtectedRoute requireProfile><LessonView /></ProtectedRoute>} />
                            <Route path="/custom-lesson/:customTopicId" element={<ProtectedRoute requireProfile><CustomLessonView /></ProtectedRoute>} />
                            <Route path="/practice/:topicId" element={<ProtectedRoute requireProfile><PracticeQuiz /></ProtectedRoute>} />
                            <Route path="/summary/:topicId" element={<ProtectedRoute requireProfile><LessonSummary /></ProtectedRoute>} />

                            {/* Spaced Repetition Review - Requires auth + profile */}
                            <Route path="/review" element={<ProtectedRoute requireProfile><ReviewSession /></ProtectedRoute>} />

                            {/* Analytics - Requires auth + profile */}
                            <Route path="/analytics" element={<ProtectedRoute requireProfile><StudentAnalyticsDashboard /></ProtectedRoute>} />

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
                              <Route path="users" element={<UserList />} />
                              <Route path="users/:id" element={<UserDetails />} />
                              <Route path="analytics" element={<UsageAnalytics />} />
                              <Route path="activity" element={<ActivityFeed />} />
                              <Route path="billing" element={<BillingDashboard />} />
                              <Route path="billing/subscriptions" element={<SubscriptionList />} />
                              <Route path="billing/customers" element={<CustomerList />} />
                              <Route path="billing/invoices" element={<InvoiceList />} />
                              <Route path="prompts" element={<PromptTemplateList />} />
                              <Route path="prompts/new" element={<PromptTemplateForm />} />
                              <Route path="prompts/:id" element={<PromptTemplateForm />} />
                              <Route path="voices" element={<VoiceTeacherList />} />
                              <Route path="voices/new" element={<VoiceTeacherForm />} />
                              <Route path="voices/:id" element={<VoiceTeacherForm />} />
                            </Route>

                            {/* Default redirect to home */}
                            <Route path="*" element={<Navigate to="/" replace />} />
                          </Routes>
                          {/* PWA Components */}
                          <OfflineIndicator />
                          <InstallPrompt />
                        </Suspense>
                      </StudySessionProvider>
                    </SpacedRepetitionProvider>
                  </GamificationProvider>
                </SettingsProvider>
              </UserProvider>
            </AuthProvider>
          </Router>
        </PWAProvider>
      </NotificationProvider>
    </ErrorBoundary>
  );
}

export default App;
