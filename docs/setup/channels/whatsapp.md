# WhatsApp

Connect a WhatsApp Business number through **Meta's WhatsApp Cloud API**. Add your WhatsApp Business Account ID and [[ app.name ]] connects the webhook in Meta for you; two settings in Meta stay manual.

<span class="tj-path">Setup › **Channels** › **Add Channel** › **WhatsApp**</span>

## Before you start

You need a Meta developer app with the WhatsApp product and a permanent access token. If you don't have them yet, follow [Meta app for WhatsApp](../../third-party/meta-whatsapp-cloud-api.md) first — it takes about 15 minutes.

| You'll need | Where to find it in Meta |
|---|---|
| **Phone Number ID** | WhatsApp → API Setup, under **From** |
| **Access Token** | A **System User** token with `whatsapp_business_messaging` and `whatsapp_business_management` |
| **WhatsApp Business Account ID** *(recommended)* | WhatsApp → API Setup, or Business Settings → Accounts → WhatsApp accounts |
| **Display Phone Number** *(optional)* | The number shown next to the Phone Number ID |

!!! warning "Don't use the temporary token"
    The token on Meta's **API Setup** page expires after 24 hours. Use it for testing only — for real use, generate a System User token.

## Add the channel

<div class="steps" markdown>

1. In **Channels**, click **Add Channel** and choose **WhatsApp**.
2. Enter a **Connection Name**.
3. Paste the **Access Token** and **Phone Number ID**.
4. Paste the **WhatsApp Business Account ID**. It's optional, but with it we connect the webhook for you and check your message template.
5. Optional: **Display Phone Number** — the number customers see on WhatsApp, used in follow-up messages (e.g. a "Chat on WhatsApp" link).
6. Leave **Verify Token** blank — we create one.
7. *(Recommended)* Add a [greeting template](#message-templates) now, so this channel can message new leads first.
8. Click **Add Channel**.

</div>

The next screen shows **Webhook connected in Meta** once we've subscribed your app to the WhatsApp Business Account and pointed this number's webhook at us. If it fails, it says why and has a **Try again** button. If it says *Still connecting*, open the channel again in a minute.

## Finish in Meta (two manual steps)

Meta has no API for these, so you do them once per app:

<div class="steps" markdown>

1. **Subscribe to "messages".** In Meta, open **WhatsApp → Configuration → Webhook fields**, click **Manage**, and subscribe to **messages**.
2. **Switch the app to Live mode** (toggle at the top of the App Dashboard). Meta doesn't send some webhooks while an app is in Development mode.

</div>

Then make sure the channel is **active** in [[ app.name ]] — messages are only accepted while it's on.

## Test it

From your own phone, send a WhatsApp text to the business number. It should appear in **Conversations**, and the AI should reply, within a few seconds. No template is needed for this — you messaged first.

## Without a WhatsApp Business Account ID

If you'd rather set the webhook up by hand:

<div class="steps" markdown>

1. After saving, copy the **Webhook URL** and **Verify Token** from the next screen (later: the :lucide-copy: icon on the channel's row, or **Edit Channel**).
2. In Meta open **WhatsApp → Configuration → Webhook → Edit**. Paste the URL as **Callback URL**, paste the **Verify Token**, and click **Verify and save**.
3. Subscribe your app to the WhatsApp Business Account once:

    ```http
    POST https://graph.facebook.com/v24.0/<WABA_ID>/subscribed_apps
    Authorization: Bearer <ACCESS_TOKEN>
    ```

    Without this, Meta's **Test** button works but real messages don't arrive.

4. Do the two manual steps above: subscribe to **messages** and switch the app to **Live** mode.

</div>

## Message templates

WhatsApp only lets businesses send free-form messages within **24 hours of the lead's last message**. Outside that window — including the very first message to a lead from an ad — Meta requires an **approved template**.

| Template | When it's used | Required? |
|---|---|---|
| **Greeting template** (WhatsApp Template ID) | First message to new leads (e.g. from Meta or Google Ads) | Yes, to use WhatsApp as a campaign's **primary follow-up channel** |
| **Follow-up template** | Automatic follow-ups to leads who didn't reply to the greeting | Yes, if those follow-ups should go out on WhatsApp — or tick **Reuse this greeting template for follow-ups** |

Full instructions — creating the template in WhatsApp Manager, **Fetch from Meta**, filling variables, languages — are in [Message templates](message-templates.md#whatsapp-templates).

## Troubleshooting

??? question "Not receiving messages?"
    - Check the channel is **active** — inactive channels reject Meta's webhooks.
    - Open **Edit Channel** and check the webhook status. If it failed, fix the reason shown and click **Try again**.
    - Check **messages** is subscribed under **WhatsApp → Configuration → Webhook fields**.
    - Switch your Meta app to **Live** mode.
    - Only text messages and button taps are handled today; images, voice notes and reactions are ignored.

??? question "New leads don't get a WhatsApp greeting"
    The channel needs a saved, **Approved** greeting template, and the campaign's primary follow-up channel must be this WhatsApp channel. Check **Lead Sources → (connection) → Message status** for failed messages and the reason.

??? question "The access token stopped working"
    You probably used the 24-hour token from API Setup. Generate a System User token (see [Meta app for WhatsApp](../../third-party/meta-whatsapp-cloud-api.md#3-create-a-permanent-access-token)) and paste it in **Edit Channel**.

[Official docs: Meta WhatsApp Cloud API](https://developers.facebook.com/docs/whatsapp/cloud-api/get-started){ .md-button }
