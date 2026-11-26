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
| **New** | Just captured. Nothing has been sent yet. |
| **Contacted** | The greeting was delivered; no reply yet. |
| **Engaged** | The lead replied at least once. |
| **Qualified** | The lead clearly wants to buy, book or pay (set by the AI). |
| **Converted** | Became a customer (set by an agent or admin). |
| **Not interested** | The lead clearly declined (set by the AI). |
| **Lost** | Went silent, even after a final message. |

Statuses change on their own as the AI and the follow-ups work, and you can change one by clicking the badge in the lead's details. Every change is kept in the lead's **Status history**. When a lead becomes **Not interested**, **Converted** or **Lost**, pending no-reply follow-ups stop. Exactly when each status is set, and how Qualified leads get followed through: [Lead statuses](lead-statuses.md).

## Deleting leads

With the **Manage leads** permission you can select one or more leads and delete them. **Their conversations are deleted too**, and this can't be undone.

## Returning leads

If a lead who talked to you before comes back, the AI can pick up with context from their previous conversation (plan feature *AI remembers returning leads*). A lead who messages again after a conversation closed starts a fresh conversation, with the previous summary carried over.

## Where a lead's timezone comes from

Follow-ups and quiet hours use each lead's local time. It's taken from the strongest source available: the browser on [web chat](web-chat.md), the phone number's country, the date header of their email reply, the campaign's timezone, and finally a system default.
