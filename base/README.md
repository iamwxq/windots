# Project configuration files that may need

## Packages

Some following packages might be installed

**eslint**

- eslint
- @antfu/eslint-config
- @eslint/eslintrc
- eslint-plugin-tailwindcss

**stylelint**

- stylelint
- stylelint-config-standard
- stylelint-config-standard-scss
- stylelint-config-standard-vue
- @stylistic/stylelint-plugin

**husky**

- husky

**lint-staged**

- lint-staged

**commitlint**

- @commitlint/cli
- @commitlint/config-conventional

**commitizen**

- commitizen
- cz-conventional-changelog

## Scripts

Quick scripts for convenience, exclude some of them that don't need

**eslint**

```sh
pnpm add -D eslint@latest @antfu/eslint-config@latest @eslint/eslintrc@latest eslint-plugin-tailwindcss@latest
```

**stylelint**

```sh
pnpm add -D stylelint@latest stylelint-config-standard@latest stylelint-config-standard-scss@latest stylelint-config-standard-vue@latest @stylistic/stylelint-plugin@latest
```

**husky**

```sh
pnpm add -D husky@latest

pnpm dlx husky init
```

**lint-staged**

```sh
pnpm add -D lint-staged@latest
```

**commitlint**

```sh
pnpm add -D @commitlint/cli@latest @commitlint/config-conventional@latest
```

**commitizen**

```sh
pnpm add -D commitizen@latest cz-conventional-changelog@latest

pnpm run cz
```

## Files

The configuration files

**eslint**

- eslint.config.js
- .eslintrc.js
- .eslintignore

**stylelint**

- stylelint.config.js

**husky**

- husky

**lint-staged**

- lint-staged.config.js

**commitlint**

- commitlint.config-js

**commitizen**

- .czrc