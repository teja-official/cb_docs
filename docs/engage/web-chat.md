# Lead web chat

Every lead gets a personal **web chat link** — a short link like `[[ app.url ]]/c/AbC123`. It opens a chat page in the browser where the lead talks to the same AI, with no app or login needed.

## Where leads get it

- In **email** and **SMS** messages from your campaigns (the `{{chat_link}}` variable; it's added automatically if a greeting template leaves it out).
- Conversations started on web chat show the **Web Chat** channel in the inbox.

## What the lead sees

- A **Start conversation** card, then the chat with your AI.
- The whole history of their conversations, even ones that moved to another channel.
- When they ask to be contacted later, a card to choose how: **email**, **WhatsApp**, **SMS** or back on web chat.
- *This conversation is closed* when it has ended — they can start a new one.

## Follow-ups from web chat

Leads usually leave the page before "get back to me tomorrow" is due. When the time comes, the follow-up goes:

1. to the channel the lead picked on the chat page, if it's still usable;
2. otherwise to web chat, if the page is open and visible;
3. otherwise to the first channel that can reach them (the greeting's channel first);
4. otherwise to web chat.

The conversation **moves** to that channel. If the lead replies there it continues on that channel; if they open the chat link again it moves back to web chat. Opening the link also stops any pending no-reply follow-ups.

## Link expiry

Links work for **7 days** by default. After that, the next message to the lead includes a new link. Change it in [Workspace settings → Lead chat links](../workspace/workspace-settings.md#lead-chat-links) (1–30 days).
