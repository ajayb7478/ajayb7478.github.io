#!/bin/bash

# Get the current commit count
commit_count=$(git rev-list --count HEAD)

# Increment the commit count
commit_count=$((commit_count + 1))

# Commit message
commit_message="${commit_count}th commit"

# Perform the Git commands
git add .
git commit -m "$commit_message"
git branch -M main
git push -u origin main

echo "Script executed successfully: ${commit_message}"
