# Install in Microsoft 365 Copilot

The best way to use these skills in Copilot is to create a **Copilot agent** for each one. Once it's set up, you open the agent, paste your content, and it already knows what to do.

> **Before you start:** creating agents depends on your Microsoft 365 licence and what your IT admin allows. If you don't see the option to create an agent, use [Option B](#option-b-copy-and-paste-works-everywhere) or ask your IT team.

## Option A: Create a Copilot agent (recommended)

Repeat these steps for each skill you want. It takes about two minutes per skill.

1. Go to [m365copilot.com](https://m365copilot.com) (or open **Copilot** in Teams or Outlook).
2. In the left panel, select **Create agent** (you may find it under **Agents**, then **New agent**).
3. Switch to the **Configure** tab.
4. Fill in:

   | Field | What to enter |
   |-------|---------------|
   | **Name** | The skill name, e.g. `Meeting Summary & Actions` |
   | **Description** | The one-liner from the table below |
   | **Instructions** | Everything in the skill's `SKILL.md` **below** the second `---` line (skip the `name:` / `description:` header) |

5. Leave **Knowledge** empty. These skills don't need any files or connections.
6. Optional: add a **starter prompt** from the table below.
7. Select **Create**. The agent appears in your Copilot sidebar.

To use it, open the agent from the sidebar, paste your transcript, document or email, and send.

### What to enter for each skill

| Skill | Instructions from | Description | Starter prompt |
|-------|-------------------|-------------|----------------|
| Meeting Summary & Actions | [SKILL.md](../skills/meeting-summary-actions/SKILL.md) | Paste a transcript, get a summary with decisions, owners and actions. | Summarise this meeting and pull out the actions: |
| Voice & Tone Matcher | [SKILL.md](../skills/voice-tone-matcher/SKILL.md) | Learns how I write from past emails, then drafts in my voice. | Learn how I write from these emails: |
| Executive Summary | [SKILL.md](../skills/executive-summary/SKILL.md) | Turns a long document into a one-page plain-English brief. | Give me an executive summary of this: |
| Inbox Triage & Reply Drafts | [SKILL.md](../skills/inbox-triage-replies/SKILL.md) | Explains an email thread and drafts reply options at different tones. | Help me reply to this: |
| Plain-English Rewriter | [SKILL.md](../skills/plain-english-rewriter/SKILL.md) | Jargon into plain English, or rough notes into a proper document. | Put this in plain English: |

### Tip: sharing agents with your team

Once an agent works well, you can share it with colleagues from the agent's settings, if your organisation allows it. Everyone gets the same skill, and nobody has to set it up again.

## Option B: Copy and paste (works everywhere)

This works in Copilot Chat, including the free version, with no setup.

1. Open the skill's `SKILL.md` and copy all of it.
2. Start a new Copilot chat and paste it in.
3. On a new line underneath, paste your content (transcript, document, email thread) and send.

## Option C: Save as a prompt

In Copilot Chat you can save prompts to reuse. Save the contents of a `SKILL.md` as a prompt, then pull it up with the prompt picker at the start of a chat, before pasting your content.

## Troubleshooting

- **"The instructions are too long."** Each skill is under Copilot's 8,000-character limit, but make sure you didn't paste the whole file twice.
- **It's not following the format.** Start a fresh chat with the agent. Long chats can drift.
- **Documents are too long to paste.** Attach the file instead, if your Copilot allows uploads, or split it into sections.
