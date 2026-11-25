# Twilio

The SMS channel runs on your own **Twilio** account. Then add the channel in [[ app.name ]]: see [SMS (Twilio)](../setup/channels/sms.md).

## 1. Get your credentials

<div class="steps" markdown>

1. Sign up or sign in at [console.twilio.com](https://console.twilio.com/).
2. On the Console home page, under **Account Info**, copy the **Account SID**.
3. Click the eye icon to reveal the **Auth Token**, and copy it.

</div>

## 2. Get a phone number

<div class="steps" markdown>

1. Go to **Phone Numbers → Manage → Buy a number**.
2. Filter by country and tick **SMS** capability.
3. Buy the number (or use one you already own).
4. Enter it in [[ app.name ]] in international format, e.g. `+14155550123`.

</div>

## 3. Point incoming texts at [[ app.name ]]

After adding the channel in [[ app.name ]], copy its **Webhook URL**, then:

<div class="steps" markdown>

1. Go to **Phone Numbers → Manage → Active numbers** and click your number.
2. In **Messaging configuration**, next to **A message comes in**, choose **Webhook**.
3. Paste the URL and set the method to **HTTP POST**.
4. Click **Save**.

</div>

Leave **Status callback URL** empty.

## 4. *(Optional)* Create a Content Template

For countries or carriers that require registered templates:

<div class="steps" markdown>

1. Go to **Messaging → Content Template Builder → Create new**.
2. Choose the **Text** type and write the message, using `{{1}}`, `{{2}}` (or named variables) for the lead's details.
3. Copy the **Content SID** (starts with `HX`) into **SMS Template ID** in [[ app.name ]] and click **Fetch from Twilio**.

</div>

## Compliance and limits

- **Trial accounts** can only text numbers added under **Phone Numbers → Verified Caller IDs**, and prefix messages with a trial notice. Upgrade the account for real use.
- **United States**: business texting to US numbers needs **A2P 10DLC** registration (or a verified toll-free number).
- **India**: business SMS needs **DLT** registration of your sender ID and templates.
- Other countries have their own rules — see Twilio's regulatory guidance before sending.
- Twilio bills every message, including [agent alerts](../setup/human-agents.md#sms).

## Debugging

Twilio's **Monitor → Logs → Errors** and **Monitor → Logs → Messaging** show every message and what our webhook returned.

[Official docs: Twilio incoming SMS webhook](https://www.twilio.com/docs/messaging/guides/webhook-request){ .md-button }
