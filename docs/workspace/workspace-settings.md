# Workspace settings

Lead-messaging rules for the whole workspace. Viewing needs `app_settings.view`; changing needs `app_settings.manage`.

<span class="tj-path">Workspace › **Settings**</span>

!!! info "Per-campaign follow-ups are elsewhere"
    The schedule of no-reply follow-ups (how many, and when) is set per campaign in the [AI & channels step](../nurture-campaigns/ai-and-channels.md#follow-up-automatically-when-a-lead-doesnt-reply). This page sets the rules every campaign follows.

## Quiet hours

Follow-ups to leads who haven't replied, and call-backs where the lead didn't name a time, **never go out in this window** — in each lead's own timezone. Greetings to new leads, replies, and call-backs at a time the lead chose are sent as usual.

| Setting | Default | Notes |
|---|---|---|
| **Pause automatic messages during quiet hours** | On | Turn off to allow messages at any hour. |
| **From** | 9 PM | |
| **Until** | 8 AM | A message due inside the window is sent at this time instead. |

## Follow-ups

When a lead asks to be contacted later without saying when (*"text me later"*).

| Setting | Default | Range |
|---|---|---|
| **Follow up after (hours)** | 6 | 1–72. Moved out of quiet hours if it would land there. |

## Conversations

AI-handled conversations close on their own when nobody writes for a while. A new message from the lead starts a fresh one, with the previous summary carried over.

| Setting | Default | Range |
|---|---|---|
| **Close after (hours without a message)** | 2 | 1–168. Conversations a human agent took over are never closed automatically. |

Leads still waiting for their first reply (with no-reply follow-ups scheduled) aren't closed by this rule — they close as *No response* after the last follow-up instead.

## Lead conversion

Only a person can mark a lead **Converted**. When a **Qualified** lead isn't marked Converted or Lost, its agent is reminded, then it's reported to admins on the [Pipeline page](../engage/lead-statuses.md#pipeline-page).

| Setting | Default | Range |
|---|---|---|
| **Remind the agent after (hours Qualified)** | 24 | 1–720. With no agent on the lead, admins get the reminder. |
| **Report to admins after (hours Qualified)** | 72 | 1–2160, later than the reminder. Sooner if the agent is unreachable at reminder time: offline for a day, set to unavailable, or no longer in the workspace. |

## Lead chat links

The personal [web chat link](../engage/web-chat.md) sent to leads by SMS or email.

| Setting | Default | Range |
|---|---|---|
| **Link works for (days)** | 7 | 1–30. Applies to links sent from now on. After it expires, the next message to the lead gets a new link. |
