# Installation & Configuration

## System Requirements

| Requirement | Minimum | Recommended |
|------------|---------|-------------|
| **Node.js** | 14.x | 18.x LTS |
| **Python** | 3.8 | 3.10+ |
| **Memory** | 512 MB | 2 GB |
| **Storage** | 100 MB | 500 MB |
| **Internet** | 10 Mbps | 50 Mbps |

## Installation Methods

### Option 1: Docker (Recommended)

The fastest way to get started:

```bash
docker pull {{ config.extra.company.name | lower }}/platform:latest
docker run -d \
  -p 3000:3000 \
  -e API_KEY=your_api_key \
  {{ config.extra.company.name | lower }}/platform:latest
```

Then access the dashboard at `http://localhost:3000`

### Option 2: NPM Package

For Node.js environments:

```bash
npm install @{{ config.extra.company.name | lower }}/sdk
```

Then initialize:

```javascript
import { {{ config.extra.company.name }} } from '@{{ config.extra.company.name | lower }}/sdk';

const client = new {{ config.extra.company.name }}({
  apiKey: process.env.API_KEY,
  baseUrl: '{{ config.extra.api.base_url }}'
});

await client.initialize();
```

### Option 3: From Source

For developers:

```bash
git clone https://github.com/{{ config.extra.company.name | lower }}/platform.git
cd platform
npm install
npm run build
npm start
```

## Configuration

### Environment Variables

Create a `.env` file in your project root:

```env
# API Configuration
API_KEY=your_api_key_here
API_SECRET=your_api_secret_here
API_BASE_URL={{ config.extra.api.base_url }}

# Database
DB_HOST=localhost
DB_PORT=5432
DB_NAME=platform_db
DB_USER=admin
DB_PASSWORD=secure_password

# Server
PORT=3000
NODE_ENV=production
LOG_LEVEL=info

# Integrations
ENABLE_WEBHOOK=true
ENABLE_WEBHOOKS_HTTPS=true
WEBHOOK_SECRET=your_webhook_secret
```

### Initialize Configuration

```bash
{{ config.extra.company.name | lower }} init --interactive
```

This will guide you through:
- API key setup
- Database connection
- Webhook configuration
- Channel enablement (Email, WhatsApp, etc.)

## Verify Installation

Run the health check:

```bash
curl -X GET {{ config.extra.api.base_url }}/health
```

Expected response:

```json
{
  "status": "ok",
  "version": "1.0.0",
  "timestamp": "2024-05-02T10:30:00Z"
}
```

## Troubleshooting

!!! warning "Installation Issues"
    If you encounter problems, check the [Troubleshooting Guide](#troubleshooting)

### Port Already in Use

```bash
# Find and kill process on port 3000
lsof -i :3000
kill -9 <PID>

# Or change the port
PORT=3001 npm start
```

### Database Connection Failed

```bash
# Test database connection
psql -h {{ config.extra.company.name | lower }}_db -U admin -c "SELECT 1"

# Reset database
{{ config.extra.company.name | lower }} db reset --force
```

### API Key Invalid

1. Go to [Dashboard → Settings → API Keys]({{ config.extra.company.dashboard }}/settings/api-keys)
2. Regenerate your key
3. Update your `.env` file
4. Restart the service

## Next Steps

- [Getting Started Guide](getting-started.md) — Set up your first workflow
- [Advanced Workflows](advanced/workflows.md) — Create complex automations
- [API Reference](../api/overview.md) — Start integrating

---

**Need support?** Email us at <a href="mailto:{{ config.extra.company.support_email }}">{{ config.extra.company.support_email }}</a>
