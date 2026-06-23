#!/usr/bin/env bash
set -euo pipefail

REPO="https://github.com/thrive-incubator/desk_research_skill.git"
DEST="$HOME/.claude/skills/thrive-desk-research"

echo "Thrive Desk Research — Installer"
echo "================================="

# ── Preflight ──────────────────────────────────────────────
missing=()
command -v git   >/dev/null 2>&1 || missing+=("git")
command -v python3 >/dev/null 2>&1 || missing+=("python3")

if [ ${#missing[@]} -gt 0 ]; then
  echo "Error: missing required tools: ${missing[*]}"
  echo "Install them and re-run this script."
  exit 1
fi

# ── Clone to a temp dir ────────────────────────────────────
TMPDIR=$(mktemp -d)
trap 'rm -rf "$TMPDIR"' EXIT

echo "Cloning repo…"
git clone --depth 1 "$REPO" "$TMPDIR/repo"

# ── Copy into place ────────────────────────────────────────
if [ -d "$DEST" ]; then
  echo "Existing install found at $DEST — backing up to ${DEST}.bak"
  mv "$DEST" "${DEST}.bak"
fi

mkdir -p "$DEST"
cp -R "$TMPDIR/repo/"* "$DEST/"
cp -R "$TMPDIR/repo/".[!.]* "$DEST/" 2>/dev/null || true   # hidden files

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
