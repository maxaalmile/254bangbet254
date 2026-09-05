#!/bin/bash
set -e

echo "=== Building React frontend ==="

cd frontend
npm install
npm run build
cd ..

echo "=== Frontend build complete ==="
echo "=== Vercel Python function will use api/index.py ==="

echo "=== Copying frontend to public/ for Vercel ==="
rm -rf public
mkdir -p public
cp -r frontend/dist/. public/
echo "=== Static frontend copied to public/ ==="
ls -la public/
