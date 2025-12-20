import DOMPurify from 'dompurify';

/**
 * Sanitize HTML content to prevent XSS attacks.
 * Use this when rendering AI-generated content or user input as HTML.
 */
export function sanitizeHtml(dirty: string): string {
  return DOMPurify.sanitize(dirty, {
    ALLOWED_TAGS: [
      'p', 'br', 'strong', 'em', 'b', 'i', 'u', 's',
      'h1', 'h2', 'h3', 'h4', 'h5', 'h6',
      'ul', 'ol', 'li',
      'blockquote', 'code', 'pre',
      'a', 'img',
      'table', 'thead', 'tbody', 'tr', 'th', 'td',
      'div', 'span',
      'sub', 'sup',
    ],
    ALLOWED_ATTR: [
      'href', 'src', 'alt', 'title', 'class', 'id',
      'target', 'rel',
      'colspan', 'rowspan',
    ],
    ALLOW_DATA_ATTR: false,
    ADD_ATTR: ['target'],
    // Force links to open in new tab and add noopener
    FORCE_BODY: false,
  });
}

/**
 * Sanitize and configure links to open in new tabs safely.
 */
export function sanitizeHtmlWithSafeLinks(dirty: string): string {
  const clean = sanitizeHtml(dirty);

  // Add target="_blank" and rel="noopener noreferrer" to all links
  return clean.replace(
    /<a\s+([^>]*href=[^>]*)>/gi,
    '<a $1 target="_blank" rel="noopener noreferrer">'
  );
}

/**
 * Strip all HTML tags and return plain text.
 * Useful for text-only contexts like titles or meta descriptions.
 */
export function stripHtml(dirty: string): string {
  return DOMPurify.sanitize(dirty, {
    ALLOWED_TAGS: [],
    ALLOWED_ATTR: [],
  });
}

/**
 * Sanitize content specifically for math/code display.
 * Allows code-related tags and styling.
 */
export function sanitizeCodeContent(dirty: string): string {
  return DOMPurify.sanitize(dirty, {
    ALLOWED_TAGS: [
      'code', 'pre', 'span', 'div',
      'sub', 'sup', 'br',
    ],
    ALLOWED_ATTR: ['class', 'data-language'],
    ALLOW_DATA_ATTR: true,
  });
}

/**
 * Check if a string contains potentially dangerous content.
 * Useful for validation before processing.
 */
export function containsUnsafeContent(content: string): boolean {
  const sanitized = DOMPurify.sanitize(content);
  return sanitized !== content;
}

/**
 * Sanitize user input for display (escapes HTML but doesn't allow any tags).
 */
export function escapeHtml(unsafe: string): string {
  return unsafe
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
    .replace(/'/g, '&#039;');
}
