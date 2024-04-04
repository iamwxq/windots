const stylistic = require("@stylistic/eslint-plugin");

const customized = stylistic.configs.customize({
  indent: 2,
  quotes: "double",
  semi: true,
  jsx: true
})

module.exports = {
  extends: [
    "taro/react",
  ],
  plugins: [
    '@stylistic'
  ],
  rules: {
    "react/jsx-uses-react": "off",
    "react/react-in-jsx-scope": "off",

    "react/prop-types": "off",
    "react-refresh/only-export-components": "off",

    ...customized.rules,

    "@stylistic/jsx-one-expression-per-line": "off",
    "@stylistic/jsx-sort-props": [
      "error",
      {
        callbacksLast: true,
        reservedFirst: true,
        shorthandFirst: true,
        multiline: "last",
      },
    ],

  }
}
