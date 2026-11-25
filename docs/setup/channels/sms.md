# SMS (Twilio)

SMS runs on **Twilio**. You need a Twilio account and an SMS-capable phone number. Twilio forwards incoming texts to a webhook URL that we generate — you paste it into Twilio once.

<span class="tj-path">Setup › **Channels** › **Add Channel** › **SMS**</span>

## Before you start

Get your **Account SID**, **Auth Token** and an SMS-capable number from Twilio — see [Twilio](../../third-party/twilio.md).

## Add the channel

<div class="steps" markdown>

1. In **Channels**, click **Add Channel** and choose **SMS**.
2. Enter a **Connection Name**.
3. Paste the **Account SID** and **Auth Token** (Twilio Console home → **Account Info**).
4. Enter **Phone Number** in international format, e.g. `+14155550123`.
5. *(Optional)* Add an [SMS template](#sms-template-optional) for the first message to new leads.
6. Click **Add Channel** and make sure **Activate channel** is on. Incoming texts are only accepted while the channel is active.

</div>

## Connect the webhook in Twilio

<div class="steps" markdown>

1. Copy the **Webhook URL** — shown after saving, and later via the :lucide-copy: icon on the channel's row or in **Edit Channel**.
2. In Twilio go to **Phone Numbers → Manage → Active numbers** and click your number.
3. In the **Messaging configuration** section, next to **A message comes in**, choose **Webhook**, paste the URL, set the method to **HTTP POST**, and click **Save**.

</div>

Leave Twilio's **Status callback URL** empty — only the "A message comes in" webhook is needed.

## Test it

Send a text to your Twilio number from your own phone. It should appear in **Conversations** within a few seconds.

## SMS template (optional)

Some countries and carriers only deliver business texts that match a registered template (for example **DLT** in India). Without a template, the first SMS to each new lead is written by the AI.

To use a Twilio Content Template for the first message, see [Message templates → SMS templates](message-templates.md#sms-templates). Replies to leads who text back stay AI-written.

## Good to know

- **Trial accounts** can only text numbers you've verified in the Twilio Console (**Verified Caller IDs**).
- **Registration rules** — some countries require registration before texts are delivered (A2P 10DLC for US numbers, DLT in India). Check Twilio's regulatory guidance for your country.
- Every message (including agent alerts) is billed by Twilio.
- SMS to leads include their personal [web chat link](../../engage/web-chat.md).

## Troubleshooting

??? question "Texts never show up in Conversations"
    Check that the channel is **active**, the URL was pasted exactly as copied, and the method is **POST**. Twilio's **Monitor → Logs → Errors** shows what Twilio received back.

??? question "Outbound texts fail"
    On a trial account, verify the recipient number first. Otherwise check the number's SMS capability for that country, and any registration requirement (10DLC, DLT).

[Official docs: Twilio incoming SMS webhook](https://www.twilio.com/docs/messaging/guides/webhook-request){ .md-button }
