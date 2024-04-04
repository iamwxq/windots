import antfu from "@antfu/eslint-config";
import { FlatCompat } from "@eslint/eslintrc";

const compat = new FlatCompat();

export default antfu({
  stylistic: {
    quotes: "double",
    semi: true,
  },
  react: {
    overrides: {
      "react/prop-types": "off",
      "react-refresh/only-export-components": "off",
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
    },
  },
  vue: {
    overrides: {
      "vue/multiline-html-element-content-newline": "off",
      "vue/max-attributes-per-line": ["warn", {
        singleline: 2,
        multiline: 1,
      }],
    },
    vueVersion: 3,
  },
},
// TailwindCSS
...compat.config({
  extends: [
    "plugin:tailwindcss/recommended",
  ],
  rules: {
    "tailwindcss/migration-from-tailwind-2": "off",
  },
}));
