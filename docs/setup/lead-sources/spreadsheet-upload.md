# Spreadsheet upload

Upload a **CSV or Excel** file of leads and the AI greets them on your campaign's channel. The column mapping is saved, so you can upload a fresh export the same way next time.

<span class="tj-path">Setup › **Lead Sources** › **Add Connection** › **Spreadsheet Upload**</span>

The setup has five steps: **Upload → Map columns → Nurture & schedule → Review message → Importing**.

## Import a file

<div class="steps" markdown>

1. **Upload** — drop or choose a `.csv` or `.xlsx` file (up to **10,000 rows** per import). CSV files are read instantly in your browser; Excel files are processed on the server. You'll see how many rows are ready.
2. **Map columns** — choose the columns for **Name**, **Email** and **Phone**. Map at least an Email or a Phone. Invalid values are highlighted and won't be used; rows with at least one valid email or phone are imported.
3. **Nurture & schedule** — pick the nurture campaign, the **initial greeting** timing (**Immediately**, **Later** at a date and time, or **Ignore**), and a default **country** for phone numbers without a country code.
4. **Review message** — edit the AI-drafted first message and check the preview, rendered with the first lead in your file. See [variables](../channels/message-templates.md#spreadsheet-sheets-greetings).
5. **Importing** — watch the progress. Large files are imported in chunks; you can leave the page.

</div>

## File tips

- Put column headers in the **first row**.
- Phone numbers work with or without a country code, e.g. `+91 98765 43210`.
- Extra columns (city, budget…) are kept on the lead and can be used as message variables.
- Duplicate leads already in your workspace are skipped.

!!! note "Plan limit"
    Your plan sets how many spreadsheet imports you can create.
