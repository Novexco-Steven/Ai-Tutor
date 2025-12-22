import { useState, useEffect } from 'react';
import { ChevronLeft, ChevronRight } from 'lucide-react';
import TestimonialCard from './TestimonialCard';

interface Testimonial {
  quote: string;
  author: string;
  role: string;
  avatar?: string;
  rating?: number;
}

interface TestimonialCarouselProps {
  title: string;
  subtitle?: string;
  testimonials: Testimonial[];
  autoPlay?: boolean;
  autoPlayInterval?: number;
}

export default function TestimonialCarousel({
  title,
  subtitle,
  testimonials,
  autoPlay = true,
  autoPlayInterval = 5000,
}: TestimonialCarouselProps) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [isPaused, setIsPaused] = useState(false);

  useEffect(() => {
    if (!autoPlay || isPaused) return;

    const interval = setInterval(() => {
      setCurrentIndex((prev) => (prev + 1) % testimonials.length);
    }, autoPlayInterval);

    return () => clearInterval(interval);
  }, [autoPlay, autoPlayInterval, isPaused, testimonials.length]);

  const goToPrevious = () => {
    setCurrentIndex((prev) => (prev - 1 + testimonials.length) % testimonials.length);
  };

  const goToNext = () => {
    setCurrentIndex((prev) => (prev + 1) % testimonials.length);
  };

  // Show 3 testimonials on desktop, 1 on mobile
  const visibleTestimonials = [];
  for (let i = 0; i < 3; i++) {
    visibleTestimonials.push(testimonials[(currentIndex + i) % testimonials.length]);
  }

  return (
    <section className="py-20 bg-white dark:bg-gray-900">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-12">
          <h2 className="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
            {title}
          </h2>
          {subtitle && (
            <p className="text-xl text-gray-600 dark:text-gray-400 max-w-2xl mx-auto">
              {subtitle}
            </p>
          )}
        </div>

        <div
          className="relative"
          onMouseEnter={() => setIsPaused(true)}
          onMouseLeave={() => setIsPaused(false)}
        >
          {/* Desktop: Show 3 cards */}
          <div className="hidden md:grid md:grid-cols-3 gap-6">
            {visibleTestimonials.map((testimonial, index) => (
              <div
                key={`${currentIndex}-${index}`}
                className="animate-fade-in"
              >
                <TestimonialCard {...testimonial} />
              </div>
            ))}
          </div>

          {/* Mobile: Show 1 card */}
          <div className="md:hidden">
            <TestimonialCard {...testimonials[currentIndex]} />
          </div>

          {/* Navigation Arrows */}
          <button
            onClick={goToPrevious}
            className="absolute left-0 top-1/2 -translate-y-1/2 -translate-x-4 w-10 h-10 bg-white dark:bg-gray-800 rounded-full shadow-lg flex items-center justify-center text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-400 transition-colors"
            aria-label="Previous testimonial"
          >
            <ChevronLeft className="w-5 h-5" />
          </button>
          <button
            onClick={goToNext}
            className="absolute right-0 top-1/2 -translate-y-1/2 translate-x-4 w-10 h-10 bg-white dark:bg-gray-800 rounded-full shadow-lg flex items-center justify-center text-gray-600 dark:text-gray-300 hover:text-primary-600 dark:hover:text-primary-400 transition-colors"
            aria-label="Next testimonial"
          >
            <ChevronRight className="w-5 h-5" />
          </button>
        </div>

        {/* Dots */}
        <div className="flex items-center justify-center gap-2 mt-8">
          {testimonials.map((_, index) => (
            <button
              key={index}
              onClick={() => setCurrentIndex(index)}
              className={`w-2 h-2 rounded-full transition-all ${
                index === currentIndex
                  ? 'w-8 bg-primary-600'
                  : 'bg-gray-300 dark:bg-gray-600 hover:bg-gray-400 dark:hover:bg-gray-500'
              }`}
              aria-label={`Go to testimonial ${index + 1}`}
            />
          ))}
        </div>
      </div>
    </section>
  );
}
