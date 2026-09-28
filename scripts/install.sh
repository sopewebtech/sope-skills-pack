#!/usr/bin/env bash
# Installs the Sope Skills Starter Pack into Claude Code.
#
# Usage:
#   ./scripts/install.sh                          # installs to ~/.claude/skills
#   ./scripts/install.sh ./my-project/.claude/skills   # installs to a project
set -euo pipefail

dest="${1:-$HOME/.claude/skills}"
source_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")/../skills" && pwd)"

mkdir -p "$dest"

for skill in "$source_dir"/*/; do
  name="$(basename "$skill")"
  [ -f "$skill/SKILL.md" ] || continue
  if [ -d "$dest/$name" ]; then
    rm -rf "$dest/$name"
    echo "Updated   $name"
  else
    echo "Installed $name"
  fi
  cp -R "$skill" "$dest/$name"
done

echo
echo "Done. Skills are in $dest"
echo "Restart Claude Code to pick them up."
