# Dashboards

The first item in the sidebar is your dashboard. Admins see **Dashboard** (the whole workspace); agents see **My Dashboard** (their own work). Viewing dashboards needs the `reports.view` permission, which the Agent role has.

## Admin dashboard

<span class="tj-path">**Dashboard**</span>

Use the date range filter to change the period. Key numbers:

| KPI | Meaning |
|---|---|
| **Total leads** | Leads captured in the period, with the change from the previous period. |
| **Active conversations** | Conversations in progress now (leads still waiting for a first reply aren't counted). |
| **AI handling** | Share of conversations handled entirely by the AI. |
| **Conversion rate** | Share of leads captured in the period that were marked Converted, even if they later enquired about another product. A Converted mark someone undid doesn't count. |
| **Avg sentiment** | Average lead sentiment. |
| **AI usage (tokens)** | Input / output tokens used by your AI models. |

Below the KPIs you'll find charts, the **nurture performance** table (click a row to open that [campaign's analytics](../nurture-campaigns/manage-campaigns.md#campaign-analytics)), and the **Live** panel.

### Conversion metrics

The **Conversion** metrics (add them from **Customize → Metrics**) are also on the [Pipeline page](lead-statuses.md#pipeline-page): Qualified leads awaiting a decision, conversions over time, time to convert, why leads were lost, conversions by agent, and leads enquiring about several products. Conversions are credited to the product the lead was on when it was marked Converted. Per-product numbers (the nurture leaderboard and each campaign's metrics) count every lead who enquired about the product, so a lead who enquired about two products counts for both.

### Live panel

A real-time view of operations: **Active conversations**, **AI controlled**, **Human control**, **High intent**, **Agents online**, **Available**, **Pending handoffs** and **Alerts** (handoffs nobody has accepted). Agents show as online or offline.

## Agent dashboard

<span class="tj-path">**My Dashboard**</span>

| KPI | Meaning |
|---|---|
| **Active conversations** | Conversations assigned to you now. |
| **Awaiting my reply** | Leads waiting on you — answer these first. |
| **High intent leads** | Your leads showing buying intent. |
| **Resolved today** | Conversations you finished today. |
| **Total handled** | All conversations you've handled. |
| **Rescheduled follow-ups** / **Re-engaged leads** | Follow-ups and leads brought back into conversation. |

Below is your conversation table — click one to open it in **Conversations**.

## Email reports

The workspace owner can also get reports by email — turn them on in [Account settings → Emails](../account/account-settings.md#emails):

- **Daily workspace report** — yesterday's leads, conversations and handoffs.
- **Missed activity report** — end-of-day list of messages and handoffs nobody picked up (on plans that include it).
- A monthly business report.
