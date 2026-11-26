# Lead statuses

A status says where a lead is in your funnel **for one product**. A lead who enquired about two products has two statuses: they can be **Converted** on Solar panels and **New** on Batteries. The badge on the lead shows the status on their **current product** (the one they enquired about most recently); the lead's **Products** section shows all of them.

Most changes happen on their own as the AI and the follow-ups work. **Converted** is the one status only a person sets.

<span class="tj-path">Engage › **Leads** › click the status badge</span>

## What each status means

| Status | Means | Set when | Set by |
|---|---|---|---|
| **New** | Just captured. Nothing has been sent yet. | A lead is captured, or enquires about another product (that product starts at New). Also when a lead who declined or went silent submits that product's form again. | System |
| **Contacted** | We reached out. The lead hasn't replied yet. | The greeting is delivered. | System |
| **Engaged** | The lead replied at least once. | The lead's first reply, on any channel. Also when a **Lost** lead writes back. | System |
| **Qualified** | The lead clearly wants to go ahead. | The AI sees buying intent: the lead asks how to buy, pay, order, book or get started, or confirms a demo or visit. Questions about price, features or comparisons alone don't count. | AI |
| **Converted** | The lead became a customer. | Someone marks it. Qualified leads nobody marks are [reminded and escalated](#did-a-qualified-lead-buy). | Agent or admin |
| **Not interested** | The lead clearly said no. | The AI sees an explicit decline (*"not interested"*, *"no thanks"*, *"I bought elsewhere"*). Not for objections (*"too expensive"*) or *"not now"*. Those get a normal reply or a [scheduled follow-up](../nurture-campaigns/follow-ups.md#requested-follow-ups). | AI |
| **Lost** | The lead went silent. | No reply to the greeting and every follow-up, or no reply to the [final message](#before-a-lead-is-marked-lost) after they had replied before. | System |

You can always set any status yourself (see [Changing a status](#changing-a-status)).

## How statuses move

```mermaid
flowchart LR
    N["New"] -->|greeting delivered| C["Contacted"]
    C -->|lead replies| E["Engaged"]
    N -->|lead writes first| E
    E -->|buying intent| Q["Qualified"]
    Q -->|a person| V["Converted"]
    E -->|clear no| X["Not interested"]
    Q -->|clear no| X
    C -->|no reply to any follow-up| L["Lost"]
    E -->|silent after the final message| L
    L -->|lead writes back| E
```

- **Each product moves on its own.** A greeting, a reply or an AI decision changes the status of the product that conversation is about. The lead's other products keep theirs.
- **Automatic changes only move a lead forward**: New → Contacted → Engaged → Qualified. A lead never goes back to an earlier stage on its own.
- **Converted, Not interested and Lost are outcomes.** The AI and the system never overwrite them, with two exceptions:
    - A **Lost** lead who writes back becomes **Engaged** again.
    - A **new form submission** (re-capture) can start the lead again at **New** (below).
- A **Not interested** lead who writes back keeps that status. The AI still answers them.
- A **Qualified** lead is never marked Lost automatically. A person decides whether they bought.
- **Your changes win.** Automation never undoes a status you set, except by moving the lead forward. It only touches an outcome you set through the two exceptions above.
- Test chats from the campaign wizard never change a status.

## When a lead submits another form

A person is **one lead per workspace**, matched by email or phone. However many forms they fill in, on Meta, Google Ads, a sheet or an upload, you see one lead, with every submission kept under their **Products**. Leads in another workspace are never matched: the same person in two workspaces is two separate leads, each with its own conversations and statuses.

What happens depends on the product the form is for:

| The form is for | A conversation is open | What happens |
|---|---|---|
| **The same product** | Yes | No new greeting: the conversation carries on. You (and the agent on it) are told the lead submitted the form again. |
| **The same product** | No, but we greeted them in the last 24 hours | Nothing is sent. Someone clicking the same ad twice, or seeing it on both Meta and Google, gets one message. |
| **The same product** | No | A "welcome back" greeting that picks up from their last conversation about it. |
| **Another product** | Yes, and a **team member** has it (an agent took over, or a handoff is waiting) | The lead stays on the product they're talking about and **no message is sent**. The agent is told the lead also enquired about the other product. Admins are told when no agent has it yet. The new product is added to the lead at **New**. |
| **Another product** | Yes, handled by the AI, or none | Open conversations close (*Lead moved to another product*, the summary is kept) and pending follow-ups stop. The lead moves to the new product and gets its greeting in a fresh conversation, so the two products never mix. |

Status rules for the product the form is for:

| Its status | What happens |
|---|---|
| The lead never enquired about it | Starts at **New**. |
| New, Contacted, Engaged, Qualified | No change. |
| Not interested, Lost | Back to **New**: a new form is a fresh opt-in. |
| Converted | Stays **Converted**. You and the agent are told an existing customer enquired again. |

The lead's other products keep their status. An earlier conversion keeps counting for the product it happened on.

A missing email or phone on the lead is filled in from the new form. A different email or phone is kept as an alternate contact. People who share an email or phone (family, an office line) are treated as one lead.

The dashboard's **Leads enquiring about several products** card counts leads who talked to you about two or more products.

## When the AI decides

On every reply, the AI says whether this message shows the lead is **qualified** or **not interested**, with a short reason that appears in the status history. The app then checks the rest of the AI's answer:

- **Buying intent** (*ready to buy*) always means Qualified.
- **"Not interested" is ignored** when the same message shows buying intent, or when the lead asks to be contacted later.
- **Stop if not interested** (per campaign, in [step 2](../nurture-campaigns/ai-and-channels.md#when-a-lead-says-no)):
    - **On** (default): when the lead declines, the AI says a short goodbye, every pending follow-up is cancelled and the conversation closes as *Lead not interested*.
    - **Off**: the lead is still marked Not interested, but the AI makes one gentle attempt to address their reason, and follow-ups already scheduled still go out.
- **"Stop messaging me"** (*"stop"*, *"unsubscribe"*) always stops everything, whatever the setting.

## Before a lead is marked Lost

A lead who replied and then went quiet gets **one final message** before being marked Lost:

1. The conversation goes quiet. After the workspace's [auto-close time](../workspace/workspace-settings.md#conversations) it is kept open instead of closing.
2. After the campaign's **final message** delay (default **48 hours**, set in [step 2](../nurture-campaigns/ai-and-channels.md#final-message-before-marking-a-lead-lost)), the AI writes one short message. It picks up where the conversation left off and says you'll close this out for now.
3. A reply keeps the conversation going. No reply within the campaign's *Close as "No response"* time (default 48 hours) closes it and marks the lead **Lost**.

Final messages go out on **Email, SMS and WhatsApp**. WhatsApp uses the follow-up template. On other channels the lead is marked Lost after the same total wait, without a final message. With the final message turned off (0 hours), the lead is marked Lost once the conversation closes for inactivity. Agents and admins aren't notified about any of this. It's recorded in the lead's status history.

## Changing a status

Click the status badge on the lead's details (from **Leads**, or the lead panel in **Conversations**) and pick the new status. That changes their current product. To change another product, use its badge in the lead's **Products** section.

- **Admins** can change any lead.
- **Agents** can change leads in conversations assigned to them (permission *Change lead status*, which the Agent role has).
- **Converted**, **Not interested** and **Lost** ask for an optional note, e.g. *Paid invoice #1042*.
- Undoing **Converted** (picking another status) means the lead no longer counts as a conversion.

## Status history

The lead's details show every status change, newest first:

- the new and the previous status
- **who** made the change: the AI, the system, or the team member's name
- **why**, e.g. *Greeting delivered*, *Asked for the payment link* or your note
- **when**, and the product and conversation it happened in

The history is permanent. Conversion numbers on the dashboards and the Pipeline page come from it.

## Did a Qualified lead buy?

Only a person knows whether a lead paid, so nobody should forget to mark it:

| When | What happens |
|---|---|
| The lead becomes **Qualified** | The usual high-intent alert. |
| After the **reminder** window (default **24 hours**) | The lead's agent is reminded: *"Did Ravi buy? Mark the lead Converted or Lost."* With no agent on the lead, admins get it. |
| After the **escalation** window (default **72 hours**) | It's reported to admins with the reason. |
| At reminder time, if the agent is **unreachable** | It's reported to admins straight away. Unreachable means offline for more than a day, set to unavailable, or no longer in the workspace. |

It works per product: a lead who was Qualified on one product and then enquired about another still gets a decision on the first one. Each step happens once per Qualified period. Marking the product Converted or Lost (or any other status) ends it. Admins set both windows in [Workspace settings → Lead conversion](../workspace/workspace-settings.md#lead-conversion).

## Pipeline page

<span class="tj-path">Engage › **Pipeline**</span>

For admins:

- **Conversion decisions**: Qualified leads past the reminder window, with the agent reminded, and reported to admins.
- **Awaiting a conversion decision**: those leads and the product they're Qualified on, oldest first, with **why** nobody has marked them (*"Ravi has been offline since 21 Nov"*, *"No agent assigned"*, *"Ravi hasn't marked it for 4 days"*). Click one to open it and set its status.
- **Qualified and converted** over time, and **Time to convert** (median, capture → Converted).
- **Why leads were lost**: Lost and Not interested leads by reason.
- **Conversions by agent**: leads each person marked Converted, and their leads still waiting.
- **Leads enquiring about several products**, and the **products enquired about together**.

Agents see **Did they buy?**: their own Qualified leads waiting for a decision.

Every Pipeline card can also be added to a dashboard from **Customize → Metrics**.
