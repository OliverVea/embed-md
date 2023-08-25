#!/usr/bin/env bash

pwd
ls

# Configure git
git config --global --add safe.directory /github/workspace
git config user.name "embed-md bot"
git config user.email "oliver.vea@gmail.com"
git config pull.rebase true
git config rebase.autoStash true

git config --global github.token "$1"

COMMIT_MESSAGE="$2"
FILES="${@:3}"

# Embed files
echo "Embedding files: $FILES"
npx embedme "$FILES"

# Commit changes
echo "Commiting with message: $COMMIT_MESSAGE"

# Pull and apply changes
git pull 

# Stage and commit the changes
git add "$FILES"
git commit -m "$COMMIT_MESSAGE"

# Push the changes to the current branch
git push
