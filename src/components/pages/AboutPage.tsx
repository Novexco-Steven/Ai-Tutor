import { Heart, Target, Users, Sparkles, Award, Globe } from 'lucide-react';

const values = [
  {
    icon: <Heart className="w-6 h-6" />,
    title: 'Student First',
    description: 'Every decision we make starts with asking: "How does this help students learn better?"',
  },
  {
    icon: <Target className="w-6 h-6" />,
    title: 'Personalized Learning',
    description: 'We believe every child learns differently, and education should adapt to the learner.',
  },
  {
    icon: <Users className="w-6 h-6" />,
    title: 'Family Partnership',
    description: 'Parents are partners in education. We empower families to support learning at home.',
  },
  {
    icon: <Sparkles className="w-6 h-6" />,
    title: 'Joyful Learning',
    description: 'Learning should be engaging and fun. We use interests and gamification to inspire curiosity.',
  },
  {
    icon: <Award className="w-6 h-6" />,
    title: 'Excellence',
    description: 'We hold ourselves to the highest standards in educational content and technology.',
  },
  {
    icon: <Globe className="w-6 h-6" />,
    title: 'Accessibility',
    description: 'Quality education should be available to every child, regardless of background.',
  },
];

const team = [
  {
    name: 'Dr. Sarah Chen',
    role: 'CEO & Co-Founder',
    bio: 'Former Stanford professor with 15 years in educational technology research.',
  },
  {
    name: 'Marcus Johnson',
    role: 'CTO & Co-Founder',
    bio: 'AI researcher and engineer, previously at Google Brain and OpenAI.',
  },
  {
    name: 'Dr. Emily Rodriguez',
    role: 'Chief Learning Officer',
    bio: 'Curriculum designer with experience at Khan Academy and Coursera.',
  },
  {
    name: 'David Park',
    role: 'Head of Product',
    bio: 'Product leader focused on creating delightful learning experiences for kids.',
  },
];

const stats = [
  { value: '500K+', label: 'Students Learning' },
  { value: '10M+', label: 'Lessons Completed' },
  { value: '4.9', label: 'App Store Rating' },
  { value: '50+', label: 'States Covered' },
];

export default function AboutPage() {
  return (
    <div className="min-h-screen">
      {/* Hero Section */}
      <div className="bg-gradient-to-br from-primary-600 to-primary-800 text-white py-20">
        <div className="max-w-4xl mx-auto px-4 text-center">
          <h1 className="text-4xl md:text-5xl font-bold mb-6">
            Making Learning Personal for Every Child
          </h1>
          <p className="text-xl text-primary-100 max-w-2xl mx-auto">
            Tulomi was founded with a simple belief: every child deserves a personal tutor
            who understands how they learn best.
          </p>
        </div>
      </div>

      {/* Mission Section */}
      <section className="py-16 bg-white">
        <div className="max-w-4xl mx-auto px-4">
          <div className="text-center mb-12">
            <h2 className="text-3xl font-bold text-gray-900 mb-4">Our Mission</h2>
            <p className="text-xl text-gray-600 max-w-3xl mx-auto">
              To democratize personalized education by providing every K-12 student with an
              AI tutor that adapts to their unique learning style, pace, and interests.
            </p>
          </div>

          {/* Stats */}
          <div className="grid grid-cols-2 md:grid-cols-4 gap-8 mt-12">
            {stats.map((stat) => (
              <div key={stat.label} className="text-center">
                <div className="text-4xl font-bold text-primary-600 mb-2">{stat.value}</div>
                <div className="text-gray-600">{stat.label}</div>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Story Section */}
      <section className="py-16 bg-gray-50">
        <div className="max-w-4xl mx-auto px-4">
          <h2 className="text-3xl font-bold text-gray-900 mb-8 text-center">Our Story</h2>
          <div className="prose prose-lg mx-auto text-gray-600">
            <p>
              Tulomi started in 2022 when our founders, both parents and educators, noticed a
              troubling gap in education. While technology had transformed nearly every aspect
              of our lives, learning at home still looked much the same as it did decades ago.
            </p>
            <p>
              They asked: What if every child could have a patient, knowledgeable tutor available
              24/7? One that never gets frustrated, adapts to their learning style, and makes
              education genuinely engaging?
            </p>
            <p>
              With backgrounds in AI research and educational psychology, they set out to build
              exactly that. The result is Tulomi - an AI tutor that combines cutting-edge
              technology with proven pedagogical methods to deliver truly personalized learning.
            </p>
            <p>
              Today, Tulomi helps hundreds of thousands of students across all 50 states learn
              math, science, reading, and more. But we're just getting started. Our vision is
              a world where every child has access to world-class personalized education.
            </p>
          </div>
        </div>
      </section>

      {/* Values Section */}
      <section className="py-16 bg-white">
        <div className="max-w-6xl mx-auto px-4">
          <h2 className="text-3xl font-bold text-gray-900 mb-12 text-center">Our Values</h2>
          <div className="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
            {values.map((value) => (
              <div key={value.title} className="text-center">
                <div className="inline-flex p-4 bg-primary-100 text-primary-600 rounded-full mb-4">
                  {value.icon}
                </div>
                <h3 className="text-xl font-semibold text-gray-900 mb-2">{value.title}</h3>
                <p className="text-gray-600">{value.description}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* Team Section */}
      <section className="py-16 bg-gray-50">
        <div className="max-w-6xl mx-auto px-4">
          <h2 className="text-3xl font-bold text-gray-900 mb-12 text-center">Leadership Team</h2>
          <div className="grid md:grid-cols-2 lg:grid-cols-4 gap-8">
            {team.map((member) => (
              <div key={member.name} className="text-center">
                <div className="w-24 h-24 bg-gradient-to-br from-primary-400 to-secondary-400 rounded-full mx-auto mb-4 flex items-center justify-center">
                  <span className="text-2xl font-bold text-white">
                    {member.name.split(' ').map(n => n[0]).join('')}
                  </span>
                </div>
                <h3 className="text-lg font-semibold text-gray-900">{member.name}</h3>
                <p className="text-primary-600 text-sm mb-2">{member.role}</p>
                <p className="text-gray-600 text-sm">{member.bio}</p>
              </div>
            ))}
          </div>
        </div>
      </section>

      {/* CTA Section */}
      <section className="py-16 bg-gradient-to-br from-primary-600 to-primary-800 text-white">
        <div className="max-w-4xl mx-auto px-4 text-center">
          <h2 className="text-3xl font-bold mb-4">Join Us in Transforming Education</h2>
          <p className="text-xl text-primary-100 mb-8">
            Start your child's personalized learning journey today.
          </p>
          <a
            href="/signup"
            className="inline-block px-8 py-4 bg-white text-primary-600 rounded-lg font-semibold hover:bg-primary-50 transition-colors"
          >
            Get Started Free
          </a>
        </div>
      </section>
    </div>
  );
}
