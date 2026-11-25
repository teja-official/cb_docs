# Google Ads lead form webhook

Google Ads sends each lead form submission to a webhook. [[ app.name ]] gives you the **Webhook URL** and **Key** when you [create the connection](../setup/lead-sources/google-ads.md).

## Requirements

- A Google Ads campaign type that supports **lead form assets**: **Search**, **Performance Max**, **Video** or **Demand Gen**, with the **Leads** goal.
- Your Google Ads account must meet Google's lead form policy requirements (a privacy policy URL, and in some regions a good account history).

## Add the webhook to a lead form

<div class="steps" markdown>

1. In Google Ads open **Campaigns → Assets → Assets**.
2. Filter by **Lead form** and edit your lead form — or create one: **+ → Lead form**, then attach it to a campaign.
3. Scroll to **Export leads from Google Ads** and expand **Other data integration options**.
4. Under **Webhook integration**:
    - **Webhook URL** — paste the URL from [[ app.name ]].
    - **Key** — paste the key from [[ app.name ]].
5. Click **Send test data**. Google shows a green confirmation, and the [[ app.name ]] setup page turns green when the test arrives.
6. **Save** the asset.

</div>

Repeat for every lead form. The same URL and key work for all forms in the connection.

## Good to know

- Google only sends **new** submissions after the webhook is saved. To bring in older leads, download them from Google Ads (**Lead form → Download leads**) and use a [spreadsheet upload](../setup/lead-sources/spreadsheet-upload.md).
- Regenerating the key in [[ app.name ]] breaks every form still using the old one — update them all.
- Ask for a **phone number or email** in the form — the AI needs at least one to reach the lead.

[Google Ads Help: lead form webhook integration](https://support.google.com/google-ads/answer/9423234){ .md-button }
