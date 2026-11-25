# Telegram

Create a Telegram bot in under a minute — no developer account needed. Leads chat with your bot, and the webhook is registered with Telegram automatically.

<span class="tj-path">Setup › **Channels** › **Add Channel** › **Telegram**</span>

## Create the bot

Follow [Telegram BotFather](../../third-party/telegram-botfather.md), or in short:

1. In Telegram, start a chat with **@BotFather** and send `/newbot`.
2. Choose a name and a username ending in `bot`.
3. Copy the token BotFather replies with — it looks like `123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11`.

## Add the channel

<div class="steps" markdown>

1. In **Channels**, click **Add Channel** and choose **Telegram**.
2. Enter a **Connection Name**.
3. Paste the token into **Bot Token**.
4. Optional: enter **Bot Username** (without `@`). It's used in follow-up messages, e.g. as a `t.me` link.
5. Click **Add Channel**.

</div>

The webhook is registered with Telegram automatically — there's no URL to copy. Until that finishes the channel shows <span class="tj-badge tj-badge--warning">Webhook pending</span>. If it stays pending, open the channel's menu and re-register the webhook; *"Failed to re-register webhook"* usually means the token is wrong.

## Test it

Open your bot in Telegram (`t.me/<your_bot_username>`), tap **Start** and send a message. It should appear in **Conversations** with an AI reply within seconds.

## How leads pick a product

If your workspace has several campaigns, a lead who starts the bot is routed to the right one by:

- a **deep link** — `https://t.me/<bot_username>?start=<deep_link_id>` opens the bot straight into the campaign with that [Deep Link ID](../../nurture-campaigns/basic-info.md#deep-link-id);
- otherwise a **product menu** in the chat, listing each campaign's name and short description.

## Good to know

- **Telegram can't message new leads first.** A bot can only reply to people who started it, so Telegram can't be a campaign's primary follow-up channel for ad leads. Use WhatsApp, Email or SMS for the first message — the lead can continue on Telegram.
- **One bot, one channel.** A bot token can be connected to only one channel across all of [[ app.name ]]. Don't use the same token anywhere else (another platform, another workspace).
- Human agents can get **handoff alerts** from this bot — see [Human agents](../human-agents.md#telegram-chat-id).

!!! danger "Treat the token like a password"
    Anyone with the bot token can send messages as your bot. If it leaks, send `/revoke` to @BotFather, then paste the new token in **Edit Channel**.

[Official docs: Telegram bots](https://core.telegram.org/bots#how-do-i-create-a-bot){ .md-button }
