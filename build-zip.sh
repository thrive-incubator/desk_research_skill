#!/usr/bin/env bash
#
# Maintainer script. Rebuilds thrive-desk-research.zip from SKILL.md.
#
# Run this whenever SKILL.md changes, then commit the updated zip so
# non-technical teammates always download the latest version.
#
#   ./build-zip.sh
#
set -euo pipefail

SKILL_NAME="thrive-desk-research"
ROOT="$(cd "$(dirname "$0")" && pwd)"
OUT="$ROOT/$SKILL_NAME.zip"

if [ ! -f "$ROOT/SKILL.md" ]; then
  echo "Error: SKILL.md not found next to this script." >&2
  exit 1
fi

# Stage the skill inside a folder named after the skill, so the zip's
# top-level entry is "thrive-desk-research/SKILL.md" — the structure
# Claude Desktop expects on upload.
STAGE="$(mktemp -d)"
trap 'rm -rf "$STAGE"' EXIT

mkdir -p "$STAGE/$SKILL_NAME"
cp "$ROOT/SKILL.md" "$STAGE/$SKILL_NAME/SKILL.md"

rm -f "$OUT"
( cd "$STAGE" && zip -r -q "$OUT" "$SKILL_NAME" )

echo "Built $OUT"
echo "Contents:"
unzip -l "$OUT"
echo
echo "Commit the updated zip so the team downloads the latest version."
