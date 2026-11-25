# tejod Help Center

User documentation for **tejod**, built with [MkDocs](https://www.mkdocs.org/) + [Material for MkDocs](https://squidfunk.github.io/mkdocs-material/) and styled to match the app (same indigo palette, Inter / JetBrains Mono, Lucide icons, light and dark themes).

Published to GitHub Pages at **https://docs.mysite.com/**.

## Quick start

```bash
make install   # pip install -r requirements.txt (use a virtualenv)
make serve     # http://127.0.0.1:8000 with live reload
make build     # strict build into site/ (fails on broken links/anchors)
```

> On WSL, open the preview from Windows as `http://localhost:8000`.

## Structure

```
docs/
├── index.md                    Home page (hero + cards)
├── getting-started/            What is tejod, sign-up, plans, setup checklist, navigation
├── setup/
│   ├── ai-models.md
│   ├── channels/               WhatsApp, Telegram, Email, SMS, message templates
│   ├── human-agents.md
│   └── lead-sources/           Meta Ads, Google Ads, Google Sheets, spreadsheet upload
├── nurture-campaigns/          The 4-step wizard, follow-ups, managing campaigns
├── engage/                     Conversations, handoffs, leads, web chat, dashboards
├── workspace/                  Team & roles, workspace settings (+ index for the tab)
├── account/                    Profile, account settings, notifications, billing, referrals, support
├── third-party/                Provider-side setup: Meta, Telegram, Twilio, email, AI keys, Google Ads
├── help/                       Troubleshooting, FAQ, glossary, permissions reference
├── assets/
│   ├── images/                 logo.svg, favicon.svg (the app's Zap mark)
│   └── stylesheets/app.css     Theme: app design tokens mapped onto Material
└── CNAME                       Custom domain for GitHub Pages
overrides/
├── main.html                   theme-color meta
├── partials/header.html        Material header + "Open tejod" button
└── .icons/lucide/              Lucide SVGs (exported from the frontend's lucide-react)
scripts/export-lucide.mjs       Re-exports the Lucide icons
.github/workflows/deploy.yml    Build + deploy to GitHub Pages
```

The navigation is defined in `mkdocs.yml` → `nav`. Add new pages there.

## Writing pages

### Variables

Product name, URLs and the support email live in `mkdocs.yml` → `extra.app`. Use them with **double square brackets** (not curly braces — `{{1}}` / `{{name}}` are WhatsApp and Twilio template variables and must stay literal):

```markdown
Sign in at [[ app.login_url ]] and contact [[ app.support_email ]].
```

Available: `app.name`, `app.url`, `app.login_url`, `app.register_url`, `app.plans_url`, `app.support_email`. Variables don't work inside front matter. For links use `<[[ app.login_url ]]>` or an HTML `<a>`, not `[[[ … ]]]`.

### Components

| Want | Write |
|---|---|
| Numbered steps (wizard-style badges) | `<div class="steps" markdown>` + an ordered list + `</div>` |
| Where in the app | `<span class="tj-path">Setup › **Channels** › **Add Channel**</span>` |
| Status badge | `<span class="tj-badge tj-badge--success">Active</span>` (`--primary`, `--warning`, `--danger`) |
| Card grid | `<div class="grid cards" markdown>` + a bullet list |
| Icon (same as the app) | `:lucide-radio:` — must exist in `overrides/.icons/lucide/` |
| Callout | `!!! tip "Title"` / `note` / `info` / `warning` / `danger` / `question` |
| Collapsible Q&A | `??? question "Title"` |
| Tabs | `=== "OpenAI"` |
| Keyboard keys | `++ctrl+k++` |
| Diagram | ` ```mermaid ` (prefer `flowchart TD`) |

### Adding an icon

Icons come from the frontend's `lucide-react` so they match the app. Add the name to the list in `scripts/export-lucide.mjs`, then:

```bash
node scripts/export-lucide.mjs ../frontend/node_modules/lucide-react/dist/esm/icons overrides/.icons/lucide
```

### Keeping docs in sync with the app

Most setup steps come from the in-app guides. When you change these, update the matching page:

| App source | Docs page |
|---|---|
| `frontend/src/components/help/setup-guides.js` | `setup/channels/*`, `setup/ai-models.md`, `setup/lead-sources/*`, `third-party/*` |
| `frontend/src/components/agents/channel-help.jsx` | `setup/human-agents.md` |
| `frontend/src/app/(private)/(main)/channels/_components/channelMeta.js` | `setup/channels/*` |
| `backend/apps/lead_nurture/enums.py` (AI services, strategies, statuses) | `setup/ai-models.md`, `nurture-campaigns/ai-and-channels.md`, `engage/leads.md` |
| `backend/apps/accounts/permission_catalog.py` | `help/permissions-reference.md` |
| `backend/apps/accounts/models.py` → `WorkspaceSettings` | `workspace/workspace-settings.md` |
| `backend/apps/plans/enums.py` → `FeatureKey` | `account/billing.md` |

`setup-guides.js` supports `mode: "link"` with an `href`: point a guide at its page here (e.g. `https://docs.mysite.com/setup/channels/whatsapp/`) to open the docs instead of the in-app dialog.

## Deploying to GitHub Pages with your domain

1. **Push** this repo to GitHub (`main` branch).
2. In the repo: **Settings → Pages → Build and deployment → Source: GitHub Actions**.
3. **DNS** at your domain provider: add a `CNAME` record
   `docs` → `<your-github-user-or-org>.github.io` (for this repo: `teja-official.github.io`).
4. In **Settings → Pages**, enter `docs.mysite.com` as the custom domain (it's also in `docs/CNAME`), wait for the DNS check, then tick **Enforce HTTPS**.

Every push to `main` runs `.github/workflows/deploy.yml`: a strict build, then deploy. Pull requests run the build only.

**Changing the domain:** update `site_url` in `mkdocs.yml` **and** `docs/CNAME`.

Manual deploy (without Actions): `make deploy` (pushes `site/` to the `gh-pages` branch; then set Pages' source to that branch).
