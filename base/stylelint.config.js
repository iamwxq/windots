/** @type {import('stylelint').Config} */
export default {
  allowEmptyInput: true,
  extends: [
    "stylelint-config-standard-vue",
    "stylelint-config-recess-order",
  ],
  plugins: [
    "@stylistic/stylelint-plugin",
  ],
  rules: {
    // standard
    "color-named": "never",
    "media-feature-range-notation": "prefix",
    "color-function-notation": "legacy",
    "alpha-value-notation": "number",

    // @stylistic/stylelint-plugin
    "@stylistic/unit-case": "lower",
    "@stylistic/color-hex-case": "lower",
    "@stylistic/property-case": "lower",
    "@stylistic/string-quotes": "double",
    "@stylistic/linebreaks": "unix",
    "@stylistic/indentation": 2,
    "@stylistic/no-eol-whitespace": true,
    "@stylistic/no-extra-semicolons": true,

    "@stylistic/function-comma-space-after": "always",
    "@stylistic/function-comma-space-before": "never",
    "@stylistic/function-parentheses-space-inside": "never",
    "@stylistic/function-parentheses-newline-inside": "never-multi-line",
    "@stylistic/function-whitespace-after": "always",

    "@stylistic/value-list-comma-newline-after": "never-multi-line",
    "@stylistic/value-list-comma-newline-before": "never-multi-line",
    "@stylistic/value-list-comma-space-after": "always",
    "@stylistic/value-list-comma-space-before": "never",

    "@stylistic/declaration-block-semicolon-newline-after": "always",
    "@stylistic/declaration-block-semicolon-space-before": "never",
    "@stylistic/declaration-block-trailing-semicolon": "always",
    "@stylistic/declaration-bang-space-after": "always",
    "@stylistic/declaration-bang-space-before": "always",
    "@stylistic/declaration-colon-newline-after": "always-multi-line",
    "@stylistic/declaration-colon-space-after": "always",
    "@stylistic/declaration-colon-space-before": "never",

    "@stylistic/block-closing-brace-empty-line-before": "never",
    "@stylistic/block-opening-brace-newline-after": "always",
    "@stylistic/block-opening-brace-space-before": "always",

    "@stylistic/selector-attribute-brackets-space-inside": "never",
    "@stylistic/selector-attribute-operator-space-after": "never",
    "@stylistic/selector-attribute-operator-space-before": "never",
    "@stylistic/selector-combinator-space-after": "always",
    "@stylistic/selector-combinator-space-before": "always",
    "@stylistic/selector-descendant-combinator-no-non-space": true,
    "@stylistic/selector-pseudo-class-case": "lower",
    "@stylistic/selector-pseudo-class-parentheses-space-inside": "never",
    "@stylistic/selector-pseudo-element-case": "lower",
    "@stylistic/selector-list-comma-newline-after": "always-multi-line",
    "@stylistic/selector-list-comma-space-after": "always-single-line",
    "@stylistic/selector-list-comma-space-before": "never",

    "@stylistic/media-feature-colon-space-after": "always",
    "@stylistic/media-feature-colon-space-before": "never",
    "@stylistic/media-feature-name-case": "lower",
    "@stylistic/media-feature-parentheses-space-inside": "never",
    "@stylistic/media-feature-range-operator-space-after": "always",
    "@stylistic/media-feature-range-operator-space-before": "always",

    "@stylistic/media-query-list-comma-space-after": "always-single-line",
    "@stylistic/media-query-list-comma-space-before": "never",

    "@stylistic/at-rule-name-case": "lower",
    "@stylistic/at-rule-name-space-after": "always",
    "@stylistic/at-rule-semicolon-newline-after": "always",
    "@stylistic/at-rule-semicolon-space-before": "never",
  },
};
