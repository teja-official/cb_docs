# Human agents

**Human agents** are team members who take over conversations from the AI — when a lead asks for a person, gets upset, shows buying intent, or the AI isn't confident. Each agent has a routing priority, a capacity and a channel where they get handoff alerts.

<span class="tj-path">Setup › **Human Agents**</span>

!!! info "Agents must be workspace members first"
    You can only add people who are already in your workspace. [Invite them](../workspace/team-and-roles.md#invite-a-teammate) from **Team & Workspace**, then add them here.

## Add an agent

<div class="steps" markdown>

1. Go to **Human Agents** and click **Add agent**.
2. **Workspace member** — search by name or email. Only members who aren't agents yet are shown. This can't be changed later.
3. **Max concurrent chats** — how many open conversations they can handle at once.
4. **Priority** — lower numbers are routed first (used by the *Priority Based* strategy).
5. **Available for handoffs** — leave on. Turn off to pause new assignments.
6. **Notification channel** — where alerts reach them: **Telegram**, **Email** or **SMS** (or **None**). Then enter their contact for that channel — see [below](#notification-channels).
7. Click **Add**.

</div>

## Notification channels

Handoff alerts are sent through **your workspace's own connected channel** — its Telegram bot, Twilio number or SMTP mailbox — so that channel must be set up and active.

### Telegram Chat ID

Telegram bots can't message a `@username` or phone number — only a numeric **Chat ID**, and only after that person has started the bot.

<div class="steps" markdown>

1. In Telegram, the agent opens **your workspace's bot** (the one connected on the Channels page) and taps **Start**. Without this the bot can't message them.
2. They search for **@userinfobot**, open it and tap **Start**. It replies with their **Id**, a number such as `123456789`.
3. Paste only that number. Not the @username, not the phone number.

</div>

For a Telegram **group**, add the bot to the group and use the group's ID. It starts with a minus sign, e.g. `-1001234567890`.

!!! tip "Telegram is the fastest"
    For urgent handoffs, Telegram alerts arrive instantly and are the most reliable.

### Email

Alerts come from your workspace's connected email account (SMTP), so this can be any inbox the agent checks often — it doesn't have to be their login email. Ask them to add your sending address to their contacts so alerts don't land in spam. Email is the slowest channel.

### SMS

Alerts are sent as texts from your workspace's Twilio number. Enter the number with `+` and the country code, e.g. `+15551234567`. On a Twilio **trial** account, first add it under **Verified Caller IDs** in the Twilio console. Each alert is billed by Twilio; landlines and some virtual numbers can't receive SMS.

### WhatsApp (existing agents only)

WhatsApp is no longer offered for new agents: WhatsApp only delivers these alerts if the agent messaged your business number in the last 24 hours, which is too fragile. Agents that already use it still see it when edited — switching them to Telegram or Email gives more reliable delivery.

## How agents are chosen

Each nurture campaign picks an **agent assignment strategy** in its [AI & channels step](../nurture-campaigns/ai-and-channels.md#agent-assignment-strategy):

| Strategy | How it works | Best for |
|---|---|---|
| **Round Robin** | Leads go to agents in a fixed rotation; everyone gets an equal share regardless of workload. | Teams with similar capacity |
| **Least Busy** | The agent with the fewest active conversations is picked first. Balances workload as conversations open and close. | Most teams (recommended default) |
| **Priority Based** | The highest-priority available agent (lowest number) always gets the next lead. | Routing to senior agents or specialists first |
| **Broadcast** | All available agents are notified at once; the first to accept claims it. | Fastest response — but can cause notification fatigue on large teams |

Only agents who are **available** and below their **max concurrent chats** are picked.

## Manage agents

- **Search, filter and sort** — by name or email; *All / Available only / Unavailable only*; sort by priority, name, busiest/least busy, newest/oldest.
- **Set unavailable** — they won't be assigned new handoffs until you set them available again. Agents can also do this themselves in [Account settings → My agent profile](../account/account-settings.md#my-agent-profile).
- **Edit** — change capacity, priority, availability or notification channel.
- **Remove agent** — they stop receiving handoffs. Their user account and conversation history aren't affected.

!!! note "Plan limit"
    Your plan sets the number of **handoff agents**. Human takeover of AI chats is also a plan feature.

What happens when a conversation is handed off — and how agents take over and release it — is in [Handoffs to agents](../engage/handoffs.md).
