# Glossary

AI confidence
:   How sure the AI is of its answer. Below the campaign's **AI Confidence Threshold**, the conversation is handed to an agent.

AI model
:   A saved AI provider + model + API key (e.g. OpenAI GPT-4o). The "brain" that writes messages. [AI models](../setup/ai-models.md)

Agent (human agent)
:   A workspace member who receives handoffs. Has a priority, a capacity (max concurrent chats) and an alert channel. [Human agents](../setup/human-agents.md)

Agent assignment strategy
:   How a campaign picks the agent for a handoff: Round Robin, Least Busy, Priority Based or Broadcast.

Awaiting
:   A conversation whose greeting was sent but the lead hasn't replied yet. Automatic follow-ups are scheduled.

Channel
:   A messaging connection: WhatsApp, Telegram, Email or SMS. [Channels](../setup/channels/index.md)

Conversation
:   A chat between a lead and the AI or an agent on one channel. Closes on inactivity, no response, or when the lead is done.

Deep link ID
:   A campaign's unique short ID, used in links that open a chat straight into that campaign (e.g. `t.me/<bot>?start=<id>`).

Grace period
:   The 2 days after a plan ends during which the app still works.

Greeting
:   The first message sent to a new lead from a lead source.

Handoff
:   Passing a conversation from the AI to a human agent. [Handoffs](../engage/handoffs.md)

Knowledge base (KB)
:   The facts a campaign's AI may use: knowledge blocks, Q&A pairs and instructions. Must be processed (**Process KB**) before use. [Knowledge base](../nurture-campaigns/knowledge-base.md)

Lead
:   A prospect, captured from a lead source or an inbound message.

Lead source (integration)
:   A connection that brings leads in: Meta Ads, Google Ads, Google Sheets, spreadsheet upload. [Lead sources](../setup/lead-sources/index.md)

Message template
:   A pre-approved message format (WhatsApp, Twilio) required to message someone first. [Message templates](../setup/channels/message-templates.md)

No-reply follow-up
:   An automatic follow-up sent when a lead doesn't reply to the greeting.

Nurture campaign (nurture)
:   One product's AI follow-up setup: knowledge base, tone, channels, follow-ups and handoff rules. [Nurture campaigns](../nurture-campaigns/index.md)

Primary follow-up channel
:   The channel a campaign uses to send the first message to new leads. Must be WhatsApp (with template), Email or SMS.

Quiet hours
:   The nightly window (default 9 PM–8 AM, lead's local time) when automatic follow-ups aren't sent. [Workspace settings](../workspace/workspace-settings.md#quiet-hours)

Release
:   Handing a conversation back from an agent to the AI.

Requested follow-up
:   A follow-up the lead asked for ("message me tomorrow").

Sentiment
:   How positive or negative the lead's tone is. Below the campaign's **Sentiment Threshold**, the conversation is handed to an agent.

Take over
:   An agent taking control of a conversation; the AI stops replying until it's released.

Test Chat
:   A private chat in the campaign wizard for testing the AI against your processed knowledge base.

Web chat link
:   Each lead's personal browser chat page, sent by email and SMS. [Lead web chat](../engage/web-chat.md)

Webhook
:   A URL a platform (Meta, Twilio, Google Ads) calls to deliver messages or leads to [[ app.name ]].

Workspace
:   Your team's space. All data and billing belong to a workspace. [Team & roles](../workspace/team-and-roles.md)
