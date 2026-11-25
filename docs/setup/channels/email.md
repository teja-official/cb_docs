# Email

Email works with any provider. **SMTP** sends messages to leads; add **IMAP** too and the AI reads and answers their replies automatically.

<span class="tj-path">Setup › **Channels** › **Add Channel** › **Email**</span>

## Add the channel

<div class="steps" markdown>

1. In **Channels**, click **Add Channel** and choose **Email**.
2. Enter a **Connection Name**.
3. **From Name** *(optional)* — the sender name leads see, e.g. your business name. Without it, emails show just the address.
4. Fill in the SMTP details from your email provider:
    - **SMTP Host** — e.g. `smtp.gmail.com`
    - **SMTP Port** — usually `587`
    - **SMTP Username / Email** — the mailbox address
    - **SMTP Password** — the mailbox password, or an **app password** (see below)
    - **Use TLS** — leave on unless your provider says otherwise.
5. *(Recommended)* Expand **Incoming Mail (IMAP)** and fill in:
    - **IMAP Host** — e.g. `imap.gmail.com`
    - **IMAP Port** — usually `993`
    - **Use SSL** — leave on.
6. Click **Add Channel**.

</div>

## Common provider settings

| Provider | SMTP | IMAP | Notes |
|---|---|---|---|
| **Gmail / Google Workspace** | `smtp.gmail.com` : `587` | `imap.gmail.com` : `993` | Requires an [App Password](../../third-party/email-providers.md#gmail-and-google-workspace) |
| **Outlook / Microsoft 365** | `smtp.office365.com` : `587` | `outlook.office365.com` : `993` | SMTP AUTH must be enabled for the mailbox |
| **Zoho Mail** | `smtp.zoho.com` : `587` | `imap.zoho.com` : `993` | Use `.in` / `.eu` hosts for those regions |
| **Your own domain** | From your host | From your host | Ask your hosting provider |

More detail in [Email providers](../../third-party/email-providers.md).

!!! warning "Gmail needs an App Password"
    For Gmail and Google Workspace you must use an **App Password** — regular account passwords are blocked by Google for SMTP/IMAP.

## With and without IMAP

| | SMTP only | SMTP + IMAP |
|---|---|---|
| AI sends the first email and follow-ups | :lucide-check: | :lucide-check: |
| Lead replies appear in **Conversations** | — | :lucide-check: |
| AI answers replies automatically | — | :lucide-check: |

The channel list shows which mode each email channel is in. With IMAP, the mailbox is checked regularly, and replies are matched to the right conversation by their email thread — late replies to closed threads are still matched.

## Good to know

- Emails to leads include their personal [web chat link](../../engage/web-chat.md), so they can continue in the browser.
- Use a mailbox dedicated to lead follow-up. The AI only answers threads it started, but a busy shared inbox makes things harder to follow.
- Ask agents to add your sending address to their contacts so [handoff alerts](../human-agents.md#email) don't land in spam.

## Troubleshooting

??? question "Authentication failed"
    Check the username is the full email address and the password is an app password where required. Some providers (Microsoft 365) need SMTP AUTH switched on by an admin.

??? question "Emails go to spam"
    Set up SPF, DKIM and DMARC for your sending domain with your email provider, use a real **From Name**, and avoid sending from a brand-new mailbox at high volume.

??? question "Replies don't show up"
    IMAP isn't configured, or the IMAP host/port is wrong. Edit the channel and fill in **Incoming Mail (IMAP)**.
