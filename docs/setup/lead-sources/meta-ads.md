# Meta Ads (Facebook & Instagram lead forms)

Sign in with Facebook, choose your Pages and connect their lead forms. There's **no URL, key or developer app** to set up: we subscribe each Page to new leads for you.

<span class="tj-path">Setup › **Lead Sources** › **Add Connection** › **Meta Ads**</span>

## Before you start

- Use a Facebook account with **full control** of the Facebook Page your lead ads run on — Page admin, or **Leads** access in Meta Business Suite.
- Publish at least one [nurture campaign](../../nurture-campaigns/create-a-campaign.md) to connect forms to.
- Allow pop-ups for [[ app.name ]] in your browser.

## Connect

The setup has three steps: **Connect Facebook → Pages & nurtures → Test**.

<div class="steps" markdown>

1. Go to **Lead Sources → Add Connection → Meta Ads** and click **Continue with Facebook**. If no window opens, allow pop-ups for this site.
2. Log in and select **every Page that runs lead ads** (plus its business, if asked). Leave all requested permissions switched on.
3. Back in [[ app.name ]], tick the Pages to connect. Under each Page you'll see its active lead forms.
4. For every form you want to connect, choose a **nurture**, or leave it on **Don't connect**. Each Page needs at least one connected form, and **a form's nurture can't be changed later**.
5. Check the counter under the Pages — your plan sets how many lead forms can be connected in this workspace.
6. Click **Connect**.

</div>

Each Page becomes its own connection and shows <span class="tj-badge">Setting up</span> while we subscribe it to new leads and check its permissions. It switches to <span class="tj-badge tj-badge--success">Active</span> within a few seconds, or to <span class="tj-badge tj-badge--danger">Needs attention</span> with the reason.

## Test the connection

<div class="steps" markdown>

1. Open Meta's [Lead Ads Testing Tool](https://developers.facebook.com/tools/lead-ads-testing).
2. Pick your Page and a connected form, and click **Create lead**.
3. The lead appears in **Leads** and gets its first message. The setup page shows **Lead received — you're all set**.

</div>

A real lead confirms the setup just as well.

## The connection page

Open a Page's connection from **Lead Sources** to see:

- **Page** and **Page ID**, and three checks: *Page is subscribed to new leads*, *All Facebook permissions granted*, and *Leads access in Meta Business Suite*.
- The **Lead forms** table — each form's nurture, or **Not connected · connect…**.
- **Check again** — re-subscribes the Page and lists lead forms created since you connected.
- Message status for every imported lead — see [Managing connections](managing-connections.md).

## New lead forms

- **Created a new Instant Form in Meta?** It isn't connected automatically. Open the Page's connection, click **Check again** to list it, then choose its nurture in the **Lead forms** table.
- **Leads that arrive before you connect a form aren't lost.** They wait (shown as *waiting* on the form and in the **Waiting** metric) and are imported as soon as you connect the form. You'll also get an email about it. Connect within **90 days** — Meta keeps leads for 90 days.
- Forms you leave on **Don't connect**, and archived forms, never bring leads in and don't count toward your plan.

## Good to know

- **Each Page can be connected once per workspace.** Connecting it again only refreshes its access. The same Page can be connected in other workspaces, and each one receives the leads of the forms it connected.
- **A form's nurture can't be changed.** To use a different one, delete the connection and connect the Page again.
- **Facebook access lasts about 60 days.** We renew it automatically, so you only need to reconnect if Facebook revokes it.
- **Disabling or deleting a connection** stops new leads from that Page and cancels pending first messages.
- Only **Instant Forms** (lead forms) on Facebook or Instagram ads send leads. Website forms aren't sent to us.

## Not receiving leads?

??? question "Check the basics"
    - The connection is **Active** and switched on (**Enabled**) on the **Lead Sources** page. **Needs attention** shows what's wrong, e.g. a missing permission.
    - Open the connection and click **Check again**.
    - The form is connected: the **Lead forms** table shows its nurture. Leads from forms that aren't connected wait until you connect them.

??? question "My Page isn't in the list"
    Connect again and click **Edit access** in the Facebook window to select it. Your account needs full control of the Page, either directly or through its Business portfolio.

??? question "Lead Access Manager warning in the testing tool"
    If the Lead Ads Testing Tool shows a warning next to **Lead Access Manager Enabled**, Meta only sends leads to apps you've allowed. Follow [Meta Business Suite lead access](../../third-party/meta-lead-access.md).

??? question "The connection shows Reconnect"
    Click it and sign in again. This happens when a Facebook password changes, access is removed, or the Page is removed under Facebook **Settings → Business Integrations**.

[Meta: Lead Ads Testing Tool](https://developers.facebook.com/tools/lead-ads-testing){ .md-button }
