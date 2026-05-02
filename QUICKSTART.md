# Quick Reference Guide

## 🚀 Getting Started (30 seconds)

```bash
# 1. Install dependencies
pip install -r requirements.txt

# 2. Start the dev server
mkdocs serve

# 3. Open http://localhost:8000 in your browser
```

## 📝 Quick Commands

| Command | Purpose |
|---------|---------|
| `mkdocs serve` | Start local development server (live reload) |
| `mkdocs build` | Build static HTML site |
| `make serve` | Same as above (using Makefile) |
| `make build` | Build with Makefile |
| `make clean` | Clean build artifacts |
| `make help` | Show all available commands |

## 🎯 Common Tasks

### Change Company Name/URLs

Edit `mkdocs.yml`, section `extra:`:

```yaml
extra:
  company:
    name: FollowMyLead
    website: https://mycompany.com
    dashboard: https://dashboard.mycompany.com
    support_email: support@mycompany.com
  api:
    base_url: https://api.mycompany.com/v1
    docs_url: https://api.mycompany.com/docs
```

**All pages automatically use these variables!**

### Add a New Page

1. Create file: `docs/section/page.md`
2. Add to navigation in `mkdocs.yml`:
   ```yaml
   nav:
     - Section:
         - Page: section/page.md
   ```
3. Use variables in your content:
   ```markdown
   # My Page
   
   Contact: {{ config.extra.company.support_email }}
   API: {{ config.extra.api.base_url }}
   ```

### Customize Styling

Edit `docs/assets/custom.css` — already includes:
- Custom header/footer styles
- Link colors
- Code block styling
- Table styling
- Responsive design

### Change Header/Footer

Edit `overrides/main.html` — uses Jinja2 templating:

```html
{{ config.extra.company.name }}
{{ config.extra.company.website }}
{{ config.extra.company.support_email }}
```

All `extra:` variables from `mkdocs.yml` are available!

## 📂 File Structure

```
docs/                    ← Page content
├── index.md            ← Home page
├── introduction.md
├── guides/
│   ├── getting-started.md
│   ├── installation.md
│   └── advanced/
│       ├── workflows.md
│       ├── automation.md
│       └── integrations.md
├── api/
│   ├── overview.md
│   ├── auth.md
│   └── endpoints.md
└── assets/
    └── custom.css

overrides/               ← Custom HTML
└── main.html

mkdocs.yml              ← Main configuration
requirements.txt        ← Python dependencies
Makefile               ← Shortcuts
```

## 🎨 Variables Available in Pages

Use any of these in `.md` files:

```markdown
{{ config.site_name }}                  ← "FollowMyLead Docs"
{{ config.site_description }}
{{ config.extra.company.name }}
{{ config.extra.company.website }}
{{ config.extra.company.dashboard }}
{{ config.extra.company.support_email }}
{{ config.extra.api.base_url }}
{{ config.extra.api.docs_url }}
```

## 🌐 Deploy Options

### GitHub Pages
```bash
pip install ghp-import
mkdocs build
ghp-import -p site
```

### Netlify
1. Connect GitHub repo
2. Build: `mkdocs build`
3. Publish: `site/`

### Docker
```bash
docker build -t docs .
docker run -p 8000:8000 docs
```

## ✨ Markdown Features

```markdown
# Heading 1
## Heading 2
### Heading 3

**Bold** and *italic*

- List item
- Another item
  - Nested item

1. Numbered item
2. Another

> Quote

| Header | Value |
|--------|-------|
| Cell   | Data  |

`inline code`

\`\`\`python
# Code block
print("hello")
\`\`\`

!!! note "Title"
    Note content

!!! warning "Warning"
    Warning content

[Link](https://example.com)
```

## 🐛 Troubleshooting

**Port 8000 in use?**
```bash
mkdocs serve --dev-addr 127.0.0.1:8001
```

**CSS not updating?**
```bash
rm -rf site/
mkdocs build
```

**YAML errors?**
- Check indentation (use spaces, not tabs)
- Verify file paths exist
- Run `mkdocs build` to see specific errors

## 📚 Learn More

- **MkDocs**: https://www.mkdocs.org/
- **Material Theme**: https://squidfunk.github.io/mkdocs-material/
- **Markdown Guide**: https://www.markdownguide.org/

---

**Need help?** Check README.md for more information.
