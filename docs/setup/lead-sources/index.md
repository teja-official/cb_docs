# Lead sources

A **lead source** (integration) brings new leads into [[ app.name ]] so the AI can contact them right away. Each connection feeds one or more [nurture campaigns](../../nurture-campaigns/index.md).

<span class="tj-path">Setup › **Lead Sources** › **Add Connection**</span>

| Source | How leads arrive | Setup |
|---|---|---|
| [**Meta Ads**](meta-ads.md) | Facebook & Instagram Instant Forms — instantly | Sign in with Facebook, pick Pages and forms |
| [**Google Ads**](google-ads.md) | Google Ads lead form assets — instantly via webhook | Paste a webhook URL and key into each lead form |
| [**Google Sheets**](google-sheets.md) | New rows added to a sheet — within seconds | Sign in with Google, pick the sheet, map columns |
| [**Spreadsheet upload**](spreadsheet-upload.md) | A CSV or Excel file you upload | Upload, map columns, choose when to greet |

!!! note "Availability"
    Which sources you can connect, and how many, depends on your plan (for example, the number of connected Meta lead forms). Leads can also arrive without a source — anyone who messages one of your [channels](../channels/index.md) becomes a lead.

## What happens when a lead arrives

<div class="steps" markdown>

1. The lead is created and appears in **Leads**, linked to the campaign the form or file feeds. A submission that was already imported is skipped. A person you already have (same email or phone in this workspace) isn't created twice: the submission is added to their lead, and [these rules](../../engage/lead-statuses.md#when-a-lead-submits-another-form) decide whether they get a greeting.
2. The AI writes a **first message** using the campaign's knowledge base and sends it on the campaign's **primary follow-up channel** — WhatsApp (template), Email or SMS.
3. The connection's **Message status** shows whether it was queued, sent, delivered, responded, failed or skipped.
4. If the lead doesn't reply, [no-reply follow-ups](../../nurture-campaigns/follow-ups.md#no-reply-follow-ups) start.

</div>

A failed first message is **not** retried with different text automatically. You can resend it from the connection's page — see [Managing connections](managing-connections.md#resend-failed-messages).

## Before you connect

- [ ] Create and publish at least one [nurture campaign](../../nurture-campaigns/create-a-campaign.md) — every connection needs one.
- [ ] Make sure that campaign has a [primary follow-up channel](../../nurture-campaigns/ai-and-channels.md#primary-follow-up-channel) that can message new leads.
- [ ] Have admin access to the ad account, Page or sheet.

<div class="grid cards" markdown>

-   :lucide-megaphone:{ .lg } **[Meta Ads](meta-ads.md)**
-   :lucide-chart-line:{ .lg } **[Google Ads](google-ads.md)**
-   :lucide-sheet:{ .lg } **[Google Sheets](google-sheets.md)**
-   :lucide-upload:{ .lg } **[Spreadsheet upload](spreadsheet-upload.md)**

</div>
