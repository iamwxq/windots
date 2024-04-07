module.exports = {
  "**/*.{ts,tsx,jsx,js,vue,json}": async (files) => {
    const filesToLint = await removeIgnoredFiles(files);
    return [`eslint ${filesToLint} --max-warnings=0`];
  },
  "**/*.{vue,css,scss}": async (files) => {
    const filesToLint = await removeIgnoredFiles(files);
    return [`stylelint ${filesToLint} --max-warnings=0 --fix`];
  },
};
