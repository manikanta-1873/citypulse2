#!/bin/bash
set -e

echo "🧩 EAS pre-install hook triggered"
echo "Cleaning old modules..."
rm -rf node_modules package-lock.json

echo "Cleaning npm cache..."
npm cache clean --force

echo "Installing dependencies with legacy peer deps..."
npm install --legacy-peer-deps --force

echo "✅ Dependencies installed successfully (npm ci skipped)"
