# Google Sheets

Pull new rows from a Google Sheet into a nurture campaign — great for leads collected via forms, events or manual entry. New rows are picked up within seconds of being added.

<span class="tj-path">Setup › **Lead Sources** › **Add Connection** › **Google Sheets**</span>

The setup has six steps: **Connect → Choose sheet → Map columns → Nurture → Review message → Importing**.

## Connect a sheet

<div class="steps" markdown>

1. **Connect** — sign in with Google and grant read access to the sheet you want to pull leads from. Allow pop-ups if no window opens.
2. **Choose sheet** — paste the **Google Sheets URL** (`https://docs.google.com/spreadsheets/d/...`) and the **Tab name** (e.g. `Sheet1`). Check the **Preview columns**.
3. **Map columns** — tell us which column holds the **Name**, **Email** and **Phone**. Map at least an Email or a Phone column so leads can be reached. Rows with invalid values are flagged; rows with at least one valid email or phone are imported.
4. **Nurture** — choose the nurture campaign and when to send the **initial greeting** (see [below](#greeting-timing)). If phone numbers have no country code, pick a **country** to add.
5. **Review message** — the AI drafts the first message. Edit the subject and body, insert [variables](../channels/message-templates.md#spreadsheet-sheets-greetings) and check the preview.
6. **Importing** — existing rows are imported and greeted according to your choice. Progress is shown live.

</div>

## Greeting timing

| Option | What happens |
|---|---|
| **Immediately** | Send the greeting as soon as each lead is imported. |
| **Later** | Schedule the greeting for a specific date and time. |
| **Ignore** | Import the leads silently — no greeting is sent. |

## Phone numbers without a country code

When a phone number has no country code:

1. we add the country you selected on the **Nurture** step;
2. if none is selected, we use the nurture's default country (if it has one);
3. if neither is set, the number can't be completed and is skipped.

## After setup

- **Only new rows are imported.** A row whose email/phone/name hasn't been seen before for this connection becomes a lead. **Editing or deleting** existing rows doesn't change leads already captured.
- Use **Refresh** on the connection to pull the sheet again right away.
- If Google access is revoked, the connection shows <span class="tj-badge tj-badge--warning">Reconnect required</span>. Click **Reconnect** and sign in again — you'll also get an email.

!!! tip "Keep the header row stable"
    Renaming or moving the mapped columns breaks the mapping. Add new columns to the right instead.
