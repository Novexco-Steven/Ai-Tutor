import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { useUser } from '@/contexts/UserContext';
import { storage, ageToGradeLevel } from '@/utils/helpers';
import Button from '../shared/Button';
import Card from '../shared/Card';
import AvatarDisplay from '../avatar/AvatarDisplay';
import {
  User,
  Calendar,
  MapPin,
  Globe,
  Clock,
  GraduationCap,
  BookOpen,
  Target,
  Languages,
  Mail,
  Save,
  X,
  ChevronDown,
  ChevronUp,
  Edit3,
  Eye,
  Ear,
  Hand,
  Check,
  Palette
} from 'lucide-react';
import { cn } from '@/utils/helpers';
import type { User as UserType, AvatarConfig, LearningStyleType } from '@/types';
import {
  LEARNING_STYLES,
  LEARNING_GOALS,
  PRONOUNS_OPTIONS,
  COMMON_COUNTRIES,
  COMMON_LANGUAGES
} from '@/types';

interface ProfileEditorProps {
  onClose?: () => void;
}

export default function ProfileEditor({ onClose: _onClose }: ProfileEditorProps) {
  const navigate = useNavigate();
  const { profile, updateProfile } = useUser();

  const [isEditing, setIsEditing] = useState(false);
  const [isSaving, setIsSaving] = useState(false);
  const [saveSuccess, setSaveSuccess] = useState(false);
  const [expandedSection, setExpandedSection] = useState<string | null>(null);

  // Form state
  const [formData, setFormData] = useState({
    name: '',
    dateOfBirth: '',
    pronouns: '',
    customPronouns: '',
    country: '',
    location: '',
    timezone: '',
    grade_level: 5,
    gradeOverride: false,
    school: '',
    learningStyle: '' as LearningStyleType | '',
    goals: [] as string[],
    languages: [] as string[],
    parentEmail: '',
    bio: ''
  });

  // Avatar state
  const [avatar, setAvatar] = useState<AvatarConfig | null>(null);

  // Calculate age from DOB
  const calculateAge = (dob: string): number | null => {
    if (!dob) return null;
    const birthDate = new Date(dob);
    const today = new Date();
    let age = today.getFullYear() - birthDate.getFullYear();
    const monthDiff = today.getMonth() - birthDate.getMonth();
    if (monthDiff < 0 || (monthDiff === 0 && today.getDate() < birthDate.getDate())) {
      age--;
    }
    return age;
  };

  // Load profile data
  useEffect(() => {
    if (profile) {
      setFormData({
        name: profile.name || '',
        dateOfBirth: profile.dateOfBirth || '',
        pronouns: profile.pronouns && !PRONOUNS_OPTIONS.slice(0, 3).includes(profile.pronouns as typeof PRONOUNS_OPTIONS[number])
          ? 'Custom'
          : profile.pronouns || '',
        customPronouns: profile.pronouns && !PRONOUNS_OPTIONS.slice(0, 3).includes(profile.pronouns as typeof PRONOUNS_OPTIONS[number])
          ? profile.pronouns
          : '',
        country: profile.country || '',
        location: profile.location || '',
        timezone: profile.timezone || Intl.DateTimeFormat().resolvedOptions().timeZone,
        grade_level: profile.grade_level || 5,
        gradeOverride: profile.gradeOverride || false,
        school: profile.school || '',
        learningStyle: profile.learningStyle || '',
        goals: profile.goals || [],
        languages: profile.languages || [],
        parentEmail: profile.parentEmail || '',
        bio: profile.bio || ''
      });

      // Load avatar
      const savedAvatar = storage.get<AvatarConfig | null>(`tulomi_avatar_${profile.id}`, null);
      setAvatar(savedAvatar);
    }
  }, [profile]);

  // Auto-calculate grade when DOB changes
  useEffect(() => {
    if (formData.dateOfBirth && !formData.gradeOverride) {
      const age = calculateAge(formData.dateOfBirth);
      if (age !== null && age >= 5 && age <= 18) {
        const calculatedGrade = ageToGradeLevel(age);
        setFormData(prev => ({ ...prev, grade_level: calculatedGrade }));
      }
    }
  }, [formData.dateOfBirth, formData.gradeOverride]);

  const handleSave = async () => {
    if (!profile) return;

    setIsSaving(true);
    try {
      const updates: Partial<UserType> = {
        name: formData.name,
        dateOfBirth: formData.dateOfBirth || undefined,
        pronouns: formData.pronouns === 'Custom' ? formData.customPronouns : formData.pronouns || undefined,
        country: formData.country || undefined,
        location: formData.location || undefined,
        timezone: formData.timezone || undefined,
        grade_level: formData.grade_level,
        gradeOverride: formData.gradeOverride,
        school: formData.school || undefined,
        learningStyle: formData.learningStyle || undefined,
        goals: formData.goals.length > 0 ? formData.goals : undefined,
        languages: formData.languages.length > 0 ? formData.languages : undefined,
        parentEmail: formData.parentEmail || undefined,
        bio: formData.bio || undefined
      };

      // Calculate and update age from DOB
      if (formData.dateOfBirth) {
        const age = calculateAge(formData.dateOfBirth);
        if (age !== null) {
          updates.age = age;
        }
      }

      await updateProfile(updates);
      setSaveSuccess(true);
      setTimeout(() => setSaveSuccess(false), 3000);
      setIsEditing(false);
    } catch (error) {
      console.error('Failed to save profile:', error);
    } finally {
      setIsSaving(false);
    }
  };

  const handleCancel = () => {
    // Reset form data to profile values
    if (profile) {
      setFormData({
        name: profile.name || '',
        dateOfBirth: profile.dateOfBirth || '',
        pronouns: profile.pronouns && !PRONOUNS_OPTIONS.slice(0, 3).includes(profile.pronouns as typeof PRONOUNS_OPTIONS[number])
          ? 'Custom'
          : profile.pronouns || '',
        customPronouns: profile.pronouns && !PRONOUNS_OPTIONS.slice(0, 3).includes(profile.pronouns as typeof PRONOUNS_OPTIONS[number])
          ? profile.pronouns
          : '',
        country: profile.country || '',
        location: profile.location || '',
        timezone: profile.timezone || Intl.DateTimeFormat().resolvedOptions().timeZone,
        grade_level: profile.grade_level || 5,
        gradeOverride: profile.gradeOverride || false,
        school: profile.school || '',
        learningStyle: profile.learningStyle || '',
        goals: profile.goals || [],
        languages: profile.languages || [],
        parentEmail: profile.parentEmail || '',
        bio: profile.bio || ''
      });
    }
    setIsEditing(false);
  };

  const toggleGoal = (goal: string) => {
    setFormData(prev => ({
      ...prev,
      goals: prev.goals.includes(goal)
        ? prev.goals.filter(g => g !== goal)
        : [...prev.goals, goal]
    }));
  };

  const toggleLanguage = (language: string) => {
    setFormData(prev => ({
      ...prev,
      languages: prev.languages.includes(language)
        ? prev.languages.filter(l => l !== language)
        : [...prev.languages, language]
    }));
  };

  const toggleSection = (section: string) => {
    setExpandedSection(prev => prev === section ? null : section);
  };

  const getLearningStyleIcon = (style: string) => {
    switch (style) {
      case 'visual': return <Eye className="w-5 h-5" />;
      case 'auditory': return <Ear className="w-5 h-5" />;
      case 'reading': return <BookOpen className="w-5 h-5" />;
      case 'kinesthetic': return <Hand className="w-5 h-5" />;
      default: return null;
    }
  };

  const age = formData.dateOfBirth ? calculateAge(formData.dateOfBirth) : profile?.age;
  const isUnder13 = age !== null && age !== undefined && age < 13;

  // Collapsed view - Profile summary
  if (!isEditing) {
    return (
      <Card className="relative">
        {saveSuccess && (
          <div className="absolute top-2 right-2 px-3 py-1 bg-green-100 dark:bg-green-900/30 text-green-700 dark:text-green-300 text-sm rounded-full flex items-center gap-1">
            <Check className="w-4 h-4" />
            Saved!
          </div>
        )}

        <div className="flex items-start justify-between">
          <div className="flex items-center gap-4">
            {/* Avatar */}
            <div
              className="relative cursor-pointer group"
              onClick={() => navigate('/avatar')}
            >
              {avatar ? (
                <div className="w-20 h-20 rounded-xl overflow-hidden">
                  <AvatarDisplay config={avatar} size="lg" />
                </div>
              ) : (
                <div className="w-20 h-20 rounded-xl bg-gradient-to-br from-primary-400 to-primary-600 flex items-center justify-center">
                  <User className="w-10 h-10 text-white" />
                </div>
              )}
              <div className="absolute inset-0 bg-black/50 rounded-xl opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center">
                <Palette className="w-6 h-6 text-white" />
              </div>
            </div>

            {/* Profile Info */}
            <div>
              <h3 className="text-xl font-bold text-gray-900 dark:text-white">
                {profile?.name || 'Guest'}
              </h3>
              <div className="flex flex-wrap items-center gap-2 mt-1 text-sm text-gray-600 dark:text-gray-400">
                {profile?.grade_level && (
                  <span className="px-2 py-0.5 bg-primary-100 dark:bg-primary-900/30 text-primary-700 dark:text-primary-300 rounded-full">
                    Grade {profile.grade_level}
                  </span>
                )}
                {profile?.country && (
                  <span className="flex items-center gap-1">
                    <Globe className="w-3 h-3" />
                    {COMMON_COUNTRIES.find(c => c.code === profile.country)?.name || profile.country}
                  </span>
                )}
                {profile?.location && (
                  <span className="flex items-center gap-1">
                    <MapPin className="w-3 h-3" />
                    {profile.location}
                  </span>
                )}
              </div>
              {profile?.learningStyle && (
                <div className="flex items-center gap-1 mt-2 text-sm">
                  {getLearningStyleIcon(profile.learningStyle)}
                  <span className="text-gray-600 dark:text-gray-400">
                    {LEARNING_STYLES.find(s => s.id === profile.learningStyle)?.label} Learner
                  </span>
                </div>
              )}
            </div>
          </div>

          <Button
            variant="secondary"
            onClick={() => setIsEditing(true)}
            className="shrink-0"
          >
            <Edit3 className="w-4 h-4 mr-2" />
            Edit Profile
          </Button>
        </div>

        {/* Quick stats */}
        {((profile?.goals && profile.goals.length > 0) || (profile?.languages && profile.languages.length > 0)) && (
          <div className="mt-4 pt-4 border-t border-gray-200 dark:border-gray-700">
            <div className="flex flex-wrap gap-4">
              {profile?.goals && profile.goals.length > 0 && (
                <div>
                  <span className="text-xs text-gray-500 dark:text-gray-400 uppercase tracking-wide">Goals</span>
                  <div className="flex flex-wrap gap-1 mt-1">
                    {profile.goals.slice(0, 3).map(goal => (
                      <span key={goal} className="px-2 py-0.5 bg-gray-100 dark:bg-gray-800 text-gray-700 dark:text-gray-300 text-xs rounded-full">
                        {goal}
                      </span>
                    ))}
                    {profile.goals.length > 3 && (
                      <span className="px-2 py-0.5 text-gray-500 text-xs">+{profile.goals.length - 3} more</span>
                    )}
                  </div>
                </div>
              )}
              {profile?.languages && profile.languages.length > 0 && (
                <div>
                  <span className="text-xs text-gray-500 dark:text-gray-400 uppercase tracking-wide">Languages</span>
                  <div className="flex flex-wrap gap-1 mt-1">
                    {profile.languages.map(lang => (
                      <span key={lang} className="px-2 py-0.5 bg-gray-100 dark:bg-gray-800 text-gray-700 dark:text-gray-300 text-xs rounded-full">
                        {lang}
                      </span>
                    ))}
                  </div>
                </div>
              )}
            </div>
          </div>
        )}
      </Card>
    );
  }

  // Expanded edit mode
  return (
    <Card className="space-y-6">
      <div className="flex items-center justify-between">
        <h2 className="text-xl font-bold text-gray-900 dark:text-white flex items-center">
          <User className="w-5 h-5 mr-2" />
          Edit Profile
        </h2>
        <div className="flex gap-2">
          <Button variant="secondary" onClick={handleCancel} disabled={isSaving}>
            <X className="w-4 h-4 mr-1" />
            Cancel
          </Button>
          <Button variant="primary" onClick={handleSave} disabled={isSaving}>
            <Save className="w-4 h-4 mr-1" />
            {isSaving ? 'Saving...' : 'Save Changes'}
          </Button>
        </div>
      </div>

      {/* Avatar Link */}
      <div className="flex items-center gap-4 p-4 bg-gray-50 dark:bg-gray-800/50 rounded-xl">
        {avatar ? (
          <div className="w-16 h-16 rounded-xl overflow-hidden">
            <AvatarDisplay config={avatar} size="md" />
          </div>
        ) : (
          <div className="w-16 h-16 rounded-xl bg-gradient-to-br from-primary-400 to-primary-600 flex items-center justify-center">
            <User className="w-8 h-8 text-white" />
          </div>
        )}
        <div className="flex-1">
          <p className="font-medium text-gray-900 dark:text-white">Your Avatar</p>
          <p className="text-sm text-gray-500 dark:text-gray-400">Customize your character</p>
        </div>
        <Button variant="secondary" onClick={() => navigate('/avatar')}>
          <Palette className="w-4 h-4 mr-2" />
          Edit Avatar
        </Button>
      </div>

      {/* Basic Information */}
      <Section
        title="Basic Information"
        icon={<User className="w-5 h-5" />}
        expanded={expandedSection === 'basic'}
        onToggle={() => toggleSection('basic')}
        defaultExpanded
      >
        <div className="space-y-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Display Name *
            </label>
            <input
              type="text"
              value={formData.name}
              onChange={e => setFormData(prev => ({ ...prev, name: e.target.value }))}
              className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
              placeholder="Your name"
              maxLength={50}
            />
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                <Calendar className="w-4 h-4 inline mr-1" />
                Date of Birth
              </label>
              <input
                type="date"
                value={formData.dateOfBirth}
                onChange={e => setFormData(prev => ({ ...prev, dateOfBirth: e.target.value }))}
                className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                max={new Date().toISOString().split('T')[0]}
              />
              {age && (
                <p className="text-xs text-gray-500 dark:text-gray-400 mt-1">
                  Age: {age} years old
                </p>
              )}
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Pronouns
              </label>
              <select
                value={formData.pronouns}
                onChange={e => setFormData(prev => ({ ...prev, pronouns: e.target.value }))}
                className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
              >
                <option value="">Select...</option>
                {PRONOUNS_OPTIONS.map(p => (
                  <option key={p} value={p}>{p}</option>
                ))}
              </select>
              {formData.pronouns === 'Custom' && (
                <input
                  type="text"
                  value={formData.customPronouns}
                  onChange={e => setFormData(prev => ({ ...prev, customPronouns: e.target.value }))}
                  className="w-full mt-2 px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                  placeholder="Enter your pronouns"
                />
              )}
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Bio
            </label>
            <textarea
              value={formData.bio}
              onChange={e => setFormData(prev => ({ ...prev, bio: e.target.value }))}
              className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent resize-none"
              placeholder="Tell us a little about yourself..."
              rows={3}
              maxLength={200}
            />
            <p className="text-xs text-gray-500 dark:text-gray-400 mt-1 text-right">
              {formData.bio.length}/200
            </p>
          </div>
        </div>
      </Section>

      {/* Location */}
      <Section
        title="Location"
        icon={<MapPin className="w-5 h-5" />}
        expanded={expandedSection === 'location'}
        onToggle={() => toggleSection('location')}
      >
        <div className="space-y-4">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                <Globe className="w-4 h-4 inline mr-1" />
                Country
              </label>
              <select
                value={formData.country}
                onChange={e => setFormData(prev => ({ ...prev, country: e.target.value }))}
                className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
              >
                <option value="">Select country...</option>
                {COMMON_COUNTRIES.map(c => (
                  <option key={c.code} value={c.code}>{c.name}</option>
                ))}
              </select>
            </div>

            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                City/State
              </label>
              <input
                type="text"
                value={formData.location}
                onChange={e => setFormData(prev => ({ ...prev, location: e.target.value }))}
                className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                placeholder="e.g. California"
              />
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              <Clock className="w-4 h-4 inline mr-1" />
              Timezone
            </label>
            <div className="flex gap-2">
              <input
                type="text"
                value={formData.timezone}
                onChange={e => setFormData(prev => ({ ...prev, timezone: e.target.value }))}
                className="flex-1 px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                placeholder="e.g. America/Los_Angeles"
              />
              <Button
                variant="secondary"
                onClick={() => setFormData(prev => ({
                  ...prev,
                  timezone: Intl.DateTimeFormat().resolvedOptions().timeZone
                }))}
              >
                Auto-detect
              </Button>
            </div>
          </div>
        </div>
      </Section>

      {/* Education */}
      <Section
        title="Education"
        icon={<GraduationCap className="w-5 h-5" />}
        expanded={expandedSection === 'education'}
        onToggle={() => toggleSection('education')}
      >
        <div className="space-y-4">
          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              Grade Level
            </label>
            <div className="flex items-center gap-4">
              <select
                value={formData.grade_level}
                onChange={e => setFormData(prev => ({
                  ...prev,
                  grade_level: parseInt(e.target.value),
                  gradeOverride: true
                }))}
                className="w-32 px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
              >
                {Array.from({ length: 12 }, (_, i) => i + 1).map(grade => (
                  <option key={grade} value={grade}>Grade {grade}</option>
                ))}
              </select>
              <span className="text-sm text-gray-500 dark:text-gray-400">
                {formData.gradeOverride ? '(manually set)' : formData.dateOfBirth ? '(based on your age)' : ''}
              </span>
              {formData.gradeOverride && formData.dateOfBirth && (
                <button
                  onClick={() => {
                    const age = calculateAge(formData.dateOfBirth);
                    if (age) {
                      setFormData(prev => ({
                        ...prev,
                        grade_level: ageToGradeLevel(age),
                        gradeOverride: false
                      }));
                    }
                  }}
                  className="text-sm text-primary-600 dark:text-primary-400 hover:underline"
                >
                  Reset to auto
                </button>
              )}
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              School (optional)
            </label>
            <input
              type="text"
              value={formData.school}
              onChange={e => setFormData(prev => ({ ...prev, school: e.target.value }))}
              className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
              placeholder="Your school name"
              maxLength={100}
            />
          </div>
        </div>
      </Section>

      {/* Learning Style */}
      <Section
        title="Learning Style"
        icon={<BookOpen className="w-5 h-5" />}
        expanded={expandedSection === 'learning'}
        onToggle={() => toggleSection('learning')}
      >
        <div className="space-y-4">
          <p className="text-sm text-gray-600 dark:text-gray-400">
            How do you learn best? This helps us personalize your experience.
          </p>
          <div className="grid grid-cols-2 gap-3">
            {LEARNING_STYLES.map(style => (
              <button
                key={style.id}
                onClick={() => setFormData(prev => ({ ...prev, learningStyle: style.id as LearningStyleType }))}
                className={cn(
                  "p-4 rounded-xl border-2 text-left transition-all",
                  formData.learningStyle === style.id
                    ? "border-primary-500 bg-primary-50 dark:bg-primary-900/20"
                    : "border-gray-200 dark:border-gray-700 hover:border-gray-300 dark:hover:border-gray-600"
                )}
              >
                <div className="flex items-center gap-2 mb-1">
                  {getLearningStyleIcon(style.id)}
                  <span className="font-medium text-gray-900 dark:text-white">{style.label}</span>
                </div>
                <p className="text-xs text-gray-500 dark:text-gray-400">{style.description}</p>
              </button>
            ))}
          </div>
        </div>
      </Section>

      {/* Goals */}
      <Section
        title="Learning Goals"
        icon={<Target className="w-5 h-5" />}
        expanded={expandedSection === 'goals'}
        onToggle={() => toggleSection('goals')}
      >
        <div className="space-y-4">
          <p className="text-sm text-gray-600 dark:text-gray-400">
            What are you hoping to achieve? Select all that apply.
          </p>
          <div className="flex flex-wrap gap-2">
            {LEARNING_GOALS.map(goal => (
              <button
                key={goal}
                onClick={() => toggleGoal(goal)}
                className={cn(
                  "px-4 py-2 rounded-full text-sm font-medium transition-all",
                  formData.goals.includes(goal)
                    ? "bg-primary-600 text-white"
                    : "bg-gray-100 dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-200 dark:hover:bg-gray-700"
                )}
              >
                {formData.goals.includes(goal) && <Check className="w-4 h-4 inline mr-1" />}
                {goal}
              </button>
            ))}
          </div>
        </div>
      </Section>

      {/* Languages */}
      <Section
        title="Languages"
        icon={<Languages className="w-5 h-5" />}
        expanded={expandedSection === 'languages'}
        onToggle={() => toggleSection('languages')}
      >
        <div className="space-y-4">
          <p className="text-sm text-gray-600 dark:text-gray-400">
            What languages do you speak?
          </p>
          <div className="flex flex-wrap gap-2">
            {COMMON_LANGUAGES.map(lang => (
              <button
                key={lang}
                onClick={() => toggleLanguage(lang)}
                className={cn(
                  "px-3 py-1.5 rounded-full text-sm font-medium transition-all",
                  formData.languages.includes(lang)
                    ? "bg-primary-600 text-white"
                    : "bg-gray-100 dark:bg-gray-800 text-gray-700 dark:text-gray-300 hover:bg-gray-200 dark:hover:bg-gray-700"
                )}
              >
                {formData.languages.includes(lang) && <Check className="w-3 h-3 inline mr-1" />}
                {lang}
              </button>
            ))}
          </div>
        </div>
      </Section>

      {/* Parent Contact (for under 13) */}
      {isUnder13 && (
        <Section
          title="Parent/Guardian Contact"
          icon={<Mail className="w-5 h-5" />}
          expanded={expandedSection === 'parent'}
          onToggle={() => toggleSection('parent')}
          defaultExpanded
        >
          <div className="space-y-4">
            <div className="p-3 bg-amber-50 dark:bg-amber-900/20 border border-amber-200 dark:border-amber-800 rounded-lg">
              <p className="text-sm text-amber-800 dark:text-amber-200">
                Since you're under 13, we need a parent or guardian's email for account notifications and safety.
              </p>
            </div>
            <div>
              <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
                Parent/Guardian Email *
              </label>
              <input
                type="email"
                value={formData.parentEmail}
                onChange={e => setFormData(prev => ({ ...prev, parentEmail: e.target.value }))}
                className="w-full px-4 py-2 border border-gray-300 dark:border-gray-600 rounded-lg bg-white dark:bg-gray-800 text-gray-900 dark:text-white focus:ring-2 focus:ring-primary-500 focus:border-transparent"
                placeholder="parent@email.com"
              />
            </div>
          </div>
        </Section>
      )}
    </Card>
  );
}

// Collapsible Section Component
interface SectionProps {
  title: string;
  icon: React.ReactNode;
  children: React.ReactNode;
  expanded?: boolean;
  onToggle?: () => void;
  defaultExpanded?: boolean;
}

function Section({ title, icon, children, expanded, onToggle, defaultExpanded }: SectionProps) {
  const [isOpen, setIsOpen] = useState(defaultExpanded || false);
  const isControlled = expanded !== undefined;
  const open = isControlled ? expanded : isOpen;

  const handleToggle = () => {
    if (isControlled && onToggle) {
      onToggle();
    } else {
      setIsOpen(!isOpen);
    }
  };

  return (
    <div className="border border-gray-200 dark:border-gray-700 rounded-xl overflow-hidden">
      <button
        onClick={handleToggle}
        className="w-full px-4 py-3 flex items-center justify-between bg-gray-50 dark:bg-gray-800/50 hover:bg-gray-100 dark:hover:bg-gray-800 transition-colors"
      >
        <div className="flex items-center gap-2 text-gray-900 dark:text-white font-medium">
          {icon}
          {title}
        </div>
        {open ? (
          <ChevronUp className="w-5 h-5 text-gray-500" />
        ) : (
          <ChevronDown className="w-5 h-5 text-gray-500" />
        )}
      </button>
      {open && (
        <div className="px-4 py-4 bg-white dark:bg-gray-900">
          {children}
        </div>
      )}
    </div>
  );
}
