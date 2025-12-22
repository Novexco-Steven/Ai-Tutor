import { useState } from 'react';
import { ChevronDown } from 'lucide-react';

interface FAQ {
  question: string;
  answer: string;
}

interface FAQSectionProps {
  title: string;
  subtitle?: string;
  faqs: FAQ[];
}

function FAQItem({ question, answer, isOpen, onClick }: FAQ & { isOpen: boolean; onClick: () => void }) {
  return (
    <div className="border-b border-gray-200 dark:border-gray-700">
      <button
        onClick={onClick}
        className="w-full py-6 flex items-center justify-between text-left"
      >
        <span className="text-lg font-medium text-gray-900 dark:text-white pr-8">
          {question}
        </span>
        <ChevronDown
          className={`w-5 h-5 text-gray-500 dark:text-gray-400 flex-shrink-0 transition-transform ${
            isOpen ? 'rotate-180' : ''
          }`}
        />
      </button>
      <div
        className={`overflow-hidden transition-all duration-300 ${
          isOpen ? 'max-h-96 pb-6' : 'max-h-0'
        }`}
      >
        <p className="text-gray-600 dark:text-gray-400">
          {answer}
        </p>
      </div>
    </div>
  );
}

export default function FAQSection({ title, subtitle, faqs }: FAQSectionProps) {
  const [openIndex, setOpenIndex] = useState<number | null>(0);

  return (
    <section className="py-20 bg-gray-50 dark:bg-gray-900/50">
      <div className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="text-center mb-12">
          <h2 className="text-3xl md:text-4xl font-bold text-gray-900 dark:text-white mb-4">
            {title}
          </h2>
          {subtitle && (
            <p className="text-xl text-gray-600 dark:text-gray-400">
              {subtitle}
            </p>
          )}
        </div>

        <div className="bg-white dark:bg-gray-800 rounded-2xl shadow-sm border border-gray-200 dark:border-gray-700 px-6">
          {faqs.map((faq, index) => (
            <FAQItem
              key={index}
              {...faq}
              isOpen={openIndex === index}
              onClick={() => setOpenIndex(openIndex === index ? null : index)}
            />
          ))}
        </div>
      </div>
    </section>
  );
}
