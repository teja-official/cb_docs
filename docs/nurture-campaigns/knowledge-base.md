# Step 3: Knowledge base

The AI only knows what you tell it here — it never guesses about your product. Fill in what you know, press **Process KB**, then try it in **Test Chat**.

## The three tabs

| Tab | What goes in it |
|---|---|
| **Knowledge Blocks** | Paragraphs about your product, organised by topic. |
| **Q&A** | Exact questions leads ask, with the answer you want the AI to give. |
| **Instructions** | How the AI should talk (up to 500 characters). |

## Knowledge blocks

Ten topics are ready to fill in. Select a block to start writing; leave the ones you don't need empty.

| Block | What to write |
|---|---|
| **Company Overview** | Who you are, what you do, your mission, founding story, team size, and what makes you different. |
| **Product / Service Overview** | Your main offering. What problem does it solve? Who is it for? |
| **Features** | Key features and capabilities — be specific about what each does. |
| **Pricing & Discounts** | Plans, offers, discounts, payment terms and promotional conditions. |
| **FAQs** | The most common questions and answers. The AI uses these to resolve doubts instantly. |
| **Contact Information** | Phone numbers, emails, office locations, working hours, social handles. |
| **Support Process** | Ticketing, SLA, escalation path, response-time commitments. |
| **Objection Handling** | Responses to common objections — price concerns, competitor comparisons, hesitations. |
| **Competitor Comparison** | Where you win against key competitors, and honest trade-offs. |
| **Terms & Policies** | Terms of service, refund policy, privacy policy, warranties, legal notes. |

Need another topic (*Refund Policy*, *Service Areas*…)? Add a **custom block** with **Add knowledge topic**. You can hide a block you don't want, and restore it later. Use **Search knowledge…** to find text across blocks.

## Q&A pairs

For questions you already know leads ask, give the exact question and the answer, e.g.

> **Q:** What does this plan cover?
> **A:** Hospitalisation, day-care procedures and 30 days of pre- and post-hospitalisation expenses, up to the sum insured.

## Facts, not instructions

Write what is **true** about your product — *"Delivery takes 3–5 days"* — not orders to the AI like *"Always ask for the phone number"* or *"Reply in plain text"*. The AI reads the knowledge base as facts only and ignores instructions in it. The editor warns you when a line looks like an instruction.

## Instructions

Use the **Instructions** tab (up to 500 characters) to tell the AI **how** to talk to leads: style, language, what to focus on. For example:

```text
Reply in the language the lead writes in.
When leads ask about price, point out the yearly plan.
```

A few rules are fixed and listed in that tab. Instructions that clash with them are ignored, and the tab warns you. The AI always:

- answers only from your knowledge base and never makes up facts, prices, links or contact details;
- asks for a phone number or email **once** per conversation — again only if the lead wants a call or an email;
- keeps replies short on chat apps like WhatsApp, Telegram and SMS;
- never promises calls, emails or anything else it can't do itself;
- hands the lead to your team (if you have agents) when they ask for a person, get upset, or the AI isn't sure;
- never says it is an AI or explains how it works;
- ends the conversation politely once the lead is done.

## Process KB

Press **Process KB**. Your content is split into searchable chunks on our side — nothing is left out. A progress message shows while it runs; you can **Stop** it at any time.

| Status | Meaning |
|---|---|
| **Processing** | Indexing your content. Usually takes a few seconds to a minute. |
| **Ready** | Done. Test Chat and **Next** unlock. |
| **Failed** | Something went wrong. Your content is safe — press **Process KB** again. |
| **Cancelled** | You pressed Stop. Press **Process KB** when you're ready. |

!!! warning "Changed something? Process again"
    Any change to blocks, Q&A or instructions means the processed version is out of date. Press **Process KB** again so the AI and Test Chat use the new content. **Next** stays disabled until you do.

## Test Chat

Once processing finishes, click **Test Chat** in the Knowledge Base header. On wide screens it opens beside the editor; on smaller screens it slides up from the bottom.

- Ask questions exactly like a lead would — *How much does it cost? How do I get started?*
- Edit your content and process again until the answers are right.
- Use **Start a fresh conversation** in the chat header to reset it. Closing the panel keeps the conversation.

Test Chat uses your real AI model, so it uses tokens like a real conversation.

## Writing tips

- **Be specific.** More specific content produces more accurate answers. Vague or marketing-style copy tends to produce vague answers.
- **Put numbers in.** Prices, durations, limits, dates.
- **Avoid links/URLs** as the only source of an answer — the AI doesn't open links. Paste the actual information.
- **Keep it lean.** More content means more tokens per reply on your AI bill.
- **Cover objections.** The *Objection Handling* and *FAQs* blocks do the most work in real conversations.

[Next: Preview & publish](preview-and-publish.md){ .md-button .md-button--primary }
