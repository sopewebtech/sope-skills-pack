# Install in Claude

These skills are written in Claude's native **Agent Skills** format. Once they're installed, Claude picks the right skill automatically. Paste a transcript and it knows to summarise it, with no need to name the skill.

- [Claude desktop app: all five in one file](#claude-desktop-app-all-five-in-one-file)
- [Claude.ai: one skill at a time](#claudeai-one-skill-at-a-time)
- [Claude Code](#claude-code)
- [Copy and paste (any plan)](#copy-and-paste-any-plan)

> **Setting this up for a whole team?** On Claude Team and Enterprise plans, an admin can add skills for the entire organisation, so people don't have to install anything themselves. Send this page to whoever manages Claude for your organisation.

---

## Claude desktop app: all five in one file

The quickest way to install. One download installs every skill in the pack as a plugin.

1. Download [**skills-starter-pack.plugin**](https://github.com/sopewebtech/sope-skills-pack/releases/latest/download/skills-starter-pack.plugin).
2. Open the Claude desktop app and switch to **Cowork**.
3. Attach the `.plugin` file to a message, the same way you'd attach any file.
4. Claude shows a preview of the plugin and its five skills. Select the button to install it.

**To use:** paste your content into a chat. Claude loads the matching skill by itself.

Not using the desktop app, or want only some of the skills? Use the next option.

---

## Claude.ai: one skill at a time

> **Before you start:** skills are available on paid Claude plans. On Team and Enterprise plans, an admin may need to turn skills on for your organisation first.

1. Download the zip for each skill you want from the [Releases page](https://github.com/sopewebtech/sope-skills-pack/releases/latest):
   - [meeting-summary-actions.zip](https://github.com/sopewebtech/sope-skills-pack/releases/latest/download/meeting-summary-actions.zip)
   - [voice-tone-matcher.zip](https://github.com/sopewebtech/sope-skills-pack/releases/latest/download/voice-tone-matcher.zip)
   - [executive-summary.zip](https://github.com/sopewebtech/sope-skills-pack/releases/latest/download/executive-summary.zip)
   - [inbox-triage-replies.zip](https://github.com/sopewebtech/sope-skills-pack/releases/latest/download/inbox-triage-replies.zip)
   - [plain-english-rewriter.zip](https://github.com/sopewebtech/sope-skills-pack/releases/latest/download/plain-english-rewriter.zip)
2. In Claude, open **Settings**, then **Capabilities**.
3. Make sure **Code execution and file creation** is turned on. Skills need it.
4. Under **Skills**, select **Upload skill** and choose one of the zip files. **Don't unzip it first.**
5. Repeat for each skill. Each one appears in your skills list, where you can switch it on or off.

**To use:** start a new chat and paste your content. Claude loads the matching skill by itself. You can also be explicit: *"Use the meeting summary skill on this."*

---

## Claude Code

### Option A: Install as a plugin (recommended)

Run these in Claude Code:

```
/plugin marketplace add sopewebtech/sope-skills-pack
/plugin install skills-starter-pack@sope
```

That installs all five skills, and you'll get updates when new versions are released.

### Option B: Install script

Clone or download this repo, then run the script from the repo folder.

**Windows (PowerShell):**

```powershell
./scripts/install.ps1
```

**macOS / Linux:**

```bash
./scripts/install.sh
```

The scripts copy the skills into your personal skills folder (`~/.claude/skills/`), so they're available in every project. To install into a single project instead, copy the folders from `skills/` into that project's `.claude/skills/` folder.

---

## Copy and paste (any plan)

This works on the free plan too.

1. Open the skill's `SKILL.md` and copy all of it.
2. Start a new chat, paste it in, then add your content underneath and send.

**Tip:** on plans with **Projects**, create a project per skill and paste the `SKILL.md` into the project's instructions. Every chat in that project then uses the skill automatically.
