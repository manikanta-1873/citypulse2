#!/bin/bash
set -e

echo "⚙️  EAS pre-install hook triggered..."
echo "Cleaning cache and modules..."
rm -rf node_modules package-lock.json
npm cache clean --force

echo "Installing dependencies with legacy peer deps..."
npm install --legacy-peer-deps --force

echo "✅ Dependencies installed successfully. Skipping npm ci."

