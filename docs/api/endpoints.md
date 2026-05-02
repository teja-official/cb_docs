# API Endpoints

Complete reference for all {{ config.extra.company.name }} API endpoints.

## Leads

### List Leads

Retrieve all leads with optional filtering.

```http
GET {{ config.extra.api.base_url }}/leads
```

**Query Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `limit` | integer | Results per page (default: 20, max: 100) |
| `offset` | integer | Pagination offset (default: 0) |
| `sort` | string | Sort field with direction (e.g., `created_at:desc`) |
| `filter` | object | Filter conditions |

**Example:**

```bash
curl -X GET "{{ config.extra.api.base_url }}/leads?limit=20&offset=0&sort=created_at:desc" \
  -H "Authorization: Bearer YOUR_API_KEY"
```

**Response:**

```json
{
  "data": [
    {
      "id": "lead_123",
      "email": "john@example.com",
      "first_name": "John",
      "last_name": "Doe",
      "company": "Acme Corp",
      "status": "active",
      "lead_score": 85,
      "created_at": "2024-05-02T10:30:00Z",
      "updated_at": "2024-05-02T10:30:00Z"
    }
  ],
  "meta": {
    "total": 1234,
    "limit": 20,
    "offset": 0
  }
}
```

---

### Get Lead by ID

Retrieve a specific lead.

```http
GET {{ config.extra.api.base_url }}/leads/:lead_id
```

**Example:**

```bash
curl -X GET {{ config.extra.api.base_url }}/leads/lead_123 \
  -H "Authorization: Bearer YOUR_API_KEY"
```

**Response:**

```json
{
  "data": {
    "id": "lead_123",
    "email": "john@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "company": "Acme Corp",
    "phone": "+1234567890",
    "website": "https://example.com",
    "industry": "Technology",
    "company_size": "100-500",
    "status": "active",
    "lead_score": 85,
    "tags": ["qualified", "enterprise"],
    "custom_fields": {
      "budget": "$100,000",
      "timeline": "Q3 2024"
    },
    "created_at": "2024-05-02T10:30:00Z",
    "updated_at": "2024-05-02T10:30:00Z"
  }
}
```

---

### Create a Lead

Create a new lead.

```http
POST {{ config.extra.api.base_url }}/leads
```

**Request Body:**

```json
{
  "email": "jane@example.com",
  "first_name": "Jane",
  "last_name": "Smith",
  "company": "Tech Innovations Inc",
  "phone": "+1987654321",
  "website": "https://techinnovations.com",
  "industry": "SaaS",
  "company_size": "50-100",
  "source": "web_form",
  "tags": ["inbound", "website"],
  "custom_fields": {
    "budget": "$50,000",
    "use_case": "CRM Integration"
  }
}
```

**Example:**

```bash
curl -X POST {{ config.extra.api.base_url }}/leads \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "email": "jane@example.com",
    "first_name": "Jane",
    "last_name": "Smith",
    "company": "Tech Innovations Inc"
  }'
```

**Response (201 Created):**

```json
{
  "data": {
    "id": "lead_456",
    "email": "jane@example.com",
    "first_name": "Jane",
    "last_name": "Smith",
    "company": "Tech Innovations Inc",
    "status": "active",
    "lead_score": 0,
    "created_at": "2024-05-02T11:00:00Z",
    "updated_at": "2024-05-02T11:00:00Z"
  }
}
```

---

### Update a Lead

Update an existing lead.

```http
PATCH {{ config.extra.api.base_url }}/leads/:lead_id
```

**Request Body:**

```json
{
  "status": "qualified",
  "lead_score": 95,
  "tags": ["hot_prospect"],
  "custom_fields": {
    "last_contact": "2024-05-02"
  }
}
```

**Example:**

```bash
curl -X PATCH {{ config.extra.api.base_url }}/leads/lead_123 \
  -H "Authorization: Bearer YOUR_API_KEY" \
  -H "Content-Type: application/json" \
  -d '{
    "status": "qualified",
    "lead_score": 95
  }'
```

**Response (200 OK):**

```json
{
  "data": {
    "id": "lead_123",
    "email": "john@example.com",
    "first_name": "John",
    "last_name": "Doe",
    "company": "Acme Corp",
    "status": "qualified",
    "lead_score": 95,
    "updated_at": "2024-05-02T11:15:00Z"
  }
}
```

---

### Delete a Lead

Delete a lead permanently.

```http
DELETE {{ config.extra.api.base_url }}/leads/:lead_id
```

**Example:**

```bash
curl -X DELETE {{ config.extra.api.base_url }}/leads/lead_123 \
  -H "Authorization: Bearer YOUR_API_KEY"
```

**Response (204 No Content):**

```
(empty response)
```

---

## Workflows

### List Workflows

```http
GET {{ config.extra.api.base_url }}/workflows
```

### Get Workflow

```http
GET {{ config.extra.api.base_url }}/workflows/:workflow_id
```

### Create Workflow

```http
POST {{ config.extra.api.base_url }}/workflows
```

### Update Workflow

```http
PATCH {{ config.extra.api.base_url }}/workflows/:workflow_id
```

### Delete Workflow

```http
DELETE {{ config.extra.api.base_url }}/workflows/:workflow_id
```

### Publish Workflow

```http
POST {{ config.extra.api.base_url }}/workflows/:workflow_id/publish
```

---

## Campaigns

### List Campaigns

```http
GET {{ config.extra.api.base_url }}/campaigns
```

### Get Campaign

```http
GET {{ config.extra.api.base_url }}/campaigns/:campaign_id
```

### Create Campaign

```http
POST {{ config.extra.api.base_url }}/campaigns
```

---

## Analytics

### Get Dashboard Metrics

```http
GET {{ config.extra.api.base_url }}/analytics/dashboard
```

### Get Lead Analytics

```http
GET {{ config.extra.api.base_url }}/analytics/leads
```

**Query Parameters:**

| Parameter | Type | Description |
|-----------|------|-------------|
| `period` | string | Time period (day, week, month, year) |
| `metric` | string | Metric type (created, converted, engaged) |

### Get Workflow Analytics

```http
GET {{ config.extra.api.base_url }}/analytics/workflows/:workflow_id
```

---

## Integrations

### List Integrations

```http
GET {{ config.extra.api.base_url }}/integrations
```

### Get Integration

```http
GET {{ config.extra.api.base_url }}/integrations/:integration_id
```

### Create Integration

```http
POST {{ config.extra.api.base_url }}/integrations
```

### Test Integration

```http
POST {{ config.extra.api.base_url }}/integrations/:integration_id/test
```

### Delete Integration

```http
DELETE {{ config.extra.api.base_url }}/integrations/:integration_id
```

---

## Batch Operations

### Batch Create Leads

```http
POST {{ config.extra.api.base_url }}/batch/leads
```

**Request Body:**

```json
{
  "operations": [
    {
      "action": "create",
      "data": {
        "email": "user1@example.com",
        "first_name": "User",
        "last_name": "One"
      }
    },
    {
      "action": "create",
      "data": {
        "email": "user2@example.com",
        "first_name": "User",
        "last_name": "Two"
      }
    }
  ]
}
```

---

## Webhooks

### Register Webhook

```http
POST {{ config.extra.api.base_url }}/webhooks
```

**Request Body:**

```json
{
  "url": "https://yourapp.com/webhooks/events",
  "events": ["lead.created", "lead.updated"],
  "active": true
}
```

### List Webhooks

```http
GET {{ config.extra.api.base_url }}/webhooks
```

### Delete Webhook

```http
DELETE {{ config.extra.api.base_url }}/webhooks/:webhook_id
```

---

## Error Codes

| Code | Meaning | Solution |
|------|---------|----------|
| `INVALID_REQUEST` | Bad request format | Check request body and parameters |
| `UNAUTHORIZED` | Invalid API key | Verify API key in Authorization header |
| `FORBIDDEN` | Insufficient permissions | Check API key scopes |
| `NOT_FOUND` | Resource not found | Verify resource ID |
| `CONFLICT` | Resource already exists | Check for duplicates |
| `RATE_LIMITED` | Too many requests | Implement exponential backoff |
| `INTERNAL_ERROR` | Server error | Retry or contact support |

---

**Documentation:** <a href="{{ config.extra.api.docs_url }}">{{ config.extra.api.docs_url }}</a>  
**Support:** <a href="mailto:{{ config.extra.company.support_email }}">{{ config.extra.company.support_email }}</a>
