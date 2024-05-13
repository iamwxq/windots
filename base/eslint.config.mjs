import antfu from "@antfu/eslint-config";
import { FlatCompat } from "@eslint/eslintrc";

const compat = new FlatCompat();

export default antfu(
  {
    stylistic: {
      jsx: true,  // react
      indent: 2,
      semi: true,
      quotes: "double",
    },
    vue: true, // vue
    react: true, // react
  },
  // react
  {
    rules: {
      "react/prop-types": "off",
      "style/jsx-one-expression-per-line": "off",
      "style/jsx-sort-props": [
        "error",
        {
          callbacksLast: true,
          reservedFirst: true,
          shorthandFirst: true,
          multiline: "last",
        },
      ],
    }
  },
  // vue
  {
    files: ["**/*.vue"],
    rules: {
      "vue/multiline-html-element-content-newline": "off",
      "vue/attributes-order": ["error", {
        alphabetical: true,
      }],
      "vue/max-attributes-per-line": ["error", {
        singleline: 2,
        multiline: 1,
      }],
    },
  },
  // tailwindcss
  ...compat.config({
    extends: ["plugin:tailwindcss/recommended"],
    rules: {
      "tailwindcss/migration-from-tailwind-2": "off",
    },
  }),
);
