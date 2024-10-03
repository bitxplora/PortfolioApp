'use strict';
module.exports = {
  extends: 'recommended',
  overrides: [
    {
      files: ['**/*.{gjs,gts}'],
      rules: {
        'no-forbidden-elements': false,
        'no-whitespace-for-layout': false,
      },
    },
  ],
};
