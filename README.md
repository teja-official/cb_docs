# Documentation Setup Guide

This is a complete, production-ready MkDocs setup for {{ config.extra.company.name }} documentation site.

## 📁 Project Structure

```
cb_docs/
├── docs/                          # Documentation source files
│   ├── index.md                   # Home page
│   ├── introduction.md            # Introduction
│   ├── guides/                    # Guides section
│   │   ├── getting-started.md    # Getting started guide
│   │   ├── installation.md       # Installation instructions
│   │   └── advanced/             # Advanced topics
│   │       ├── workflows.md      # Workflow documentation
│   │       ├── automation.md     # Automation guide
│   │       └── integrations.md   # Integrations
│   ├── api/                       # API documentation
│   │   ├── overview.md           # API overview
│   │   ├── auth.md               # Authentication
│   │   └── endpoints.md          # Endpoint reference
│   └── assets/                    # Static assets
│       └── custom.css            # Custom styling
├── overrides/                     # Theme overrides
│   └── main.html                 # Custom header/footer
├── mkdocs.yml                     # MkDocs configuration
└── README.md                      # This file
```

## 🚀 Quick Start

### 1. Install MkDocs

```bash
pip install mkdocs mkdocs-material
```

### 2. Serve Documentation Locally

```bash
mkdocs serve
```

Visit `http://localhost:8000` in your browser.

### 3. Build Static Site

```bash
mkdocs build
```

This generates the `site/` folder with HTML files.

## ⚙️ Configuration

### Customize Your URLs

Edit `mkdocs.yml` and update the `extra:` section:

```yaml
extra:
  company:
    name: FollowMyLead              # Your company name
    website: https://mycompany.com
    dashboard: https://dashboard.mycompany.com
    support_email: support@mycompany.com
  api:
    base_url: https://api.mycompany.com/v1
    docs_url: https://api.mycompany.com/docs
```

All URLs in pages will automatically use these variables!

### Add Your Logo

Place your logo in `docs/assets/` and update `mkdocs.yml`:

```yaml
theme:
  logo: assets/logo.png
  favicon: assets/favicon.png
```

## 📝 Adding New Pages

### Create a Simple Page

1. Create a new `.md` file in the appropriate folder
2. Add it to the `nav:` section in `mkdocs.yml`
3. Use variables for URLs:

```markdown
# My Page

Visit our [website]({{ config.extra.company.website }})

API Docs: [{{ config.extra.api.docs_url }}]({{ config.extra.api.docs_url }})
```

### Create a Nested Section

Edit `mkdocs.yml`:

```yaml
nav:
  - Home: index.md
  - My Section:
      - Page 1: section/page1.md
      - Page 2: section/page2.md
      - Subsection:
          - Page 3: section/sub/page3.md
```

## 🎨 Customizing Styling

Edit `docs/assets/custom.css` to customize:

- Header and footer colors
- Link colors
- Sidebar width
- Typography
- Responsive behavior

### Key CSS Classes

```css
/* Header */
.company-header { /* ... */ }
.header-link { /* ... */ }

/* Footer */
.company-footer { /* ... */ }
.footer-links { /* ... */ }

/* Content */
.md-content h1 { /* ... */ }
a { /* ... */ }
```

## 🔧 Customizing Header/Footer

Edit `overrides/main.html` to change:

- Header branding
- Navigation links
- Footer content
- Social media links

The file uses Jinja2 templating and has access to all `config.extra` variables!

## 🚢 Deployment

### GitHub Pages

```bash
# Install ghp-import
pip install ghp-import

# Build and deploy
mkdocs build
ghp-import -p site
```

### Netlify

1. Connect your GitHub repo
2. Build command: `mkdocs build`
3. Publish directory: `site`

### Docker

```dockerfile
FROM python:3.11

WORKDIR /docs

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8000
CMD ["mkdocs", "serve", "--dev-addr=0.0.0.0:8000"]
```

```bash
docker build -t docs .
docker run -p 8000:8000 docs
```

## 📦 Required Dependencies

- **Python 3.8+**
- **mkdocs** — Documentation generator
- **mkdocs-material** — Material theme for MkDocs

Install with:

```bash
pip install -r requirements.txt
```

## 🔐 Best Practices

### Git Workflow

```bash
# Clone repo
git clone <repo>
cd cb_docs

# Create feature branch
git checkout -b add-new-docs

# Make changes
# ... edit files ...

# Commit and push
git add .
git commit -m "docs: add new feature documentation"
git push origin add-new-docs

# Create pull request
```

### Documentation Standards

- ✅ Clear, concise titles
- ✅ Organize by user journey
- ✅ Include code examples
- ✅ Use consistent formatting
- ✅ Link to related pages
- ✅ Update when features change
- ❌ Don't use outdated information
- ❌ Avoid overly technical language

### SEO Optimization

Add meta tags in `mkdocs.yml`:

```yaml
extra:
  generator: false
  social:
    - icon: fontawesome/brands/github
      link: https://github.com
```

## 📚 Markdown Features Supported

- **Tables** — Use `|` syntax
- **Code blocks** — Use triple backticks with language
- **Admonitions** — `!!! note "Title"`
- **Tabs** — For alternative content
- **Footnotes** — Automatic numbering
- **Task lists** — `- [ ]` and `- [x]`
- **Emoji** — `:smile:` → 😊

### Example Admonition

```markdown
!!! warning "Important"
    This is an important note!

!!! tip "Pro Tip"
    Use this for helpful hints.

!!! danger "Be Careful"
    This could break things!
```

## 🐛 Troubleshooting

### Port 8000 Already in Use

```bash
mkdocs serve --dev-addr 127.0.0.1:8001
```

### CSS Not Updating

```bash
# Clean build
rm -rf site/
mkdocs build
```

### Files Not Appearing

Check `mkdocs.yml` for:
- Correct file paths
- Proper indentation (YAML is sensitive!)
- File exists in docs/ folder

## 📞 Support & Resources

- **MkDocs Docs:** https://www.mkdocs.org/
- **Material Theme:** https://squidfunk.github.io/mkdocs-material/
- **Markdown Guide:** https://www.markdownguide.org/

## 📄 License

This documentation setup is provided as-is for use in your organization.

---

**Happy documenting! 🚀**

For questions about your documentation, contact: {{ config.extra.company.support_email }}
