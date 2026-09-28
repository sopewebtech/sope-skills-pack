#!/usr/bin/env bash
# Checks every skill is well formed before release:
#   - SKILL.md exists and starts with YAML frontmatter
#   - frontmatter `name` matches the folder name and is kebab-case
#   - frontmatter `description` is present and under 1024 characters
#   - the instructions body fits Copilot agent / custom GPT limits (8,000 chars)
set -euo pipefail

root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
max_body=8000
fail=0

for dir in "$root"/skills/*/; do
  folder="$(basename "$dir")"
  file="$dir/SKILL.md"

  if [ ! -f "$file" ]; then
    echo "FAIL $folder: missing SKILL.md"; fail=1; continue
  fi

  if [ "$(head -n1 "$file" | tr -d '\r')" != "---" ]; then
    echo "FAIL $folder: SKILL.md must start with '---' frontmatter"; fail=1; continue
  fi

  frontmatter="$(awk 'NR==1{next} /^---\r?$/{exit} {print}' "$file")"
  body="$(awk 'c>=2{print} /^---\r?$/{c++}' "$file")"

  name="$(printf '%s\n' "$frontmatter" | sed -n 's/^name:[[:space:]]*//p' | tr -d '\r')"
  description="$(printf '%s\n' "$frontmatter" | sed -n 's/^description:[[:space:]]*//p' | tr -d '\r')"

  if [ "$name" != "$folder" ]; then
    echo "FAIL $folder: frontmatter name '$name' must match folder name"; fail=1
  fi
  if ! printf '%s' "$name" | grep -Eq '^[a-z0-9]+(-[a-z0-9]+)*$'; then
    echo "FAIL $folder: name must be lowercase kebab-case"; fail=1
  fi
  if [ -z "$description" ]; then
    echo "FAIL $folder: missing description"; fail=1
  elif [ "${#description}" -gt 1024 ]; then
    echo "FAIL $folder: description is ${#description} chars (max 1024)"; fail=1
  fi

  body_len="$(printf '%s' "$body" | wc -m | tr -d ' ')"
  if [ "$body_len" -gt "$max_body" ]; then
    echo "FAIL $folder: instructions are $body_len chars (max $max_body for Copilot/ChatGPT)"; fail=1
  else
    echo "ok   $folder ($body_len chars)"
  fi
done

exit "$fail"
