# Managing connections

Every lead source you connect appears on **Lead Sources** as a connection.

<span class="tj-path">Setup › **Lead Sources**</span>

## Connection status

| Status | Meaning | What to do |
|---|---|---|
| <span class="tj-badge tj-badge--success">Active</span> | Working and receiving leads. | — |
| <span class="tj-badge">Disconnected</span> / <span class="tj-badge">Setting up</span> | Not connected yet, or still being set up. | Wait a few seconds, or open it and finish setup. |
| <span class="tj-badge tj-badge--danger">Error</span> / <span class="tj-badge tj-badge--danger">Needs attention</span> | Something's wrong — the reason is shown. | Fix the reason, then **Check again**. |
| <span class="tj-badge tj-badge--warning">Expired</span> / <span class="tj-badge tj-badge--warning">Reconnect required</span> | Access to Facebook / Google was lost. | Click **Reconnect** and sign in again. |

Filter the list by **Category** and **Status**, or search by integration, account or label. You can give a connection your own **label** to tell them apart.

## Enable, disable, delete

- **Enabled** switch — turn a connection off to stop new leads from it. Pending first messages are cancelled.
- **Delete** — removes the connection. By default **Also delete the leads this connection imported** is ticked; untick it to keep them.

## Message status

Open a connection to see every lead it brought in and what happened to its first message:

| Status | Meaning |
|---|---|
| **Queued** | Waiting to be sent. |
| **Sending** | Being sent now. |
| **Sent** / **Delivered** | Out to the lead (delivered when the channel confirms it). |
| **Responded** | The lead replied. |
| **Failed** | Sending failed — the reason is shown. |
| **Skipped** | Not sent (e.g. no reachable contact, greeting set to *Ignore*). |
| **No message** | No first message for this lead. |

Filter by status and channel, or search by name, email or phone.

## Resend failed messages

Fix the cause first (an inactive channel, a missing WhatsApp template, an AI key with no credit…), then:

- select leads and click **Resend selected**, or
- click **Resend all failed** to queue every failed message for this connection again.

Messages that already went out are **never sent twice**.

## Reconnect emails

When Facebook or Google access needs renewing, the workspace owner gets an email and the connection shows **Reconnect**. Meta access is renewed automatically about every 60 days; you only need to reconnect if Facebook revokes it.
