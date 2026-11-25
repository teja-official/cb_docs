# AI models

An **AI model** config pairs an AI provider (OpenAI, Anthropic, etc.) with a model and your API key. It's the "brain" that reads your knowledge base and writes every message to your leads. You bring your own key, so AI usage is billed by your provider, not by [[ app.name ]].

<span class="tj-path">Setup › **AI Models**</span>

## Supported providers

| Service | Where to get a key |
|---|---|
| **OpenAI ChatGPT** | [platform.openai.com](https://platform.openai.com/api-keys) |
| **Google Gemini** | [Google AI Studio](https://aistudio.google.com/app/apikey) |
| **Anthropic Claude** | [console.anthropic.com](https://console.anthropic.com/settings/keys) |
| **OpenRouter** | [openrouter.ai](https://openrouter.ai/settings/keys) — one key for models from many providers |
| Cohere, Perplexity, DeepSeek, Grok (xAI), Groq, Mistral, Ollama | Your provider's console |

Step-by-step instructions for each provider are in [AI provider API keys](../third-party/ai-provider-keys.md).

## Add an AI model

<div class="steps" markdown>

1. Go to **AI Models** and click **Add Config**.
2. **Name** — something you'll recognise, e.g. *GPT-4o Production*.
3. **Service** — choose the provider.
4. **Model** — pick a model from the list. Models that are being retired show a warning and an end date; deprecated ones can't be selected. Choose **Custom...** to type a model name that isn't listed.
5. **API Key** — paste your key. Click **Where do I find this?** for the provider's steps.
6. Click **Test**. A green :lucide-shield-check: message means the key works with that model; red tells you what's wrong.
7. Turn on **Set as Active** if this should be the model your campaigns use.
8. Click **Add**.

</div>

!!! note "Your key is safe"
    API keys are encrypted before they're stored and are never shown again. When you edit a config, leave **API Key** blank to keep the existing key.

## Active models

- A campaign uses the AI model chosen in its [AI & channels step](../nurture-campaigns/ai-and-channels.md#ai-model). Only **active** models can be chosen.
- If a campaign's model is deactivated, the campaign falls back to another active model — or **stops responding** if there's none.
- Click **Set Active** or **Deactivate** on a card to change it. If your plan allows one active model, activating another switches over to it.

## Token usage

Each card shows **Tokens (I/O)** — input and output tokens used by this config. The admin dashboard shows the workspace total under **AI usage (tokens)**. Your provider's console has the exact bill.

!!! tip "Keep costs down"
    A longer knowledge base means more tokens per reply. Keep it specific and factual — see [Knowledge base](../nurture-campaigns/knowledge-base.md#writing-tips).

## Edit or delete

- :lucide-pencil: **Edit** — change the name, model or key, or toggle **Set as Active**.
- :lucide-trash-2: **Delete** — removes the config permanently. Campaigns using it fall back to another active model.

## Troubleshooting

??? question "Test fails with an authentication error"
    The key is wrong, revoked, or belongs to a different provider than the **Service** you chose. Create a fresh key and paste it again.

??? question "Test fails with a billing or quota error"
    Most providers reject keys on accounts with no credit. Add billing or credit in your provider's console (OpenAI: *Settings → Billing*; Anthropic: *Settings → Billing*; OpenRouter: *Settings → Credits*).

??? question "The AI stopped replying to leads"
    Check that at least one AI model is **Active**, that your provider account still has credit, and look for an error alert email (turn these on in [Account settings](../account/account-settings.md#emails)).
