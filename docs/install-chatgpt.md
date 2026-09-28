# Install in ChatGPT

There are three ways to use these skills in ChatGPT, from most to least setup.

## Option A: Create a custom GPT (recommended)

> Creating GPTs needs a paid ChatGPT plan (Plus, Team, Enterprise or Edu). On a work plan, your admin controls whether you can create and share GPTs.

Repeat for each skill. It takes about two minutes per skill.

1. In ChatGPT, open **GPTs** from the sidebar, then select **Create**.
2. Switch to the **Configure** tab.
3. Fill in:

   | Field | What to enter |
   |-------|---------------|
   | **Name** | The skill name, e.g. `Meeting Summary & Actions` |
   | **Description** | The one-liner from the table below |
   | **Instructions** | Everything in the skill's `SKILL.md` **below** the second `---` line |
   | **Conversation starters** | The starter prompt from the table below |

4. Under **Capabilities**, you can turn off web search and image generation. The skills don't need them.
5. Select **Create**, then choose who can access it (just you, or your workspace).

| Skill | Instructions from | Description | Conversation starter |
|-------|-------------------|-------------|----------------------|
| Meeting Summary & Actions | [SKILL.md](../skills/meeting-summary-actions/SKILL.md) | Paste a transcript, get a summary with decisions, owners and actions. | Summarise this meeting and pull out the actions: |
| Voice & Tone Matcher | [SKILL.md](../skills/voice-tone-matcher/SKILL.md) | Learns how I write from past emails, then drafts in my voice. | Learn how I write from these emails: |
| Executive Summary | [SKILL.md](../skills/executive-summary/SKILL.md) | Turns a long document into a one-page plain-English brief. | Give me an executive summary of this: |
| Inbox Triage & Reply Drafts | [SKILL.md](../skills/inbox-triage-replies/SKILL.md) | Explains an email thread and drafts reply options at different tones. | Help me reply to this: |
| Plain-English Rewriter | [SKILL.md](../skills/plain-english-rewriter/SKILL.md) | Jargon into plain English, or rough notes into a proper document. | Put this in plain English: |

## Option B: Use a Project

If you'd rather keep everything in one place:

1. Create a new **Project** in the sidebar.
2. Open the project's **Instructions** and paste in the whole `SKILL.md`.
3. Every chat you start in that project uses the skill.

## Option C: Copy and paste (any plan, including free)

1. Open the skill's `SKILL.md` and copy all of it.
2. Start a new chat, paste it in, then add your content underneath and send.

## Troubleshooting

- **It's ignoring the format.** Start a new chat. Long conversations can drift.
- **Voice & Tone Matcher forgot my voice.** Custom GPTs don't remember between chats. Paste your saved voice profile at the start of each chat, or add it to the bottom of the GPT's instructions so it's always there.
