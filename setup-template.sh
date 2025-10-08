#!/bin/bash

# Setup script for presentation template
# This script customizes the template for a new presentation

set -e

echo "🎯 Presentation Template Setup"
echo "==============================="
echo

# Get the current repository name from git remote
REPO_URL=$(git config --get remote.origin.url || echo "")
if [ -n "$REPO_URL" ]; then
    # Extract repo name from URL (works for both HTTPS and SSH)
    REPO_NAME=$(echo "$REPO_URL" | sed -e 's/.*[:/]\([^/]*\/[^/]*\)\.git$/\1/' -e 's/.*[:/]\([^/]*\/[^/]*\)$/\1/')
    OWNER=$(echo "$REPO_NAME" | cut -d'/' -f1)
    REPO=$(echo "$REPO_NAME" | cut -d'/' -f2)
else
    echo "⚠️  Could not detect git repository. Using defaults."
    OWNER="YOUR-USERNAME"
    REPO="YOUR-REPO-NAME"
fi

echo "Detected configuration:"
echo "  Owner: $OWNER"
echo "  Repository: $REPO"
echo

# Prompt for confirmation or custom values
read -p "Is this correct? (y/n) [y]: " CONFIRM
CONFIRM=${CONFIRM:-y}

if [ "$CONFIRM" != "y" ]; then
    read -p "Enter GitHub username/organization: " OWNER
    read -p "Enter repository name: " REPO
fi

read -p "Enter presentation title [Presentation Title]: " TITLE
TITLE=${TITLE:-"Presentation Title"}

# Replace placeholders in files
echo
echo "📝 Updating files..."

# Update README.md
sed -i "s|YOUR-USERNAME|$OWNER|g" README.md
sed -i "s|YOUR-REPO-NAME|$REPO|g" README.md
sed -i "s|Presentation Title|$TITLE|g" README.md

# Update index.html
sed -i "s|Presentation Title|$TITLE|g" index.html
sed -i "s|slides/presentation.md|slides/$REPO.md|g" index.html

# Update package.json
sed -i "s|\"name\": \"presentation-template\"|\"name\": \"$REPO\"|g" package.json

# Rename the markdown file
if [ -f "slides/presentation.md" ]; then
    mv "slides/presentation.md" "slides/$REPO.md"
    echo "✅ Renamed slides/presentation.md to slides/$REPO.md"
elif [ -f "slides/ddev-linux-10-minutes.md" ]; then
    mv "slides/ddev-linux-10-minutes.md" "slides/$REPO.md"
    echo "✅ Renamed slides/ddev-linux-10-minutes.md to slides/$REPO.md"
fi

# Self-destruct: remove this setup script
echo
echo "🎉 Setup complete!"
echo
echo "Next steps:"
echo "  1. Edit slides/$REPO.md with your presentation content"
echo "  2. Customize css/custom.css if needed"
echo "  3. Add images to the images/ directory"
echo "  4. Commit and push your changes"
echo "  5. Enable GitHub Pages in repository settings (Settings > Pages > Deploy from main branch)"
echo
read -p "Remove this setup script? (y/n) [y]: " REMOVE
REMOVE=${REMOVE:-y}

if [ "$REMOVE" = "y" ]; then
    rm -- "$0"
    echo "✅ Setup script removed"
fi
