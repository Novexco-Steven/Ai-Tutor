import { Star } from 'lucide-react';

interface TestimonialCardProps {
  quote: string;
  author: string;
  role: string;
  avatar?: string;
  rating?: number;
}

export default function TestimonialCard({ quote, author, role, avatar, rating = 5 }: TestimonialCardProps) {
  return (
    <div className="bg-white dark:bg-gray-800 rounded-2xl p-6 shadow-sm border border-gray-100 dark:border-gray-700">
      {/* Rating */}
      {rating > 0 && (
        <div className="flex items-center gap-1 mb-4">
          {[...Array(5)].map((_, i) => (
            <Star
              key={i}
              className={`w-5 h-5 ${
                i < rating
                  ? 'text-yellow-400 fill-yellow-400'
                  : 'text-gray-300 dark:text-gray-600'
              }`}
            />
          ))}
        </div>
      )}

      {/* Quote */}
      <blockquote className="text-gray-700 dark:text-gray-300 mb-6">
        "{quote}"
      </blockquote>

      {/* Author */}
      <div className="flex items-center gap-3">
        {avatar ? (
          <img
            src={avatar}
            alt={author}
            className="w-12 h-12 rounded-full object-cover"
          />
        ) : (
          <div className="w-12 h-12 rounded-full bg-primary-100 dark:bg-primary-900/30 flex items-center justify-center">
            <span className="text-primary-600 dark:text-primary-400 font-semibold text-lg">
              {author.charAt(0)}
            </span>
          </div>
        )}
        <div>
          <div className="font-semibold text-gray-900 dark:text-white">{author}</div>
          <div className="text-sm text-gray-500 dark:text-gray-400">{role}</div>
        </div>
      </div>
    </div>
  );
}
