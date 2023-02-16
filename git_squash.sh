#!/bin/sh

# Check if feature and main branch names were provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <feature-branch> <main-branch>"
  exit 1
fi

# Store the branch names in variables
feature=$1
main=$2

# Create a backup of the feature branch
git checkout $feature
git checkout -b "${feature}_backup"
git push -u origin "${feature}_backup"

# Create a temporary branch from main
git checkout -b temp $main

# Squash the feature branch into temp
git merge --squash $feature

# Commit the changes
git commit

# Go back to the feature branch and point it to the temp branch
git checkout $feature
git reset --hard temp

# Force push the updated feature branch to the remote repository
git push -f origin $feature

# Delete the temporary branch
git branch -d temp