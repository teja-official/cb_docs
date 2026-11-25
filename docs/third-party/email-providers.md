# Email providers (SMTP/IMAP)

The Email channel works with any provider that offers **SMTP** (to send) and **IMAP** (to receive). Then add the channel in [[ app.name ]]: see [Email](../setup/channels/email.md).

## Settings by provider

| Provider | SMTP host : port | IMAP host : port | Password |
|---|---|---|---|
| **Gmail / Google Workspace** | `smtp.gmail.com` : `587` (TLS) | `imap.gmail.com` : `993` (SSL) | App Password |
| **Outlook.com / Microsoft 365** | `smtp.office365.com` : `587` (TLS) | `outlook.office365.com` : `993` (SSL) | Account password or app password |
| **Zoho Mail** | `smtp.zoho.com` : `587` (TLS) | `imap.zoho.com` : `993` (SSL) | App-specific password if 2FA is on |
| **Yahoo Mail** | `smtp.mail.yahoo.com` : `587` (TLS) | `imap.mail.yahoo.com` : `993` (SSL) | App password |
| **Hosting provider (cPanel etc.)** | Usually `mail.yourdomain.com` : `587` | Usually `mail.yourdomain.com` : `993` | Mailbox password |

Use the **full email address** as the username.

## Gmail and Google Workspace

Google blocks normal passwords for SMTP/IMAP. You need an **App Password**:

<div class="steps" markdown>

1. Turn on **2-Step Verification** for the Google account ([myaccount.google.com/security](https://myaccount.google.com/security)).
2. Open [myaccount.google.com/apppasswords](https://myaccount.google.com/apppasswords).
3. Create an app password (name it e.g. *[[ app.name ]]*).
4. Copy the 16-character password and paste it into **SMTP Password**.

</div>

IMAP is on by default for personal Gmail. For **Google Workspace**, your admin may need to allow IMAP and app passwords in the Admin console.

## Microsoft 365 / Outlook

- **SMTP AUTH** must be enabled for the mailbox. In the Microsoft 365 admin center: **Users → Active users → (user) → Mail → Manage email apps → Authenticated SMTP**.
- If your organisation enforces MFA or has security defaults on, basic SMTP/IMAP sign-in may be blocked. Ask your admin, or use a different provider for this mailbox.

## Deliverability checklist

- [ ] **SPF**, **DKIM** and **DMARC** records set for your sending domain (your provider has instructions).
- [ ] A real **From Name** on the channel.
- [ ] A mailbox dedicated to lead follow-up.
- [ ] Avoid sending large volumes from a brand-new mailbox — warm it up gradually.
