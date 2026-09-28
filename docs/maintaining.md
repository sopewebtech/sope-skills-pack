# Maintaining the pack (for the Sope team)

This repo is public and client-facing. Keep everything in it generic, with no pricing, client names or Sope delivery methodology.

## What belongs in the free pack

A skill qualifies if it meets all three of these:

1. **No connector.** It works on content the person pastes in. No calendar, mailbox, CRM or file access.
2. **Valuable on the first paste.** Nothing to configure, and nothing to learn first.
3. **Nothing proprietary.** No Sope methodology (for example the capability ladder) baked into the output.

Anything that needs live connected data belongs in a paid or connected offer, not here.

## Repo layout

```
.claude-plugin/        Claude Code plugin + marketplace manifest
.github/workflows/     Validates skills on every push; builds release zips on tags
assets/                Sope logos used in the README (forest green = light mode, mint = dark mode)
docs/                  Install guides per AI tool (client-facing) + this file
scripts/
  install.ps1 / .sh    Copy skills into ~/.claude/skills (Claude Code)
  validate.sh          Checks frontmatter and instruction length
  package.sh           Builds dist/*.zip and dist/skills-starter-pack.plugin for releases
skills/<skill-name>/
  SKILL.md             The skill. This one file is the source of truth for every AI tool
  README.md            Client-facing guide shown on GitHub
  examples/            Fictional sample input to try it with
```

## Writing or editing a skill

- `SKILL.md` frontmatter needs `name` (kebab-case, matching the folder) and `description` (what it does *and* when to use it, since Claude uses this to decide when to load the skill).
- Keep the body under **8,000 characters**. It gets pasted into Copilot agent and custom GPT instruction fields, which cap at that. `scripts/validate.sh` enforces this.
- Write instructions that work in any tool. Don't reference Claude-specific tools, file paths or scripts.
- Australian English, plain language, no em-dash-heavy AI style.
- Sample inputs in `examples/` must be fictional. No real client names or content.
- Test every change in **Copilot, Claude and ChatGPT** using the sample input before releasing.

## Adding a new skill

1. Create `skills/<new-skill>/` with `SKILL.md`, `README.md` and `examples/`.
2. Add it to the skills table in the root `README.md`, the download links, and the tables in `docs/install-copilot.md` and `docs/install-chatgpt.md`.
3. Update `CHANGELOG.md`.

## Releasing

1. Bump `version` in `.claude-plugin/plugin.json` and `.claude-plugin/marketplace.json`.
2. Add a section to `CHANGELOG.md`.
3. Commit, then tag and push:

   ```bash
   git tag v1.1.0
   git push origin main --tags
   ```

4. GitHub Actions validates the skills, builds the zips and publishes the release. The download links in the README always point at the latest release, so they don't need updating.

To build the zips locally: `bash scripts/package.sh` (they're output to `dist/`, which is git-ignored).
