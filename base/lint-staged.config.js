import { ESLint } from "eslint";

async function removeIgnoredFiles(files) {
  const eslint = new ESLint();
  const ignoredFiles = await Promise.all(files.map(file => eslint.isPathIgnored(file)));
  const filteredFiles = files.filter((_, i) => !ignoredFiles[i]);
  return filteredFiles.join(" ");
}

export default {
  "**/*.{ts,tsx,jsx,js,vue,json}": async (files) => {
    const filesToLint = await removeIgnoredFiles(files);
    return [`eslint ${filesToLint} --max-warnings=0`];
  },
  "**/*.{vue,css,scss}": async (files) => {
    const filesToLint = await removeIgnoredFiles(files);
    return [`stylelint ${filesToLint} --max-warnings=0 --fix`];
  },
};
