#!/usr/bin/env bash
#
# Installs the thrive-desk-research skill into CLAUDE CODE (the command-line tool).
#
#   curl -fsSL https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/install.sh | bash
#
# Using the Claude DESKTOP app instead? Do NOT run this script — Desktop installs
# skills by uploading a .zip in Settings. See INSTALL.md ("Claude Desktop").
#
set -euo pipefail

SKILL_NAME="thrive-desk-research"
DEST="$HOME/.claude/skills/$SKILL_NAME"
URL="https://raw.githubusercontent.com/thrive-incubator/desk_research_skill/main/SKILL.md"

if ! command -v curl >/dev/null 2>&1; then
  echo "Error: 'curl' is not installed. Install curl and try again." >&2
  exit 1
fi

echo "Installing $SKILL_NAME into Claude Code at:"
echo "  $DEST"

# Download to a temp file first so a failed/partial download never wipes a
# working install.
TMP="$(mktemp)"
trap 'rm -f "$TMP"' EXIT

if ! curl -fsSL "$URL" -o "$TMP"; then
  echo "Error: failed to download SKILL.md from $URL" >&2
  exit 1
fi

# Sanity check: the file should start with skill frontmatter.
if ! head -n 1 "$TMP" | grep -q '^---'; then
  echo "Error: downloaded file does not look like a valid SKILL.md." >&2
  exit 1
fi

mkdir -p "$DEST"
mv "$TMP" "$DEST/SKILL.md"
trap - EXIT

echo
echo "Installed."
echo "Restart Claude Code, then type /$SKILL_NAME to begin."
