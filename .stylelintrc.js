'use strict';

module.exports = {
  extends: ['stylelint-config-standard', 'stylelint-prettier/recommended'],
  overrides: [
    {
      files: ['*.gjs', '.gts]'],
      rules: {
        'no-forbidden-elements': false,
      },
    },
  ],
};
