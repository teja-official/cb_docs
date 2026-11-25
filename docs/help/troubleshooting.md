# Troubleshooting

Start with the section that matches what you see. Most problems come down to something being **inactive**, a **missing template**, or an **expired token or key**.

!!! tip "Turn on error alerts"
    [Account settings → Emails → Error alerts](../account/account-settings.md#emails) emails you when an AI model, channel, lead source or follow-up fails — usually with the reason.

## Messages from leads don't arrive

??? question "WhatsApp"
    - The channel is **active** in **Channels**.
    - **Edit Channel** shows **Webhook connected in Meta** — if it failed, fix the reason and click **Try again**.
    - **messages** is subscribed under **WhatsApp → Configuration → Webhook fields** in Meta.
    - The Meta app is in **Live** mode.
    - Only text messages and button taps are handled; images, voice notes and reactions are ignored.

    [WhatsApp guide](../setup/channels/whatsapp.md#troubleshooting)

??? question "Telegram"
    - The channel is active and not showing **Webhook pending**. If it is, re-register the webhook from the channel's menu.
    - The bot token isn't used by another tool or bot platform at the same time.

    [Telegram guide](../setup/channels/telegram.md)

??? question "SMS"
    - The channel is active.
    - In Twilio, the number's **A message comes in** webhook is the exact URL from [[ app.name ]], method **HTTP POST**.
    - Twilio **Monitor → Logs → Errors** shows what went wrong.

    [SMS guide](../setup/channels/sms.md#troubleshooting)

??? question "Email replies"
    The channel needs **Incoming Mail (IMAP)** configured. Without it, email is outbound only.

    [Email guide](../setup/channels/email.md#with-and-without-imap)

## Leads from ads don't come in

??? question "Meta Ads"
    - The connection is **Active** and **Enabled** in **Lead Sources**.
    - The form is connected to a nurture (check the **Lead forms** table). New forms need **Check again**.
    - The Lead Ads Testing Tool shows no **Lead Access Manager** warning — if it does, see [Meta Business Suite lead access](../third-party/meta-lead-access.md).
    - Only Instant Forms send leads; website forms don't.

    [Meta Ads guide](../setup/lead-sources/meta-ads.md#not-receiving-leads)

??? question "Google Ads"
    - The connection is **Enabled**.
    - The URL and Key in the lead form match exactly (re-paste after regenerating the key).
    - **Send test data** turns the setup page green.

    [Google Ads guide](../setup/lead-sources/google-ads.md#not-receiving-leads)

??? question "Google Sheets"
    - The connection isn't showing **Reconnect required**.
    - New leads are **new rows** — edited rows aren't re-imported.
    - The mapped columns haven't been renamed or moved.

## Leads come in but get no first message

??? question "Check the message status"
    Open the connection in **Lead Sources** and look at **Message status**. **Failed** shows the reason; **Skipped** means there was nothing to send to (no valid email/phone) or the greeting was set to *Ignore*.

??? question "Common causes"
    - The campaign's **primary follow-up channel** is inactive, or was removed.
    - WhatsApp: no approved **greeting template** saved on the channel.
    - The lead has no email/phone for that channel.
    - The AI model has no credit, or no AI model is active.
    - The campaign is paused.

    Fix the cause, then **Resend all failed** — nothing is ever sent twice. [Managing connections](../setup/lead-sources/managing-connections.md#resend-failed-messages)

## The AI doesn't reply, or replies badly

??? question "No reply at all"
    - An **active AI model** exists and its key passes **Test**.
    - The provider account has credit.
    - The campaign is **active** and the channel is enabled on it.
    - Someone hasn't **taken over** the conversation (the AI stops while an agent is in control).

??? question "Wrong or vague answers"
    - The answer isn't in the knowledge base — add it (a **Q&A** pair is the most direct fix).
    - Content is vague or marketing-style — rewrite it as specific facts.
    - You changed the knowledge base but didn't **Process KB** again.
    - Test in **Test Chat** until it's right. [Knowledge base](../nurture-campaigns/knowledge-base.md#writing-tips)

??? question "The AI ignores my instructions"
    Instructions in knowledge blocks are ignored by design — put them in the **Instructions** tab. Instructions that clash with the fixed rules (e.g. asking for contact details more than once) are also ignored.

## Follow-ups

??? question "No-reply follow-ups aren't sent"
    - **Follow up automatically when a lead doesn't reply** is on for the campaign.
    - WhatsApp: a **follow-up template** is saved, or **Reuse this greeting template for follow-ups** is ticked.
    - It's not quiet hours in the lead's timezone — the follow-up is moved to the end of the window.
    - The lead hasn't replied anywhere, opened their chat link, or been taken over by an agent (these stop the sequence).

??? question "Messages go out at night"
    Check **Settings → Quiet hours** is on. Greetings to brand-new leads, replies, and call-backs at a time the lead chose are sent at any hour by design.

## Handoffs

??? question "Agents don't get alerts"
    - The agent is **Available for handoffs** and below **Max concurrent chats**.
    - Telegram: the agent tapped **Start** in your workspace's bot, and the Chat ID is the number from @userinfobot (not a @username).
    - SMS on a Twilio trial: the agent's number is a **Verified Caller ID**.
    - Email: check spam, and add your sending address to contacts.
    - The workspace channel used for alerts is active.

??? question "Nothing is ever handed off"
    You need at least one agent, and the plan feature *Human takeover of AI chats*. Raise the campaign's thresholds if you want more handoffs.

## Account and billing

??? question "Everything is locked"
    The workspace has no active plan. Owners: go to **Billing → Subscription**. Members: ask the workspace owner. [Choose a plan](../getting-started/choose-a-plan.md)

??? question "I didn't get the verification or sign-in code"
    Check spam and wait a minute. Codes expire — request a new one. Disposable email addresses can't be used.

??? question "A page I need isn't in my sidebar"
    Your role doesn't include its permission. Ask an admin to update your role in **Team & Workspace**. [Permissions](permissions-reference.md)

??? question "Pop-up blocked when connecting Facebook or Google"
    Allow pop-ups for [[ app.name ]] in your browser's address bar, then try again.

??? question "The app shows old data"
    If the live-status dot in the top bar is grey, the real-time connection dropped. Reload the page.
