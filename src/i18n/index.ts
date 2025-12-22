import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';
import LanguageDetector from 'i18next-browser-languagedetector';
import { defaultLanguage } from './config';

// Import translations
import enCommon from './locales/en/common.json';
import enAuth from './locales/en/auth.json';
import enMarketing from './locales/en/marketing.json';
import enDashboard from './locales/en/dashboard.json';

import esCommon from './locales/es/common.json';
import esAuth from './locales/es/auth.json';
import esMarketing from './locales/es/marketing.json';
import esDashboard from './locales/es/dashboard.json';

import frCommon from './locales/fr/common.json';
import frAuth from './locales/fr/auth.json';
import frMarketing from './locales/fr/marketing.json';
import frDashboard from './locales/fr/dashboard.json';

const resources = {
  en: {
    common: enCommon,
    auth: enAuth,
    marketing: enMarketing,
    dashboard: enDashboard,
  },
  es: {
    common: esCommon,
    auth: esAuth,
    marketing: esMarketing,
    dashboard: esDashboard,
  },
  fr: {
    common: frCommon,
    auth: frAuth,
    marketing: frMarketing,
    dashboard: frDashboard,
  },
};

i18n
  .use(LanguageDetector)
  .use(initReactI18next)
  .init({
    resources,
    fallbackLng: defaultLanguage,
    defaultNS: 'common',
    ns: ['common', 'auth', 'marketing', 'dashboard'],
    interpolation: {
      escapeValue: false, // React already handles escaping
    },
    detection: {
      order: ['localStorage', 'navigator'],
      caches: ['localStorage'],
    },
  });

export default i18n;
