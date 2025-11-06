#!/bin/bash
set -e
echo "⚙️ Running EAS pre-install hook..."
rm -rf node_modules package-lock.json
npm cache clean --force
npm install --legacy-peer-deps --force
echo "✅ Finished installing dependencies."

