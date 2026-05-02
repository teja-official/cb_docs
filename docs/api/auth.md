# Authentication

Secure your API requests with authentication. {{ config.extra.company.name }} supports multiple authentication methods.

## API Key Authentication

The simplest authentication method for server-to-server integrations.

### Generate an API Key

1. Go to <a href="{{ config.extra.company.dashboard }}">{{ config.extra.company.dashboard }}</a> → **Settings** → **API Keys**
2. Click **+ Generate New Key**
3. Enter a name (e.g., "Production API Key")
4. Select scopes (read, write, delete)
5. Click **Generate**
6. **Copy and store securely** (you won't see it again!)

### Using API Keys

Include your API key in the `Authorization` header:

```bash
curl -X GET {{ config.extra.api.base_url }}/leads \
  -H "Authorization: Bearer YOUR_API_KEY"
```

### API Key Scopes

| Scope | Permission |
|-------|-----------|
| `read:leads` | Read lead data |
| `write:leads` | Create/update leads |
| `delete:leads` | Delete leads |
| `read:workflows` | Read workflows |
| `write:workflows` | Create/update workflows |
| `write:integrations` | Manage integrations |
| `admin` | Full access |

### Best Practices

!!! warning "API Key Security"
    - ✅ Store keys in environment variables (`.env`)
    - ✅ Rotate keys regularly (every 90 days)
    - ✅ Use minimal required scopes
    - ✅ Revoke old keys immediately
    - ❌ Never commit keys to version control
    - ❌ Never log or expose keys
    - ❌ Never share keys via email or chat

### Revoke an API Key

1. Go to Dashboard → Settings → API Keys
2. Find the key to revoke
3. Click **Revoke**
4. Confirm action

Revoked keys immediately stop working.

## OAuth 2.0 Authentication

For user-facing applications and integrations.

### Authorization Code Flow

```
1. Redirect user to authorization endpoint
   ↓
2. User grants permission
   ↓
3. Receive authorization code
   ↓
4. Exchange code for access token
   ↓
5. Use token for API requests
```

### Step 1: Redirect to Authorization Endpoint

```bash
{{ config.extra.api.base_url }}/oauth/authorize
?client_id=YOUR_CLIENT_ID
&redirect_uri=https://yourapp.com/callback
&scope=read:leads%20write:leads
&state=random_state_string
```

### Step 2: Handle Callback

User is redirected back with authorization code:

```
https://yourapp.com/callback
?code=auth_code_abc123
&state=random_state_string
```

### Step 3: Exchange Code for Token

```bash
curl -X POST {{ config.extra.api.base_url }}/oauth/token \
  -H "Content-Type: application/json" \
  -d '{
    "grant_type": "authorization_code",
    "code": "auth_code_abc123",
    "client_id": "YOUR_CLIENT_ID",
    "client_secret": "YOUR_CLIENT_SECRET",
    "redirect_uri": "https://yourapp.com/callback"
  }'
```

### Response

```json
{
  "access_token": "access_token_xyz789",
  "token_type": "Bearer",
  "expires_in": 3600,
  "refresh_token": "refresh_token_def456",
  "scope": "read:leads write:leads"
}
```

### Step 4: Use Access Token

```bash
curl -X GET {{ config.extra.api.base_url }}/leads \
  -H "Authorization: Bearer access_token_xyz789"
```

### Refresh Token

Access tokens expire after 1 hour. Use the refresh token to get a new one:

```bash
curl -X POST {{ config.extra.api.base_url }}/oauth/token \
  -H "Content-Type: application/json" \
  -d '{
    "grant_type": "refresh_token",
    "refresh_token": "refresh_token_def456",
    "client_id": "YOUR_CLIENT_ID",
    "client_secret": "YOUR_CLIENT_SECRET"
  }'
```

## API Key vs OAuth 2.0

| Feature | API Key | OAuth 2.0 |
|---------|---------|----------|
| **Best For** | Server-to-server | User-facing apps |
| **Setup** | Simple | Moderate |
| **Security** | Good | Better |
| **User Consent** | No | Yes |
| **Expiration** | Manual | Automatic |
| **Scopes** | Yes | Yes |
| **Rate Limits** | Per key | Per user |

## Webhook Signature Verification

Verify that webhooks come from {{ config.extra.company.name }} by checking the signature:

### Signature Headers

Every webhook includes:

```
X-Signature: sha256_hmac_signature
X-Timestamp: timestamp
```

### Verification Process

1. Extract `X-Signature` and `X-Timestamp` from headers
2. Concatenate timestamp + payload body
3. Calculate HMAC-SHA256 using your webhook secret
4. Compare with `X-Signature`

### Implementation

```python
import hmac
import hashlib
import json
import time

WEBHOOK_SECRET = "your_webhook_secret"

def verify_webhook(request_body, x_signature, x_timestamp):
    # Check timestamp (prevent replay attacks)
    current_time = time.time()
    if abs(current_time - int(x_timestamp)) > 300:  # 5 min tolerance
        return False
    
    # Verify signature
    message = f"{x_timestamp}.{request_body}"
    expected_signature = hmac.new(
        WEBHOOK_SECRET.encode(),
        message.encode(),
        hashlib.sha256
    ).hexdigest()
    
    return hmac.compare_digest(expected_signature, x_signature)

# In your webhook handler
@app.post('/webhook')
def handle_webhook():
    payload = request.get_data()
    x_signature = request.headers.get('X-Signature')
    x_timestamp = request.headers.get('X-Timestamp')
    
    if verify_webhook(payload, x_signature, x_timestamp):
        # Process webhook
        data = json.loads(payload)
        # ...
    else:
        abort(401)  # Unauthorized
```

## Common Authentication Errors

### 401 Unauthorized

```json
{
  "error": {
    "code": "UNAUTHORIZED",
    "message": "Invalid or missing API key"
  }
}
```

**Solutions:**
- Verify API key is correct
- Check that key hasn't expired or been revoked
- Ensure Authorization header is present

### 403 Forbidden

```json
{
  "error": {
    "code": "FORBIDDEN",
    "message": "Insufficient permissions for this resource"
  }
}
```

**Solutions:**
- Verify API key has required scopes
- Check resource ownership/access
- Contact support if issue persists

### 401 Invalid OAuth Token

```json
{
  "error": {
    "code": "INVALID_TOKEN",
    "message": "OAuth token has expired"
  }
}
```

**Solutions:**
- Refresh your access token
- Re-authenticate if refresh token expired
- Re-authorize the application

## Security Checklist

- [ ] API keys stored in environment variables
- [ ] Never commit keys to git
- [ ] Use minimal required scopes
- [ ] Rotate keys every 90 days
- [ ] Verify webhook signatures
- [ ] Use HTTPS for all requests
- [ ] Implement rate limit handling
- [ ] Log authentication failures
- [ ] Monitor for suspicious activity

---

**Next:** [Endpoints Reference](endpoints.md) | [API Overview](overview.md)
