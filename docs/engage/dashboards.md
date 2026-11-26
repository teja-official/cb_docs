# Dashboards

The first item in the sidebar is your dashboard. Admins see **Dashboard** (the whole workspace); agents see **My Dashboard** (their own work). Viewing dashboards needs the `reports.view` permission, which the Agent role has.

## Admin dashboard

<span class="tj-path">**Dashboard**</span>

Both dashboards are made of metrics you can arrange: use the date range filter to change the period, and **Customize** to add, remove, resize and reorder metrics (**Customize → Metrics** lists everything available; needs the *Customize own dashboard* permission). A new workspace starts with:

| Metric | Meaning |
|---|---|
| **Lead temperature** | New leads in the period by how close they are to buying (on plans with lead scoring). |
| **Conversion rate** | Share of leads captured in the period that were marked Converted, even if they later enquired about another product. A Converted mark someone undid doesn't count. |
| **Active conversations** | Conversations going on right now (leads still waiting for a first reply aren't counted). |
| **AI resolution rate** | Conversations closed in the period without any human help. |
| **New leads** | Leads captured over time. |
| **Lead funnel** | Leads captured in the period by how far they've got. |
| **Leads by source** | Where leads came from, and how many replied and converted. |
| **Replies by follow-up** | How many leads replied to the greeting and to each automatic follow-up. |
| **Waiting for an agent** | Handoffs nobody has picked up yet, and the longest wait. |
| **Monthly lead quota** | New leads this usage month against your plan's figure. |
| **Hot leads needing action** | Hot leads that aren't converted and no one is working on. |
| **Nurture performance** | Per campaign: leads, reply rate, buying-intent rate and conversion rate (click a row to open that [campaign's analytics](../nurture-campaigns/manage-campaigns.md#campaign-analytics)). |
| **Leads enquiring about several products** | Leads who talked to you about two or more products. |

Other metrics you can add include sentiment, AI token usage, agent response time, handoff pickup time, message delivery, channel performance and the **Live operations** panel.

### Conversion metrics

The **Conversion** metrics (add them from **Customize → Metrics**) are also on the [Pipeline page](lead-statuses.md#pipeline-page): Qualified leads awaiting a decision, conversions over time, time to convert, why leads were lost, conversions by agent, and leads enquiring about several products. Conversions are credited to the product the lead was on when it was marked Converted. Per-product numbers (the nurture leaderboard and each campaign's metrics) count every lead who enquired about the product, so a lead who enquired about two products counts for both.

### Live operations

A real-time view of operations (add it from **Customize → Metrics**): **Active conversations**, **AI controlled**, **Human control**, **High intent**, **Agents online**, **Available**, **Pending handoffs** and **Alerts** (handoffs nobody has accepted). Agents show as online or offline.

## Agent dashboard

<span class="tj-path">**My Dashboard**</span>

Admins choose which metrics agents may use and the layout new agents start with. By default:

| Metric | Meaning |
|---|---|
| **My active conversations** | Conversations you're handling right now. |
| **Waiting for my reply** | Your conversations where the lead sent the last message — answer these first. |
| **Handoffs to pick up** | Leads handed to the team that no agent has taken yet. |
| **My capacity** | Your active conversations against the most you can handle at once. |
| **My response time** | Median time you take to answer a lead. |
| **My hot leads** | Hot leads in your conversations that aren't converted yet. |
| **My follow-ups due today** | Follow-ups your leads asked for that are due today. |
| **Did they buy?** | Your Qualified leads waiting for you to mark them Converted or Lost. |

## Email reports

The workspace owner can also get reports by email — turn them on in [Account settings → Emails](../account/account-settings.md#emails):

- **Daily workspace report** — the last 24 hours: new leads, active conversations, conversion rate, AI handling, sentiment and AI confidence.
- **Missed activity report** — end-of-day list of messages and handoffs nobody picked up (on plans that include it).
