# Leads

Every prospect — captured from a lead source or from an inbound message — is listed here with their profile, channel history and status.

<span class="tj-path">Engage › **Leads**</span>

## The leads table

| Column | Meaning |
|---|---|
| **Nurture** | The campaign the lead belongs to. |
| **Email** / **Phone** | Contact details. |
| **Source** | Where they came from: an ad platform, a sheet or upload, or the channel they first messaged on. |
| **Captured** | When the lead was created. |
| **Engaged** | When they first engaged in a conversation. |
| **Next follow-up** | The next scheduled automatic message, if any. |
| **Status** | Where they are in the funnel (below). |

Filter by **Channel** and **Status**, by **Re-engagement** (*Follow-up scheduled*), by **Greeting reply** (*No reply after follow-ups*) and by **Captured Date**. Search and sort by any column.

Click a lead to open its details — name, contact details, nurture (or *Unassigned*), **Assignment Method** (how it was routed to a campaign: deep link, ad metadata, product name, AI identification or menu), source, status, **Times engaged**, **Last engaged** — and all its **conversations** (nurture, channel, engage time and next follow-up for each).

## Lead statuses

| Status | Meaning |
|---|---|
| **New** | Just captured. |
| **Contacted** | The first message went out. |
| **Engaged** | The lead replied and is talking. |
| **Qualified** | A good fit and interested. |
| **Not Interested** | Declined. |
| **Converted** | Became a customer. |
| **Lost** | Gone cold or bought elsewhere. |

When a lead moves to **Qualified**, **Not Interested**, **Converted** or **Lost**, pending no-reply follow-ups stop.

## Deleting leads

With the **Manage leads** permission you can select one or more leads and delete them. **Their conversations are deleted too**, and this can't be undone.

## Returning leads

If a lead who talked to you before comes back, the AI can pick up with context from their previous conversation (plan feature *AI remembers returning leads*). A lead who messages again after a conversation closed starts a fresh conversation, with the previous summary carried over.

## Where a lead's timezone comes from

Follow-ups and quiet hours use each lead's local time. It's taken from the strongest source available: the browser on [web chat](web-chat.md), the phone number's country, the date header of their email reply, the campaign's timezone, and finally a system default.
