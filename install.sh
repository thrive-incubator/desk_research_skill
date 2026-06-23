#!/usr/bin/env bash
set -euo pipefail

DEST="$HOME/.claude/skills/thrive-desk-research"
URL="https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/SKILL.md"

rm -rf "$DEST"
mkdir -p "$DEST"
curl -sSL "$URL" -o "$DEST/SKILL.md"

echo "Installed! Restart Claude Desktop and type /thrive-desk-research to get started."
