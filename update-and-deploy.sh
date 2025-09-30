#!/bin/bash

# Quick update and deploy to GitHub Pages
# Usage: ./update-and-deploy.sh "Your commit message"

cd /Users/mwalker/Dropbox/Projects/NewsAggregator

# Check if commit message provided
if [ -z "$1" ]; then
    echo "❌ Error: Please provide a commit message"
    echo "Usage: ./update-and-deploy.sh \"Your commit message\""
    exit 1
fi

echo "📝 Adding changes..."
git add .

echo "💾 Committing to main branch..."
git commit -m "$1"

echo "⬆️  Pushing to main..."
git push origin main

echo "🔄 Switching to gh-pages..."
git checkout gh-pages

echo "🔀 Merging main into gh-pages..."
git merge main

echo "🚀 Deploying to GitHub Pages..."
git push origin gh-pages

echo "✅ Switching back to main..."
git checkout main

echo ""
echo "✅ Successfully deployed!"
echo "🌐 Live at: https://flightlead404.github.io/NewsAggregator/"
echo ""
