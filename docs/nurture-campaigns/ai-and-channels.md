# Step 2: AI & channels

Pick the AI model, tone, channels, follow-ups, and how agents get assigned when a conversation needs a human.

## AI model

Select which [AI model](../setup/ai-models.md) configuration this nurture should use. Only **active** models are listed — search by name, model or provider. If you see *"No active AI models configured"*, add or activate one first.

## Tone

How the AI writes:

| Tone | Sounds like |
|---|---|
| 💼 **Professional** | "We understand your needs and are here to provide the best solution for your situation." |
| 👋 **Friendly** | "Hey! Great to hear from you — let me help you find what you're looking for!" |
| 🚀 **Salesy** | "This is the opportunity you've been waiting for — let's get you set up right now!" |
| 😊 **Casual** | "Sure thing! Here's what you need to know about this..." |

For finer control (language, style, what to focus on), use the **Instructions** tab in the [Knowledge base step](knowledge-base.md#instructions).

## Handoff thresholds

When the AI's confidence or the lead's sentiment drops below these levels, the conversation is flagged for human review and [handed off](../engage/handoffs.md). *Works only when agents are configured.*

| Slider | Escalates when… | Recommended |
|---|---|---|
| **AI Confidence Threshold** | the AI's confidence in its answer drops below this | 40% |
| **Sentiment Threshold** | the lead's sentiment (tone) drops below this — e.g. they're frustrated | 30% |

Slide left to *Rarely escalate*, right to *Always escalate*. Handoffs also happen when a lead asks for a person or shows buying intent, whatever the sliders say.

## Channels

Choose which configured channels this nurture is active on. Select at least one. Search by name or type.

### Primary follow-up channel

The channel used to send the **first message to a brand-new lead** (e.g. from a Meta or Google Ads form) before they reply. Only channels that can message someone first are listed:

| Channel | Requirement |
|---|---|
| **WhatsApp** | A saved, approved [greeting template](../setup/channels/message-templates.md#whatsapp-templates) |
| **Email** | SMTP credentials |
| **SMS** | Valid Twilio credentials |

Channels missing these requirements are left out of the list. If none qualifies, you'll see *"No selected channel qualifies as a Primary Follow-up Channel yet."*

### Follow up automatically when a lead doesn't reply

Leave this on and leads who don't reply to the greeting get a few short follow-ups on the same channel; then the conversation closes as **No response**. Any reply, on any channel, stops them.

You can set the schedule: each **Follow-up 1, 2, 3…** in hours after the greeting (default **24, 48 and 72 hours**, up to 5 follow-ups, each later than the last, at most 720 hours), and **Close as "No response" after the last one** (default **48 hours**). Quiet hours from [Workspace settings](../workspace/workspace-settings.md#quiet-hours) always apply.

On WhatsApp the follow-ups use the channel's [follow-up template](../setup/channels/message-templates.md#follow-up-template) (or reuse the greeting template). Details in [Follow-ups](follow-ups.md#no-reply-follow-ups).

## Agent assignment strategy

When a conversation is handed off, how should the agent be selected?

| Strategy | Description |
|---|---|
| **Round Robin** | Leads are distributed to agents in a fixed rotation. Every agent gets an equal share regardless of current workload. Best for teams with similar capacity. |
| **Least Busy** | The agent with the fewest active conversations is always picked first. Balances workload dynamically. **Recommended default for most teams.** |
| **Priority Based** | Agents are ranked by the priority set on their profile. The highest-priority available agent always receives the next lead. Use it to route leads to senior agents or specialists first. |
| **Broadcast** | All available agents are notified at once. The first to accept claims it. Fastest response, but can cause notification fatigue for large teams. |

[Next: Knowledge base](knowledge-base.md){ .md-button .md-button--primary }
