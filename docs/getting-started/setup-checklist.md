# Setup checklist

Configure [[ app.name ]] in this order. Each step needs the one before it, and a nurture campaign can't go live until it has an AI model and a channel.

!!! tip "Prefer a guided version?"
    Click **Take a Tour** in the top bar. It walks through the same steps inside the app.

## 1. Connect an AI model

<span class="tj-path">Setup › **AI Models** › **Add Config**</span>

Add an AI provider, pick a model, paste your API key, click **Test**, and set it **Active**.

[:octicons-arrow-right-24: AI models](../setup/ai-models.md) · [Where do I get an API key?](../third-party/ai-provider-keys.md)

## 2. Connect at least one channel

<span class="tj-path">Setup › **Channels** › **Add Channel**</span>

Choose WhatsApp, Telegram, Email or SMS, enter the credentials, and turn the channel on.

[:octicons-arrow-right-24: Channels](../setup/channels/index.md)

!!! info "To message ad leads first, you need an outbound channel"
    Leads from ad forms haven't messaged you yet, so the first message must go out on **WhatsApp (with an approved template)**, **Email (SMTP)** or **SMS**. Telegram only works once the lead messages your bot. See [Primary follow-up channel](../nurture-campaigns/ai-and-channels.md#primary-follow-up-channel).

## 3. Add human agents *(recommended)*

<span class="tj-path">Setup › **Human Agents** › **Add agent**</span>

Pick workspace members who should take over conversations, and choose where they get handoff alerts. Without agents, the AI keeps every conversation and handoff thresholds have no effect.

[:octicons-arrow-right-24: Human agents](../setup/human-agents.md) · [Invite teammates first](../workspace/team-and-roles.md#invite-a-teammate)

## 4. Create a nurture campaign

<span class="tj-path">Engage › **Nurture Campaigns** › **New Nurture**</span>

Four steps: basic info, AI & channels, knowledge base (process it and try **Test Chat**), then preview and publish.

[:octicons-arrow-right-24: Create a campaign](../nurture-campaigns/create-a-campaign.md)

## 5. Connect lead sources

<span class="tj-path">Setup › **Lead Sources** › **Add Connection**</span>

Connect Meta Ads or Google Ads lead forms (or a Google Sheet / spreadsheet) and choose the campaign each one feeds.

[:octicons-arrow-right-24: Lead sources](../setup/lead-sources/index.md)

## 6. Check your workspace rules

<span class="tj-path">Workspace › **Settings**</span>

Quiet hours, the default "call me later" delay, when idle conversations close, and how long lead chat links work. The defaults are sensible; adjust them if you like.

[:octicons-arrow-right-24: Workspace settings](../workspace/workspace-settings.md)

## 7. Test end to end

- [ ] Send a message to your channel from your own phone or email — it should show up in **Conversations** and get an AI reply within seconds.
- [ ] Submit a test lead (for Meta, use the [Lead Ads Testing Tool](../setup/lead-sources/meta-ads.md#test-the-connection)) — it should appear in **Leads** and receive its first message.
- [ ] Ask for "a person" in the chat — the conversation should be handed to an agent, who gets an alert.

All good? You're live. :rocket:
