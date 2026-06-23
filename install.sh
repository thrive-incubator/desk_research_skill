#!/usr/bin/env bash
set -euo pipefail

REPO_URL="https://github.com/thrive-incubator/desk_research_skill/archive/refs/heads/main.zip"
DEST="$HOME/.claude/skills/thrive-desk-research"

echo "Thrive Desk Research — Installer"
echo "================================="

# ── Preflight ──────────────────────────────────────────────
missing=()
command -v curl    >/dev/null 2>&1 || missing+=("curl")
command -v unzip   >/dev/null 2>&1 || missing+=("unzip")
command -v python3 >/dev/null 2>&1 || missing+=("python3")

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

# The zip extracts into a folder named repo-branchname
EXTRACTED=$(find "$TMPDIR/extracted" -mindepth 1 -maxdepth 1 -type d | head -1)

# ── Copy into place ────────────────────────────────────────
if [ -d "$DEST" ]; then
  echo "Existing install found at $DEST — backing up to ${DEST}.bak"
  mv "$DEST" "${DEST}.bak"
fi

mkdir -p "$DEST"
cp -R "$EXTRACTED/"* "$DEST/"
cp -R "$EXTRACTED/".[!.]* "$DEST/" 2>/dev/null || true

echo "Installed to $DEST"

# ── Python dependency ──────────────────────────────────────
if ! python3 -c "import docx" 2>/dev/null; then
  echo "Installing python-docx (needed for .docx export)…"
  pip3 install --user python-docx 2>/dev/null \
    || python3 -m pip install --user python-docx 2>/dev/null \
    || echo "Warning: could not install python-docx. The .docx export script may not work."
fi

echo ""
echo "Done. Restart Claude Desktop, then ask it to run desk research on a venture idea."
