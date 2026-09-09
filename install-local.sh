#!/usr/bin/env bash
# Thrive Desk Research — install from THIS folder.
#
# Unlike install.sh (which curls SKILL.md + README.md from the published repo),
# this copies the whole local folder — including scripts/ and the bundled field
# knowledge vaults under references/ — into the skills directory of every Claude
# config root on this machine. Use this while the vault bundle is local-only.
#
# There is usually more than one config root: Claude Code reads ~/.claude, Claude
# Work reads ~/.claude-work, and CLAUDE_CONFIG_DIR overrides either. Installing
# into one and starting the other is why a skill can look installed and still come
# back as "Unknown command".
#
# Claude Desktop / claude.ai read none of these — for those, zip this folder and
# upload it under Settings > Capabilities > Skills (see README).
set -euo pipefail

SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
NAME="thrive-desk-research"

ROOTS=()
for root in "${CLAUDE_CONFIG_DIR:-}" "$HOME/.claude" "$HOME/.claude-work"; do
  [ -n "$root" ] && [ -d "$root" ] || continue
  case " ${ROOTS[*]-} " in *" $root "*) continue;; esac
  ROOTS+=("$root")
done

if [ ${#ROOTS[@]} -eq 0 ]; then
  echo "No Claude config root found (looked for \$CLAUDE_CONFIG_DIR, ~/.claude, ~/.claude-work)." >&2
  exit 1
fi

if [ ! -d "$SRC/references/vaults/k12" ]; then
  echo "warning: no bundled vaults found — run ./scripts/refresh-vaults.sh first." >&2
fi

for root in "${ROOTS[@]}"; do
  dest="$root/skills/$NAME"
  rm -rf "$dest"
  mkdir -p "$dest"
  rsync -a \
    --exclude '.git/' \
    --exclude 'install.sh' \
    --exclude 'install-local.sh' \
    "$SRC/" "$dest/"
  echo "Installed: $dest"
done

echo
echo "Restart Claude Code / Claude Work, then run  /$NAME"
