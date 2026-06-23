#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/thrive-incubator/desk_research_skill/archive/refs/heads/main.zip"
DEST="$HOME/.claude/skills/thrive-desk-research"

echo "Thrive Desk Research — Installer"
echo "================================="

# ── Preflight ──────────────────────────────────────────────
missing=()
command -v curl  >/dev/null 2>&1 || missing+=("curl")
command -v unzip >/dev/null 2>&1 || missing+=("unzip")

if [ ${#missing[@]} -gt 0 ]; then
  echo "Error: missing required tools: ${missing[*]}"
  echo "Install them and re-run this script."
  exit 1
fi

# ── Download zip ───────────────────────────────────────────
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

echo "Downloading skill…"
curl -sSL "$REPO_URL" -o "$TMPDIR/skill.zip"

# ── Extract ────────────────────────────────────────────────
unzip -q "$TMPDIR/skill.zip" -d "$TMPDIR/extracted"
EXTRACTED=$(find "$TMPDIR/extracted" -mindepth 1 -maxdepth 1 -type d | head -1)

# ── Copy into place ────────────────────────────────────────
if [ -d "$DEST" ]; then
  echo "Existing install found — backing up to ${DEST}.bak"
  mv "$DEST" "${DEST}.bak"
fi

mkdir -p "$DEST"
cp -R "$EXTRACTED/"* "$DEST/"
cp -R "$EXTRACTED/".[!.]* "$DEST/" 2>/dev/null || true

echo ""
echo "Done! Restart Claude Desktop, then ask it to run desk research on a venture idea."
