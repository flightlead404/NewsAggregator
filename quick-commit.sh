#!/bin/bash

# Quick commit to main branch only (no deployment)
# Usage: ./quick-commit.sh "Your commit message"

cd /Users/mwalker/Dropbox/Projects/NewsAggregator

if [ -z "$1" ]; then
    echo "❌ Error: Please provide a commit message"
    echo "Usage: ./quick-commit.sh \"Your commit message\""
    exit 1
fi

echo "📝 Adding changes..."
git add .

echo "💾 Committing..."
git commit -m "$1"

echo "⬆️  Pushing to GitHub..."
git push origin main

echo ""
echo "✅ Committed to main branch!"
echo "📦 Repository: https://github.com/flightlead404/NewsAggregator"
echo ""
echo "💡 To deploy to live site, run: ./update-and-deploy.sh"
echo ""
