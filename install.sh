#!/usr/bin/env bash
# Thrive Desk Research — Claude Code installer.
#
# This installs the skill for CLAUDE CODE ONLY: it writes into ~/.claude/skills,
# which is the directory Claude Code reads. Claude Desktop / Claude.ai do NOT read
# this folder — for those, upload thrive-desk-research.zip via
# Settings > Capabilities > Skills (see README, "Option A").
set -euo pipefail

DEST="$HOME/.claude/skills/thrive-desk-research"
BASE="https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main"

rm -rf "$DEST"
mkdir -p "$DEST"
curl -fsSL "$BASE/SKILL.md"  -o "$DEST/SKILL.md"
curl -fsSL "$BASE/README.md" -o "$DEST/README.md"

echo "Installed for Claude Code at: $DEST"
echo "Restart Claude Code, then run  /thrive-desk-research  (or just ask for desk research)."
echo
echo "Note: Claude Desktop / Claude.ai users are NOT installed by this script."
echo "There, enable Code execution, then upload thrive-desk-research.zip under"
echo "Settings > Capabilities > Skills. Once uploaded, /thrive-desk-research works there too."
