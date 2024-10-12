// eslint.config.js (flat config)
 const eslintPluginEmberRecommended =
 require('eslint-plugin-ember/configs/recommended');

 module.exports = [
   ...eslintPluginEmberRecommended,
   {
     files: ["**/*.js"],
     rules: {
       "ember/no-private-routing-service": "off",
       "ember/new-module-imports": "off",
       "no-prototype-builtins": "off",
       "no-undef": "off",
       "no-self-assign": "off",
       }
   }
 ];
