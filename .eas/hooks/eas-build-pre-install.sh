#!/bin/bash
set -e

echo "🧹 Cleaning node_modules and lockfile..."
rm -rf node_modules package-lock.json

echo "🧼 Clearing npm cache..."
npm cache clean --force

echo "📦 Installing dependencies with --legacy-peer-deps..."
npm install --legacy-peer-deps

echo "✅ Dependencies installed successfully."
