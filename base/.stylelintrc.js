/** @type {import('stylelint').Config} */
export default {
  extends: [
    "stylelint-config-standard-vue",
    "stylelint-config-recess-order"
  ],
  rules: {
    "color-named": "never",
  }
}
