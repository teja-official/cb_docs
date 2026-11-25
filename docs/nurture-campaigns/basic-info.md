# Step 1: Basic info

Name and identify this nurture product.

## Fields

| Field | Required | What it's for |
|---|---|---|
| **Product Name** | Yes | The product or offer this campaign sells, e.g. *Premium Insurance Plan*. At least 2 characters. Shown to leads in bot menus and used by the AI. |
| **Deep Link ID** | Yes | A unique short ID used in deep links and bot menus. [More below](#deep-link-id). |
| **Short Description** | No | Shown next to the product name in WhatsApp / Telegram bot menus when a lead picks a product. Up to 100 characters; keep it under 60 for the best display. |
| **Timezone** | Yes | The region your leads message from. Follow-ups are scheduled within that region's local hours. |

## Deep Link ID

The deep link ID is generated from the product name (*auto-generated · you can edit*). Rules: only lowercase letters, numbers, underscores and hyphens (`a-z`, `0-9`, `_`, `-`), and it must be unique in your workspace.

It's how a lead lands directly in this campaign instead of choosing from a menu. For example, with the ID `premium_insurance`:

- **Telegram**: `https://t.me/<your_bot_username>?start=premium_insurance`

When several campaigns share a channel, a lead is routed to the right one by, in order: an existing assignment → the deep link / start parameter → ad or UTM metadata → an exact product name in their message → AI identification → a product menu.

## Timezone

Pick the timezone most of your leads are in. Each lead's own timezone is worked out when possible (from their browser on web chat, their phone number's country, or their email's date header) — the campaign's timezone is the fallback. [Quiet hours](../workspace/workspace-settings.md#quiet-hours) and follow-up times use the lead's local time.

[Next: AI & channels](ai-and-channels.md){ .md-button .md-button--primary }
