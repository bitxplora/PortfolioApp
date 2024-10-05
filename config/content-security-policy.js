module.exports = function (environment) {
  return {
    delivery: ['meta'],
    policy: {
      // Deny everything by default
      'default-src': ["'none'"],
      // Deny everything by default
      'connect-src': ["'self'"],
      // Allow scripts, images and media from the same host as the index.html is served ('self')
      'script-src': [
        "'self'",
        'localhost:*',
        environment === 'test' ? "'unsafe-eval'" : '',
      ],
      'img-src': ["'self'"],
      'media-src': ["'self'"],
      // Style sheet should be loaded from same host and from https://fonts.googleapis.com for Google fonts
      'style-src': [
        "'self'",
        'inline',
        'data:',
        "'unsafe-inline'",
        'https://fonts.googleapis.com',
        'https://fonts.gstatic.com',
        'https://cdn.jsdelivr.net',
      ],
      'style-src-elem': [
        "'self'",
        'inline',
        'data:',
        "'unsafe-inline'",
        'https://fonts.googleapis.com',
        'https://fonts.gstatic.com',
        'https://cdn.jsdelivr.net',
      ],
      // Only allow fonts from https://fonts.googleapis.com
      'font-src': [
        "'self'",
        'inline',
        'data:',
        "'unsafe-inline'",
        'https://fonts.googleapis.com',
        'https://fonts.gstatic.com',
      ],
    },
    reportOnly: false,
  };
};
