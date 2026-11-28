.PHONY: help install serve build clean deploy icons

# Silence Material for MkDocs' MkDocs 2.0 notice. We stay pinned to mkdocs 1.x.
export NO_MKDOCS_2_WARNING := 1

help:
	@echo "tejod Help Center"
	@echo ""
	@echo "  make install   Install dependencies (use a virtualenv)"
	@echo "  make serve     Live-reloading preview on http://127.0.0.1:8000"
	@echo "  make build     Strict build into site/ (fails on broken links)"
	@echo "  make clean     Remove site/"
	@echo "  make deploy    Build and push site/ to the gh-pages branch (manual alternative to GitHub Actions)"
	@echo "  make icons     Re-export Lucide icons from ../frontend/node_modules"

install:
	pip install -r requirements.txt

serve:
	mkdocs serve

build:
	mkdocs build --strict

clean:
	rm -rf site/

deploy:
	mkdocs gh-deploy --strict --force

icons:
	node scripts/export-lucide.mjs ../frontend/node_modules/lucide-react/dist/esm/icons overrides/.icons/lucide

.DEFAULT_GOAL := help
