#!/bin/bash

cd output;

git init
git config user.name "Travis CI"
git config user.email "stuart@mumford.me.uk"

git add "*.tgz"
git add "*.xml"

git commit -m "Deploy to GitHub Pages"

git push --force --quiet "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1

rm -rf .git
