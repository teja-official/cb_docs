#!/bin/bash

# MkDocs Documentation Setup Script
# Quick start for local development and deployment

set -e

echo "🚀 MkDocs Documentation Setup"
echo "=============================="
echo ""

# Check if Python is installed
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is not installed. Please install Python 3.8 or higher."
    exit 1
fi

echo "✅ Python 3 found: $(python3 --version)"
echo ""

# Check if pip is installed
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 is not installed. Please install pip."
    exit 1
fi

echo "✅ pip3 found"
echo ""

# Install dependencies
echo "📦 Installing dependencies..."
pip3 install -r requirements.txt
echo ""

# Build documentation
echo "🔨 Building documentation..."
mkdocs build
echo ""

echo "✅ Setup complete!"
echo ""
echo "📝 Available commands:"
echo "  mkdocs serve              - Start local server (http://localhost:8000)"
echo "  mkdocs build              - Build static site to 'site/' folder"
echo "  mkdocs build --clean      - Clean build (remove old site files)"
echo ""
echo "🚀 To start developing locally:"
echo "  mkdocs serve"
echo ""
