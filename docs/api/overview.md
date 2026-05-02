# API Overview

Welcome to the {{ config.extra.company.name }} API documentation. Our REST API provides full programmatic access to manage leads, workflows, automations, and integrations.

## Base URL

```
{{ config.extra.api.base_url }}
```

## API Versions

| Version | Status | Deprecated |
|---------|--------|-----------|
| v1 | ✅ Current | - |
| v0 | ⚠️ Legacy | 2024-12-31 |

## Key Features

- **RESTful** — Standard HTTP methods
- **JSON** — Request and response format
- **Authentication** — API Keys and OAuth 2.0
- **Rate Limiting** — 1000 requests per minute
- **Webhooks** — Real-time event notifications
- **Pagination** — Limit/offset support
- **Batch Operations** — Process multiple records

## Quick Start

### 1. Get Your API Key

Visit your <a href="{{ config.extra.company.dashboard }}">{{ config.extra.company.dashboard }}</a> → Settings → API Keys

### 2. Make Your First Request

```bash
curl -X GET {{ config.extra.api.base_url }}/leads \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json"
```

### 3. Parse the Response

```json
{
  "data": [
    {
      "id": "lead_123",
      "email": "john@example.com",
      "first_name": "John",
      "last_name": "Doe",
      "company": "Acme Corp",
      "created_at": "2024-05-02T10:30:00Z"
    }
  ],
  "meta": {
    "total": 1234,
    "limit": 20,
    "offset": 0
  }
}
```

## Request Format

### Headers

```http
Authorization: Bearer YOUR_API_KEY
Content-Type: application/json
X-Request-ID: unique_request_id (optional)
```

### Query Parameters

| Parameter | Type | Description |
|-----------|------|-------------|
| `limit` | integer | Results per page (default: 20, max: 100) |
| `offset` | integer | Pagination offset (default: 0) |
| `sort` | string | Sort field (e.g., `created_at:desc`) |
| `filter` | string | Filter expression |

### Request Body

```json
{
  "email": "john@example.com",
  "first_name": "John",
  "last_name": "Doe",
  "company": "Acme Corp",
  "metadata": {
    "source": "web_form",
    "campaign": "summer_2024"
  }
}
```

## Response Format

### Success Response (200 OK)

```json
{
  "data": { /* Resource object */ },
  "meta": {
    "timestamp": "2024-05-02T10:30:00Z",
    "request_id": "req_abc123"
  }
}
```

### Error Response (4xx/5xx)

```json
{
  "error": {
    "code": "INVALID_REQUEST",
    "message": "Invalid email address",
    "details": {
      "field": "email",
      "reason": "format_invalid"
    }
  }
}
```

## HTTP Status Codes

| Code | Meaning | Example |
|------|---------|---------|
| 200 | OK | Request succeeded |
| 201 | Created | Resource created |
| 204 | No Content | Success, no response |
| 400 | Bad Request | Invalid parameters |
| 401 | Unauthorized | Missing/invalid API key |
| 403 | Forbidden | Insufficient permissions |
| 404 | Not Found | Resource not found |
| 429 | Rate Limited | Too many requests |
| 500 | Server Error | Internal error |

## Rate Limiting

API requests are rate-limited to **1000 per minute** per API key.

### Rate Limit Headers

```http
X-RateLimit-Limit: 1000
X-RateLimit-Remaining: 999
X-RateLimit-Reset: 1714744200
```

### Handling Rate Limits

```python
import time

def make_request_with_retry(url, max_retries=3):
    for attempt in range(max_retries):
        response = requests.get(url, headers=headers)
        
        if response.status_code == 429:
            reset_time = int(response.headers['X-RateLimit-Reset'])
            sleep_duration = reset_time - time.time()
            time.sleep(sleep_duration)
            continue
        
        return response
    
    raise Exception("Max retries exceeded")
```

## Pagination

Use `limit` and `offset` for paginating results:

```bash
# First page
{{ config.extra.api.base_url }}/leads?limit=20&offset=0

# Next page
{{ config.extra.api.base_url }}/leads?limit=20&offset=20

# Third page
{{ config.extra.api.base_url }}/leads?limit=20&offset=40
```

## Filtering

Filter results using query parameters:

```bash
# Filter by company
{{ config.extra.api.base_url }}/leads?filter[company]=Acme%20Corp

# Filter by date range
{{ config.extra.api.base_url }}/leads?filter[created_at][$gte]=2024-05-01&filter[created_at][$lte]=2024-05-31

# Filter by status
{{ config.extra.api.base_url }}/leads?filter[status]=active
```

## SDK Support

Use our official SDKs for easier integration:

### Node.js

```bash
npm install @{{ config.extra.company.name | lower }}/sdk
```

### Python

```bash
pip install {{ config.extra.company.name | lower }}-sdk
```

### Go

```bash
go get github.com/{{ config.extra.company.name | lower }}/go-sdk
```

## Documentation Structure

- [Authentication](auth.md) — API key and OAuth setup
- [Endpoints](endpoints.md) — Complete endpoint reference
- [Workflows API](../guides/advanced/workflows.md) — Manage workflows
- [Webhooks](../guides/advanced/integrations.md) — Real-time events

## Examples

### Create a Lead

```bash
curl -X POST {{ config.extra.api.base_url }}/leads \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "john@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "company": "Acme Corp"
  }'
```

### List Leads

```bash
curl -X GET "{{ config.extra.api.base_url }}/leads?limit=20&sort=created_at:desc" \
  -H "Authorization: Bearer YOUR_API_KEY"
```

### Update a Lead

```bash
curl -X PATCH {{ config.extra.api.base_url }}/leads/lead_123 \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "status": "qualified"
  }'
```

### Delete a Lead

```bash
curl -X DELETE {{ config.extra.api.base_url }}/leads/lead_123 \
  -H "Authorization: Bearer YOUR_API_KEY"
```

## Need Help?

- 📖 <a href="{{ config.extra.api.docs_url }}">Full API Documentation</a>
- 📧 <a href="mailto:{{ config.extra.company.support_email }}">Contact Support</a>
- 🐛 <a href="{{ config.extra.company.website }}/issues">Report a Bug</a>

---

**Next:** [Authentication](auth.md) | [Endpoints](endpoints.md)
