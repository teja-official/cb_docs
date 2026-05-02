# Integrations

Connect {{ config.extra.company.name }} with your favorite tools and platforms. Our extensive integration library enables seamless data flow across your entire tech stack.

## Popular Integrations

### CRM Systems

#### Salesforce

```yaml
Integration: Salesforce
Base URL: https://salesforce.com
Authentication: OAuth 2.0
Sync Direction: Bidirectional

Features:
├─ Auto-create leads in Salesforce
├─ Sync custom fields
├─ Add to campaigns automatically
├─ Track email opens in Salesforce
└─ Log all activities
```

**Setup:**
1. Go to **Integrations** → **Salesforce**
2. Click **Connect**
3. Authorize with Salesforce credentials
4. Map custom fields
5. Choose sync frequency

#### HubSpot

```yaml
Integration: HubSpot
Base URL: {{ config.extra.api.base_url }}/hubspot
Authentication: API Key
Sync Direction: Bidirectional

Features:
├─ Sync contacts automatically
├─ Create deals from workflows
├─ Track email engagement
├─ Update contact properties
└─ Trigger workflows
```

#### Pipedrive

```yaml
Integration: Pipedrive
Features:
├─ Add leads as persons
├─ Create deals automatically
├─ Sync contact information
└─ Track communication history
```

### Email Platforms

#### Mailchimp

```yaml
Integration: Mailchimp
Base URL: https://api.mailchimp.com
Features:
├─ Add contacts to lists
├─ Create automations
├─ Track email performance
└─ Segment audiences
```

#### Sendgrid

```yaml
Integration: SendGrid
Features:
├─ Send transactional emails
├─ Track opens and clicks
├─ Manage sender identities
└─ Monitor deliverability
```

### Communication Channels

#### Twilio (SMS & Voice)

```yaml
Integration: Twilio
Base URL: https://api.twilio.com
Features:
├─ Send SMS messages
├─ Make outbound calls
├─ Receive inbound messages
└─ Record conversations
```

**Configuration:**
```env
TWILIO_ACCOUNT_SID=your_account_sid
TWILIO_AUTH_TOKEN=your_auth_token
TWILIO_PHONE_NUMBER=+1234567890
```

#### WhatsApp Business

```yaml
Integration: WhatsApp Business API
Base URL: https://graph.instagram.com/v18.0
Features:
├─ Send template messages
├─ Receive incoming messages
├─ Send media files
└─ Track message status
```

### Analytics & Reporting

#### Google Analytics

```yaml
Integration: Google Analytics
Features:
├─ Track website visitors
├─ Monitor conversion funnels
├─ Export custom reports
└─ Segment audiences
```

#### Mixpanel

```yaml
Integration: Mixpanel
Features:
├─ Track user events
├─ Analyze user behavior
├─ Create cohorts
└─ Export event data
```

## Building Custom Integrations

### Webhook Support

Receive real-time updates via webhooks:

```bash
POST {{ config.extra.api.base_url }}/webhooks/events

Headers:
  Content-Type: application/json
  X-Signature: sha256_signature

Body:
{
  "event": "lead.created",
  "timestamp": "2024-05-02T10:30:00Z",
  "data": {
    "lead_id": "abc123",
    "email": "john@example.com",
    "name": "John Doe",
    "company": "Acme Corp"
  }
}
```

### REST API Integration

```python
import requests

BASE_URL = "{{ config.extra.api.base_url }}"
API_KEY = "your_api_key"

headers = {
    "Authorization": f"Bearer {API_KEY}",
    "Content-Type": "application/json"
}

# Create a lead
response = requests.post(
    f"{BASE_URL}/leads",
    headers=headers,
    json={
        "email": "john@example.com",
        "first_name": "John",
        "last_name": "Doe",
        "company": "Acme Corp"
    }
)

print(response.json())
```

### Webhook Signature Verification

Verify webhook authenticity:

```python
import hmac
import hashlib

WEBHOOK_SECRET = "your_webhook_secret"

def verify_signature(payload, signature):
    expected = hmac.new(
        WEBHOOK_SECRET.encode(),
        payload.encode(),
        hashlib.sha256
    ).hexdigest()
    return hmac.compare_digest(expected, signature)

# In your webhook handler
if verify_signature(payload, x_signature):
    # Process webhook
    pass
```

## Integration Workflows

### Flow 1: Salesforce → {{ config.extra.company.name }} → Email

```
1. Lead created in Salesforce
   ↓
2. Webhook triggers {{ config.extra.company.name }}
   ↓
3. Lead enrichment workflow
   ↓
4. Auto-send welcome email
   ↓
5. Track opens in {{ config.extra.company.name }}
   ↓
6. Sync engagement back to Salesforce
```

### Flow 2: Web Form → HubSpot → WhatsApp

```
1. User submits web form
   ↓
2. Form service creates contact in HubSpot
   ↓
3. HubSpot triggers {{ config.extra.company.name }} workflow
   ↓
4. Send WhatsApp message
   ↓
5. Track responses
   ↓
6. Update HubSpot contact properties
```

## Authentication Methods

### Bearer Token

```bash
curl -H "Authorization: Bearer YOUR_API_KEY" \
  {{ config.extra.api.base_url }}/leads
```

### API Key Header

```bash
curl -H "X-API-Key: YOUR_API_KEY" \
  {{ config.extra.api.base_url }}/leads
```

### OAuth 2.0

```bash
# 1. Redirect to authorization endpoint
{{ config.extra.api.base_url }}/oauth/authorize
?client_id=YOUR_CLIENT_ID
&redirect_uri=https://yourapp.com/callback
&scope=read:leads,write:leads

# 2. Exchange code for token
curl -X POST {{ config.extra.api.base_url }}/oauth/token \
  -d grant_type=authorization_code \
  -d code=AUTHORIZATION_CODE \
  -d client_id=YOUR_CLIENT_ID \
  -d client_secret=YOUR_CLIENT_SECRET
```

## Integration Management

### View Active Integrations

```bash
curl -H "Authorization: Bearer API_KEY" \
  {{ config.extra.api.base_url }}/integrations
```

### Disconnect Integration

```bash
curl -X DELETE \
  -H "Authorization: Bearer API_KEY" \
  {{ config.extra.api.base_url }}/integrations/salesforce
```

### Test Integration

```bash
curl -X POST \
  -H "Authorization: Bearer API_KEY" \
  {{ config.extra.api.base_url }}/integrations/salesforce/test
```

## Troubleshooting

!!! warning "Integration Troubleshooting"
    - **Connection failed** — Check API credentials and network access
    - **Sync not working** — Verify webhook URL and permissions
    - **Data mismatch** — Check field mapping and data types
    - **Rate limiting** — Implement exponential backoff

## Support

- **Integration Documentation** — <a href="{{ config.extra.api.docs_url }}">{{ config.extra.api.docs_url }}</a>
- **Developer Support** — <a href="mailto:{{ config.extra.company.support_email }}">{{ config.extra.company.support_email }}</a>
- **Status Page** — <a href="{{ config.extra.company.website }}/status">{{ config.extra.company.website }}/status</a>

---

**Next:** [API Reference](../../api/overview.md) | [Authentication](../../api/auth.md)
