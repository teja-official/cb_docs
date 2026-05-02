# Workflows

A workflow is a series of automated actions triggered by specific events. Learn how to design and implement powerful workflows in {{ config.extra.company.name }}.

## Workflow Basics

### Components

Every workflow consists of:

1. **Trigger** — What starts the workflow (e.g., "New lead received")
2. **Conditions** — Rules that must be met (optional)
3. **Actions** — What happens (e.g., "Send email")
4. **Delays** — Wait times between actions (optional)

### Workflow Anatomy

```
Trigger: New Lead
    ↓
[Condition: Lead Score > 50?]
    ├─ Yes → Action: Send Welcome Email
    │        Delay: 24 hours
    │        Action: Send Demo Request
    │        Delay: 2 days
    │        Action: Assign to Sales Rep
    │
    └─ No → Action: Send Nurture Email
            Delay: 7 days
            [Re-evaluate]
```

## Multi-Channel Workflows

{{ config.extra.company.name }} supports sending communications across multiple channels:

### 📧 Email

```yaml
channel: email
template: welcome_email
recipients: lead.email
variables:
  first_name: lead.first_name
  company: lead.company
tracking:
  open_tracking: true
  click_tracking: true
```

### 💬 WhatsApp

```yaml
channel: whatsapp
template: welcome_message
recipient: lead.phone_number
message_type: text
```

### 📱 Telegram

```yaml
channel: telegram
template: notification
recipient: lead.telegram_id
parse_mode: html
```

### 📞 SMS

```yaml
channel: sms
template: verification_code
recipient: lead.phone_number
content: |
  Your verification code is: {{code}}
  Valid for 10 minutes
```

## Building Your First Workflow

### Step 1: Create Workflow

1. Navigate to **Workflows** → **New Workflow**
2. Enter workflow name and description
3. Select your primary trigger

### Step 2: Add Trigger

Choose from:

- New lead submitted
- Lead clicks link
- Lead opens email
- API webhook received
- Scheduled time
- Custom event

### Step 3: Configure Actions

Add multiple actions:

```
Action 1: Send Email
├─ Template: welcome_email.hbs
├─ Recipient: 
└─ Delay After: 0 hours

Action 2: Wait
├─ Duration: 24 hours

Action 3: Send Follow-up
├─ Channel: Email or WhatsApp
├─ Template: followup_email.hbs
└─ Delay After: 48 hours
```

### Step 4: Test & Deploy

1. Click **Test Workflow** with sample data
2. Review execution logs
3. Click **Publish** to activate

## Advanced Workflow Patterns

### Pattern 1: Conditional Branching

```yaml
Trigger: Form Submission
├─ Condition: Package = Enterprise?
│  └─ Yes: Route to Premium Sales Team
├─ Condition: Package = Standard?
│  └─ Yes: Route to Regular Sales Team
└─ Condition: Package = Freemium?
   └─ Yes: Send Onboarding Guide
```

### Pattern 2: Lead Scoring

```yaml
Trigger: Lead Event
└─ Actions:
   ├─ +10 points: Website visit
   ├─ +25 points: Demo request
   ├─ +50 points: Pricing page view
   └─ If score > 100: Assign to rep
```

### Pattern 3: Sequential Cadence

```yaml
Trigger: New Lead
└─ Day 0: Send Introduction Email
└─ Day 1: Send Product Demo Video
└─ Day 3: Send Case Study
└─ Day 5: Send Pricing Info
└─ Day 7: Schedule Sales Call
└─ Day 14: Check-in Email
```

### Pattern 4: Feedback Loop

```yaml
Trigger: Email Opened
└─ Wait: 2 days
└─ Action: Send Survey
└─ Condition: Score < 7?
   └─ Yes: Escalate to Support
   └─ No: Continue nurture
```

## Workflow Templates

Pre-built templates to get started quickly:

- **Cold Outreach** — Multi-step email sequences
- **Lead Nurturing** — Automated nurture tracks
- **Customer Onboarding** — Welcome and training
- **Re-engagement** — Win-back campaigns
- **Support Escalation** — Ticket-based workflows

## Best Practices

!!! tip "Workflow Best Practices"
    - **Keep it simple** — Start with basic workflows and add complexity gradually
    - **Test thoroughly** — Always test with sample data before publishing
    - **Monitor performance** — Check analytics to optimize your workflows
    - **Use segmentation** — Apply conditions to send relevant messages
    - **Respect preferences** — Respect unsubscribe and frequency preferences
    - **A/B test** — Run variations to find what works best

## Performance Metrics

Track these metrics for each workflow:

- **Trigger Count** — How many times activated
- **Completion Rate** — % that completed all steps
- **Click-Through Rate** — % that clicked links
- **Open Rate** — % that opened emails
- **Conversion Rate** — % that converted
- **Cost Per Conversion** — ROI calculation

## Debugging Workflows

View workflow execution logs:

1. **Workflows** → Select workflow → **Logs**
2. Filter by date and status
3. Click on execution to view details

Common issues:

- ❌ **Trigger not firing** — Check trigger conditions
- ❌ **Action failed** — Review error message in logs
- ❌ **Recipient not found** — Verify data mapping
- ❌ **Delays not working** — Check server timezone settings

---

**Next:** [Automation](automation.md) | [Integrations](integrations.md) | [API Reference](../../api/overview.md)
