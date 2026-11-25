# Meta Business Suite lead access

Connecting [Meta Ads](../setup/lead-sources/meta-ads.md) needs no developer app — but Meta Business Suite controls **who** may read a Page's leads. Two settings commonly block leads.

## 1. Your Facebook account needs full control of the Page

The person who clicks **Continue with Facebook** must have full control of the Page — Page admin, or **Leads** access in Meta Business Suite.

<div class="steps" markdown>

1. Open [Meta Business Suite](https://business.facebook.com/) → **Settings**.
2. Under **Accounts → Pages**, select the Page.
3. Check that your account (in **People**) has **full control**, or at least task access including leads.

</div>

If the Page doesn't appear when connecting, click **Edit access** in the Facebook window and select it.

## 2. Lead Access Manager

If the [Lead Ads Testing Tool](https://developers.facebook.com/tools/lead-ads-testing) shows a warning next to **Lead Access Manager Enabled**, Meta only sends leads to apps (CRMs) you've allowed.

<div class="steps" markdown>

1. In Meta Business Suite open **Settings → Integrations → Leads access**.
2. Select the Page.
3. On the **CRMs** tab, click **Assign CRMs** and add the [[ app.name ]] app.
4. On the **People** tab, make sure the person who connected the Page has access.

</div>

Then open the connection in [[ app.name ]] and click **Check again**.

## Business Integrations

If a connection shows **Reconnect**, check Facebook **Settings & privacy → Settings → Business Integrations**. If the [[ app.name ]] integration was removed there, connect again from **Lead Sources**.

[Meta: Lead Ads Testing Tool](https://developers.facebook.com/tools/lead-ads-testing){ .md-button }
