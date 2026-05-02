.PHONY: help install serve build clean deploy docs-clean docs-build docs-serve

help:
	@echo "MkDocs Documentation Commands"
	@echo "============================="
	@echo ""
	@echo "install      - Install dependencies"
	@echo "serve        - Start local development server"
	@echo "build        - Build static documentation"
	@echo "clean        - Clean build artifacts"
	@echo "deploy       - Build and deploy to GitHub Pages"
	@echo "docs-serve   - Serve with live reload"
	@echo "docs-build   - Build production site"
	@echo "docs-clean   - Remove site/ directory"
	@echo ""

install:
	@echo "📦 Installing dependencies..."
	pip3 install -r requirements.txt
	@echo "✅ Dependencies installed"

serve:
	@echo "🚀 Starting MkDocs development server..."
	@echo "📝 Open http://localhost:8000 in your browser"
	mkdocs serve

build:
	@echo "🔨 Building documentation..."
	mkdocs build
	@echo "✅ Build complete. Output in site/"

clean:
	@echo "🧹 Cleaning build artifacts..."
	rm -rf site/
	find . -type d -name __pycache__ -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete
	@echo "✅ Cleanup complete"

deploy: build
	@echo "🚀 Deploying to GitHub Pages..."
	pip3 install ghp-import
	ghp-import -p site
	@echo "✅ Deployed!"

docs-serve:
	@echo "📖 Starting documentation server..."
	mkdocs serve --dev-addr 127.0.0.1:8000

docs-build:
	@echo "🏗️  Building production documentation..."
	mkdocs build --quiet
	@echo "✅ Built to site/"

docs-clean:
	@echo "🗑️  Removing site directory..."
	rm -rf site/
	@echo "✅ Removed"

.DEFAULT_GOAL := help
