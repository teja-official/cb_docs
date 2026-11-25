# Handoffs to agents

A **handoff** passes a conversation from the AI to one of your [human agents](../setup/human-agents.md). It needs at least one available agent and the plan feature *Human takeover of AI chats*.

## When the AI hands off

- The lead **asks for a person**.
- The lead **gets upset** — sentiment drops below the campaign's **Sentiment Threshold**.
- The AI **isn't sure** — its confidence drops below the **AI Confidence Threshold**.
- The lead **shows buying intent** — *Ready to buy · handed to …*.

Thresholds are set per campaign in [AI & channels](../nurture-campaigns/ai-and-channels.md#handoff-thresholds).

## Who gets it

The campaign's [agent assignment strategy](../nurture-campaigns/ai-and-channels.md#agent-assignment-strategy) picks the agent: **Round Robin**, **Least Busy**, **Priority Based** or **Broadcast** (everyone available is alerted and the first to respond claims it). Only agents marked **Available for handoffs** and below their **Max concurrent chats** are chosen.

## How agents are alerted

<div class="steps" markdown>

1. **In the app** — a notification in the bell (and a sound or desktop notification, if turned on in [Notifications](../account/notifications.md)). The conversation appears in their **Conversations** queue and on **My Dashboard** under *Awaiting my reply*.
2. **On their alert channel** — a Telegram, email or SMS message through your workspace's channel, with the lead's details. Set it up in [Human agents → Notification channels](../setup/human-agents.md#notification-channels).

</div>

The workspace owner also gets an instant **"leads ready to buy"** email the first time a lead shows buying intent (if the plan includes it and it's on in [Account settings](../account/account-settings.md#emails)).

## Working the handoff

1. Open the conversation from the alert or the queue.
2. Read the history and the lead's **AI Signals** and **Summary**.
3. Reply. If you're not yet in control, click **Take over** first.
4. When you're done, **Release** it back to the AI — or leave it with you. Conversations an agent took over aren't closed automatically.

!!! tip "Speed matters"
    Fast response times make a big difference in conversion rates. If nobody picks up a handoff, it's flagged on the admin **Live** panel (*Pending handoffs*, *Alerts*), and the optional end-of-day **Missed activity report** lists what nobody picked up.

## No agents?

Without agents, the AI keeps every conversation. Handoff thresholds have no effect, and the AI won't promise that a person will call.
