#!/usr/bin/env bash
# Installs the agent skills I use in every new repo.
#
# Usage (from the repo root):
#   curl -fsSL https://raw.githubusercontent.com/SantiagoZarate/dotskills/main/install-skills.sh | bash
#
# Extra args are passed to `skills add`, e.g. to install globally for Claude Code only:
#   curl -fsSL .../install-skills.sh | bash -s -- -g -a claude-code

set -euo pipefail

# "repo skill1 skill2 ..."
SKILLS=(
  "mattpocock/skills handoff grill-with-docs writing-for-agents code-review pr retro research"
  "cursor/plugins unslop"
  "humanlayer/skills show-me"
)

if ! command -v npx >/dev/null 2>&1; then
  echo "npx not found. Install Node.js first: https://nodejs.org" >&2
  exit 1
fi

for entry in "${SKILLS[@]}"; do
  read -r repo skills <<<"$entry"
  echo "==> $repo: $skills"
  # shellcheck disable=SC2086
  npx -y skills add "$repo" --skill $skills -y "$@" </dev/null
done

echo "Done."
