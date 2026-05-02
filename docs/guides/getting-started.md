# Getting Started with {{ config.extra.company.name }}

Welcome! This guide will help you set up your {{ config.extra.company.name }} account and start using the platform in minutes.

## Prerequisites

Before you begin, make sure you have:

- A valid email address
- Access to the <a href="{{ config.extra.company.dashboard }}">{{ config.extra.company.name }} Dashboard</a>
- Basic understanding of workflows (don't worry, we'll guide you!)

## Step 1: Create Your Account

1. Visit <a href="{{ config.extra.company.website }}">{{ config.extra.company.website }}</a>
2. Click **Sign Up** in the top-right corner
3. Enter your email and create a strong password
4. Verify your email address via the confirmation link
5. Log in to your account

## Step 2: Complete Your Profile

Once logged in:

1. Go to **Settings** → **Profile**
2. Add your company name and website
3. Upload your company logo
4. Set your timezone and language preferences
5. Click **Save Changes**

## Step 3: Generate Your API Key

To start integrating with external systems:

1. Navigate to **Settings** → **API Keys**
2. Click **Generate New API Key**
3. Give it a meaningful name (e.g., "Production API Key")
4. Copy and store the key in a secure location
5. ⚠️ **Never share your API key publicly!**

## Step 4: Set Up Your First Workflow

1. Go to **Workflows** → **Create New**
2. Name your workflow (e.g., "Welcome Email")
3. Select your trigger (e.g., "New Lead Submitted")
4. Add your first action (e.g., "Send Email")
5. Configure the email template
6. Click **Publish** when ready

## Step 5: Test Your Workflow

1. Go to **Testing** section
2. Create a test lead
3. Verify the workflow executes correctly
4. Check your email to confirm it was sent

!!! success "🎉 You're All Set!"
    Congratulations! You've successfully set up your first workflow. Now explore [Advanced Workflows](advanced/workflows.md) to unlock more powerful features.

## Common Issues

### "API Key Not Working"
- Verify the key hasn't expired in **Settings → API Keys**
- Ensure you're using the correct key for your environment
- Check that the API request includes proper headers

### "Workflow Not Triggering"
- Verify the trigger conditions are correctly configured
- Check lead source is properly connected
- Review workflow logs for errors

## Next Steps

- [📖 Installation & Configuration](installation.md)
- [🚀 Advanced Workflows](advanced/workflows.md)
- [🔌 Integrations](advanced/integrations.md)
- [📚 API Reference](../api/overview.md)

---

**Need help?** Contact support at <a href="mailto:{{ config.extra.company.support_email }}">{{ config.extra.company.support_email }}</a>
