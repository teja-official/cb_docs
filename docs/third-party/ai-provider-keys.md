# AI provider API keys

[[ app.name ]] uses **your own** AI provider key, so usage is billed to your provider account. Add it in [AI models](../setup/ai-models.md) and click **Test**.

=== "OpenAI"

    <div class="steps" markdown>

    1. Sign in at [platform.openai.com](https://platform.openai.com/).
    2. Go to **Dashboard → API keys → Create new secret key**.
    3. Copy the key immediately (it's only shown once) and paste it into **API Key**.
    4. Make sure billing is set up under **Settings → Billing** — keys on a $0-balance account will fail.

    </div>

    [OpenAI API keys](https://platform.openai.com/api-keys){ .md-button }

=== "Google Gemini"

    <div class="steps" markdown>

    1. Go to [aistudio.google.com](https://aistudio.google.com/) and sign in with a Google account.
    2. Click **Get API key → Create API key**, choosing (or creating) a Google Cloud project.
    3. Copy the generated key and paste it into **API Key**.

    </div>

    [Google AI Studio](https://aistudio.google.com/app/apikey){ .md-button }

=== "Anthropic Claude"

    <div class="steps" markdown>

    1. Sign in at [console.anthropic.com](https://console.anthropic.com/).
    2. Go to **Settings → API Keys → Create Key**.
    3. Copy the key and paste it into **API Key**.
    4. Add credit under **Settings → Billing** if this is a new account — keys with no credit will fail requests.

    </div>

    [Anthropic Console](https://console.anthropic.com/settings/keys){ .md-button }

=== "OpenRouter"

    <div class="steps" markdown>

    1. Sign in at [openrouter.ai](https://openrouter.ai/).
    2. Go to **Settings → Keys → Create Key**.
    3. Copy the key and paste it into **API Key**.
    4. Add credit under **Settings → Credits** — pay-as-you-go across every model OpenRouter offers.

    </div>

    One key gives access to models from OpenAI, Anthropic, Google, Meta and more through a single API — handy for comparing providers without juggling separate keys.

    [OpenRouter Keys](https://openrouter.ai/settings/keys){ .md-button }

=== "Others"

    [[ app.name ]] also supports **Cohere**, **Perplexity**, **DeepSeek**, **Grok (xAI)**, **Groq**, **Mistral** and **Ollama**. Create an API key in that provider's console (usually under *API keys*), make sure the account has credit, and paste it into **API Key**.

## Choosing a model

- **Start with a fast, inexpensive model** from a major provider — conversations are short, and speed matters on chat apps.
- Use **Test Chat** in the [knowledge base step](../nurture-campaigns/knowledge-base.md#test-chat) to compare answers before going live.
- Watch **Tokens (I/O)** on the AI model card and your provider's usage page.

## Protect your key

- Set a **monthly spend limit** in your provider's console.
- Create a **separate key** just for [[ app.name ]], so you can revoke it without affecting other tools.
- If a key leaks, revoke it at the provider, create a new one, and paste it in **AI Models → Edit**.
