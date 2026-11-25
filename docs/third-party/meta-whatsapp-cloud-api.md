# Meta app for WhatsApp

To connect WhatsApp you need a Meta developer app with the **WhatsApp** product, a phone number, and a permanent access token. Once you have them, add the channel in [[ app.name ]] — see [WhatsApp](../setup/channels/whatsapp.md).

**Time needed:** about 15 minutes (plus template approval, usually minutes to a few hours).

## What you'll collect

- [ ] **Phone Number ID**
- [ ] **WhatsApp Business Account ID** (WABA ID)
- [ ] **Access Token** (System User, permanent)
- [ ] *(Optional)* **Display Phone Number**
- [ ] *(For messaging new leads)* an **approved message template** name

## 1. Create the app

<div class="steps" markdown>

1. Go to [developers.facebook.com](https://developers.facebook.com/) → **My Apps** → **Create App**.
2. Choose the **Business** type.
3. Add the **WhatsApp** product to the app.
4. Link (or create) a **Business portfolio**.

</div>

## 2. Get the IDs

<div class="steps" markdown>

1. Open **WhatsApp → API Setup**.
2. Under **From**, copy the **Phone Number ID**. The number shown next to it is your **Display Phone Number**.
3. On the same page, copy the **WhatsApp Business Account ID**.

</div>

To use your own business number instead of Meta's test number, add it under **WhatsApp → API Setup → Add phone number** and verify it.

## 3. Create a permanent access token

The token on **API Setup** expires in 24 hours — use it for testing only.

<div class="steps" markdown>

1. Open **Meta Business Settings → Users → System Users**.
2. **Add** a system user (Admin role).
3. **Assign assets**: your app, and your WhatsApp account (full control).
4. Click **Generate Token**, pick your app, and select the permissions **`whatsapp_business_messaging`** and **`whatsapp_business_management`**.
5. Copy the token — it's shown only once. Paste it into **Access Token** in [[ app.name ]].

</div>

## 4. Webhook settings (after adding the channel)

With the WhatsApp Business Account ID, [[ app.name ]] connects the webhook automatically. Two settings stay manual:

<div class="steps" markdown>

1. **WhatsApp → Configuration → Webhook fields** → **Manage** → subscribe to **messages**.
2. Switch the app to **Live** mode (toggle at the top of the App Dashboard). Live mode may require a privacy policy URL and app icon in **App settings → Basic**.

</div>

Setting the webhook up by hand instead? See [WhatsApp → Without a WhatsApp Business Account ID](../setup/channels/whatsapp.md#without-a-whatsapp-business-account-id).

## Create a message template

Needed to send the **first** message to leads from ads, and follow-ups to leads who haven't replied.

<div class="steps" markdown>

1. Open [WhatsApp Manager → Message templates](https://business.facebook.com/wa/manage/message-templates/) → **Create template**.
2. Category: **Marketing** (or **Utility** for transactional messages). Pick a name, e.g. `welcome_message`, and a language.
3. Write the **body**. Use variables for personal details, e.g.

    ```text
    Hi {{1}}, thanks for your interest in {{2}}! Can I answer any questions?
    ```

    Use numbered (`{{1}}`) **or** named (`{{name}}`) variables — not both — and only in the **body**.

4. Submit and wait for status **Approved**.
5. In [[ app.name ]], enter the name in **WhatsApp Template ID**, click **Fetch from Meta** and map each variable. See [Message templates](../setup/channels/message-templates.md#whatsapp-templates).

</div>

!!! tip "Create a follow-up template too"
    A second template, worded as a gentle nudge (*"Hi {{1}}, just checking in…"*), makes no-reply follow-ups feel natural. Add it as the **Follow-up Template ID**.

[Official docs: WhatsApp Cloud API — Get started](https://developers.facebook.com/docs/whatsapp/cloud-api/get-started){ .md-button }
