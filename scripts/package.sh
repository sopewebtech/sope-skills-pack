#!/usr/bin/env bash
# Builds release zips into ./dist:
#   - one zip per skill (the format Claude.ai's "Upload skill" expects:
#     the skill folder at the root of the zip, with SKILL.md inside it)
#   - sope-skills-pack.zip containing every skill plus the README and docs
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
dist="$root/dist"

rm -rf "$dist"
mkdir -p "$dist"

cd "$root/skills"
for dir in */; do
  name="${dir%/}"
  [ -f "$name/SKILL.md" ] || continue
  zip -rq "$dist/$name.zip" "$name"
  echo "built dist/$name.zip"
done

cd "$root"
zip -rq "$dist/sope-skills-pack.zip" README.md LICENSE CHANGELOG.md assets docs skills
echo "built dist/sope-skills-pack.zip"
