# Google Ads

Google Ads sends each **lead form** submission to a webhook URL that we create for you. Paste the URL and its key into your lead form once.

<span class="tj-path">Setup › **Lead Sources** › **Add Connection** › **Google Ads**</span>

The setup has three steps: **Nurture → Add to Google Ads → Test**.

## 1. Create the webhook

<div class="steps" markdown>

1. Go to **Lead Sources → Add Connection → Google Ads**.
2. Choose the **nurture** new leads should start in. You can't change it later.
3. Click **Create webhook**.
4. Copy the **Webhook URL** and **Key** shown on the next step. You can find them again later on the connection's details page.

</div>

!!! danger "Keep the key private"
    Anyone with the URL and key can send leads to your workspace. If it leaks, regenerate it from the connection's details page — then update it in every lead form.

## 2. Add it to your Google Ads lead form

<div class="steps" markdown>

1. In Google Ads open **Campaigns → Assets → Assets** and filter by **Lead form**.
2. Edit your lead form (or add one to a campaign with the **Leads** goal).
3. Expand **Export leads from Google Ads → Other data integration options**.
4. Under **Webhook integration**, paste the **Webhook URL** and **Key**.
5. Click **Send test data**. Google shows a green message, and our setup page turns green once the test arrives.
6. Save the asset. Repeat for each lead form — **the same URL and key work for all of them**.

</div>

More screenshots and Google's own instructions: [Google Ads lead form webhook](../../third-party/google-ads-webhook.md).

## 3. Test

**Send test data** in Google Ads is the test. The setup page confirms when it arrives. After that, every real submission becomes a lead and gets its first message.

## Not receiving leads?

??? question "Check the basics"
    - The connection is switched on (**Enabled**) on the **Lead Sources** page.
    - The URL and Key were pasted exactly as copied. If you regenerated the key, update it in every lead form.

??? question "Which campaigns send leads?"
    Only **lead form assets** send leads, and they're available on **Search, Performance Max, Video and Demand Gen** campaigns. Website forms and conversions aren't sent here.

[Google Ads: lead form webhook integration](https://support.google.com/google-ads/answer/9423234){ .md-button }
