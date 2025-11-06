#!/bin/bash
set -e

echo "⚙️ Running pre-install hook: cleaning and reinstalling deps..."

# Force remove old dependencies and lock file
rm -rf node_modules package-lock.json

# Clear npm cache safely
npm cache clean --force

# Reinstall dependencies with relaxed peer dependency rules
npm install --force --legacy-peer-deps

echo "✅ Dependencies installed successfully! Continuing build..."
