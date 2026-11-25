# Conversations

Every AI-led conversation, on every channel, appears here in real time. Read threads, take over from the AI, hand back, or reassign to another agent.

<span class="tj-path">Engage › **Conversations**</span>

## The inbox

The page has three panels: the **conversation list**, the **message thread**, and **lead details** (toggle it from the thread header). On phones they open one at a time.

### Filters

| Filter | Shows |
|---|---|
| **All** | Every conversation. |
| **Active** | Ongoing conversations. |
| **Awaiting** | Greeting sent, waiting for the lead's first reply. Automatic follow-ups are scheduled. |
| **Closed** | Finished conversations. |

Use **Search leads…** to find a lead. Admins can also filter by agent (**All conversations** or a specific agent).

Each conversation shows its channel icon, the latest message, and a 🔥 marker for **high purchase intent**.

## Reading a thread

- Messages are labelled by sender: the **lead**, the **AI**, or a **human agent**.
- The top of the thread shows where the lead came from, e.g. *New lead · Meta Lead Ads*, with the capture time.
- A progress tracker shows **Captured → Lead replied → Handed off / With agent → Closed**.
- Scheduled follow-ups appear inline (*Follow-up scheduled · Tue, Mar 3 · 9:00 AM*); hover to see what the lead asked for.
- Closed conversations say why: *Closed: no reply to the greeting or follow-ups*, *Closed automatically after inactivity*, or *Conversation closed*.

## Take over from the AI

While the AI is handling a lead you'll see *AI is replying to this lead. Take over to answer yourself.*

<div class="steps" markdown>

1. Click **Take over**.
2. Confirm: *The AI will stop responding and every message from here on will be sent by you, as this agent, until you release it back.*
3. Type in the message box and send. Your reply goes out on the conversation's channel.

</div>

!!! note "Permissions"
    Taking over, replying, releasing and reassigning each need a permission (`conversations.takeover`, `.send_message`, `.release`, `.reassign`). The built-in **Agent** role has all but reassign. Without permission the box says *You don't have permission to reply in this conversation*.

## Release back to the AI

Click **Release** and confirm. *The AI will resume responding to this lead automatically.* Make sure nothing is left needing a human reply first.

## Reassign to another agent

Click :lucide-users: **Reassign to another agent**, search for an agent and select them. Agents who are unavailable or at capacity can't be selected. The dialog shows who it's **Currently assigned** to.

## Lead details panel

| Section | What you see |
|---|---|
| **Contact** | Email, phone, username, location, language, timezone, website and any extra fields from the lead source. |
| **Channel** | The current channel — and where the conversation switched channels (e.g. web chat → WhatsApp). |
| **Engagement** | **Times engaged**, past conversations (handled by the AI or an agent), and the **Next follow-up**. |
| **Tags** | Tags on the lead. |
| **Nurture campaign** | Which campaign the lead belongs to. |
| **AI Signals** | **Sentiment** (Positive / Neutral / Negative), **AI Confidence** (High / Medium / Low) and **Detected Intent**. |
| **Summary** | An AI summary of the conversation. |
| **Timeline** | Lead captured, conversation started, first response, last message, conversation ended. |

## When conversations close

- **Inactivity** — AI-handled conversations close on their own after a while without messages (default 2 hours, set in [Workspace settings](../workspace/workspace-settings.md#conversations)). A new message from the lead starts a fresh conversation, with the previous summary carried over.
- **No response** — the lead never replied to the greeting and follow-ups.
- **The lead finished** — the AI ends the conversation politely once the lead is done.
- **The lead started over** — a lead who sends a bare greeting (*hi*, `/start`, *menu*) mid-conversation starts a new one.

Conversations a human agent took over are **never closed automatically**.
