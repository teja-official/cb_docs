# Message templates

Some providers only deliver a business's **first** message to a person if it matches a template they've approved. [[ app.name ]] supports templates for **WhatsApp** (required to message new leads) and **SMS** (optional, for countries that require registered templates).

You add templates inside the channel: **Channels → Add Channel / Edit Channel**.

## WhatsApp templates

### When you need one

- Leads who **message you first** can be answered with normal messages for 24 hours after their last message — no template needed.
- To **message a lead first** (leads from Meta or Google ads), or after that 24-hour window, Meta requires an **approved template**.
- WhatsApp can only be chosen as a campaign's **primary follow-up channel** once a greeting template is saved.

### Add a greeting template

<div class="steps" markdown>

1. Create the template in [WhatsApp Manager → Message templates](https://business.facebook.com/wa/manage/message-templates/) and wait until its status is **Approved**. See [Meta app for WhatsApp → Create a message template](../../third-party/meta-whatsapp-cloud-api.md#create-a-message-template).
2. In the WhatsApp channel, enter the template's name (e.g. `welcome_message`) in **WhatsApp Template ID**.
3. Click **Fetch from Meta** (needs the WhatsApp Business Account ID). We read the template's **language** and **variables** for you.
4. For each variable — `{{1}}`, `{{2}}` or a named one like `{{name}}` — choose what to send:
    - **Lead's full name**
    - **Lead's first name**
    - **Product name**
    - **Business name**
    - or your own text.
5. If the template exists in more than one language, pick the right **Template language**.
6. Save the channel.

</div>

On save we check the template with Meta: it must exist, be **Approved**, match the language, and every variable must have a value. Without a Business Account ID we can't check it, so enter the language code (e.g. `en_US`) yourself.

### Follow-up template

Leads who don't reply to the greeting get a few [automatic follow-ups](../../nurture-campaigns/follow-ups.md#no-reply-follow-ups). WhatsApp still only allows approved templates until the lead replies, so the follow-ups need a template too. Under **Follow-ups to leads who don't reply**, either:

- add a separate **Follow-up Template ID** the same way (recommended), or
- tick **Reuse this greeting template for follow-ups** — each follow-up resends the greeting, so the lead sees the same text again.

With neither, WhatsApp follow-ups are skipped.

### Rules

- A template uses **numbered** variables (`{{1}}`) **or named** variables (`{{name}}`), never both.
- Variables in the **header or buttons** aren't filled automatically — use body variables only.
- If the template has no variables, leave the variables list empty.
- *"Template variables need a template"* — you added variables but no template ID. Enter the ID or remove the variables.

## SMS templates

Some countries and carriers only deliver business texts that match a registered template (for example DLT in India). Without a template, the first SMS to each new lead is written by the AI.

<div class="steps" markdown>

1. In Twilio go to **Messaging → Content Template Builder → Create new**, choose the **Text** type and write your message. Use `{{1}}`, `{{2}}` (or named ones like `{{name}}`) where the lead's details should go.
2. Copy the template's **Content SID** — it starts with `HX`.
3. In the SMS channel, paste it into **SMS Template ID**.
4. Click **Fetch from Twilio**. We read the template's text and variables using the Account SID and Auth Token above.
5. For each variable, choose what to send: the lead's name, the product name, your business name, or your own text.
6. Save the channel. We check with Twilio that the template exists in your account and that every variable has a value.

</div>

From then on, the first SMS to every new lead uses this template. Replies to leads who text back stay AI-written.

!!! note "Variable rules for SMS"
    Numbered or named variables, never both. Numbered ones must run 1, 2, 3… without gaps.

## Spreadsheet & Sheets greetings

Leads imported from [Google Sheets](../lead-sources/google-sheets.md) or a [spreadsheet upload](../lead-sources/spreadsheet-upload.md) on Email or SMS get a greeting you review during setup. It can use these variables:

| Variable | Filled with |
|---|---|
| `{{lead_name}}` | Lead's full name |
| `{{first_name}}` | Lead's first name |
| `{{email}}` | Lead's email address |
| `{{phone}}` | Lead's phone number |
| `{{product_name}}` | Nurture / product name |
| `{{business_name}}` | Your workspace name |
| `{{chat_link}}` | The lead's [web chat link](../../engage/web-chat.md) (added automatically if you leave it out) |

Columns from your sheet can be used as variables too.
