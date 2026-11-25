# Telegram BotFather

Telegram bots are created by chatting with **@BotFather** — no developer account needed. Then add the channel in [[ app.name ]]: see [Telegram](../setup/channels/telegram.md).

## Create a bot

<div class="steps" markdown>

1. Open Telegram and start a chat with [@BotFather](https://t.me/BotFather).
2. Send `/newbot`.
3. Send a **display name** (e.g. *Acme Sales*).
4. Send a **username** — it must end in `bot` (e.g. `acme_sales_bot`).
5. BotFather replies with a **token** like `123456:ABC-DEF1234ghIkl-zyx57W2v1u123ew11`. Copy it.

</div>

Paste the token into **Bot Token** and the username (without `@`) into **Bot Username** in [[ app.name ]].

## Make it look professional *(optional)*

Send these commands to @BotFather and pick your bot:

| Command | Sets |
|---|---|
| `/setuserpic` | The bot's profile photo — use your logo. |
| `/setdescription` | Text shown before someone taps **Start**. |
| `/setabouttext` | The bot's profile bio. |

## If the token leaks

Send `/revoke` to @BotFather and choose the bot to get a new token. Paste the new token in **Channels → Edit Channel**.

!!! warning "One bot per channel"
    A bot token can only be connected to one [[ app.name ]] channel, and shouldn't be used by any other tool at the same time — Telegram sends messages to only one webhook per bot.

## Agent alert Chat IDs

For [agent handoff alerts](../setup/human-agents.md#telegram-chat-id), each agent taps **Start** in your bot, then gets their numeric ID from [@userinfobot](https://t.me/userinfobot).

[Official docs: Telegram bots](https://core.telegram.org/bots#how-do-i-create-a-bot){ .md-button }
