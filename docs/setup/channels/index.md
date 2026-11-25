# Channels

A **channel** is a messaging platform leads can reach you on — and the AI uses to reach them. Add at least one and turn it on before launching a nurture campaign.

<span class="tj-path">Setup › **Channels**</span>

## Supported channels

| Channel | Provider | Can message new leads first? | Receives replies |
|---|---|---|---|
| [**WhatsApp**](whatsapp.md) | Meta WhatsApp Cloud API | Yes, with an approved [message template](message-templates.md) | Yes (webhook, connected automatically) |
| [**Telegram**](telegram.md) | Telegram bot (BotFather) | No — the lead must message your bot first | Yes (webhook, registered automatically) |
| [**Email**](email.md) | Any SMTP / IMAP mailbox | Yes | Yes, if you add IMAP |
| [**SMS**](sms.md) | Twilio | Yes (optional template) | Yes (webhook you paste into Twilio) |

!!! info "Which channel should send the first message?"
    Leads from ad forms haven't talked to you yet. A campaign's **primary follow-up channel** must be one that can message them first: WhatsApp with a saved template, Email with SMTP, or SMS. See [Primary follow-up channel](../../nurture-campaigns/ai-and-channels.md#primary-follow-up-channel).

## Add a channel

<div class="steps" markdown>

1. Go to **Channels** and click **Add Channel**.
2. Choose a platform.
3. Enter a **Connection Name** (e.g. *Sales WhatsApp*) and the platform's credentials. Each field has a hint; the :lucide-circle-help: button opens the full setup guide.
4. Leave **Activate channel** on to start using it right away. Your first channel is activated automatically.
5. Click **Add Channel**.
6. For WhatsApp and SMS, the next screen shows the webhook status or the **Webhook URL** to copy. See each channel's page.

</div>

## Channel list

Each saved channel shows:

- **Status** — active or inactive. Only **active** channels send and receive messages; inactive channels reject incoming webhooks.
- <span class="tj-badge tj-badge--warning">Incomplete</span> — required details are missing. For Telegram it says <span class="tj-badge tj-badge--warning">Webhook pending</span> until the bot's webhook is registered.
- :lucide-copy: **Webhook URL** (WhatsApp, SMS) — copy it to paste into Meta or Twilio.
- **IMAP indicator** (Email) — whether lead replies are received automatically or the channel is outbound only.

Use the search box to find a channel by name or type.

## Activate, deactivate, edit, delete

- **Activate / Deactivate** — turning a channel off stops it sending and receiving. Campaigns using it can't reach leads on it.
- **Edit Channel** — change credentials or templates. Leave secret fields blank to keep the saved value.
- **Delete** — removes the channel and its credentials.

!!! warning "Plan limits"
    Your plan sets how many channels you can save (active or not) and which channel types are included. If your plan allows **one active channel**, turning another on asks you to confirm **Switch to this channel**. If a type isn't on your plan, you'll see *"Channels aren't available on your plan. Upgrade to activate one."*

## Set up a channel

<div class="grid cards" markdown>

-   :lucide-message-circle:{ .lg } **[WhatsApp](whatsapp.md)**

    Meta app, Phone Number ID, access token, webhook and templates.

-   :lucide-send:{ .lg } **[Telegram](telegram.md)**

    Create a bot with @BotFather and paste its token.

-   :lucide-mail:{ .lg } **[Email](email.md)**

    SMTP for sending, IMAP for automatic replies.

-   :lucide-phone:{ .lg } **[SMS (Twilio)](sms.md)**

    Account SID, Auth Token, number and webhook.

</div>
