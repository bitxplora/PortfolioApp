'use strict';

module.exports = {
  extends: ['stylelint-config-standard', 'stylelint-prettier/recommended'],
  overrides: [
    {
      files: ['**/*.css'],
      rules: {
        'media-feature-range-notation': ['prefix'],
      },
    },
  ],
};
