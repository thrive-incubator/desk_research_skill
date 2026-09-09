#!/usr/bin/env bash
# Verify the field-knowledge vault wiring.
#
# Checks the plumbing only: that the vaults are bundled, that the skill is told
# to use them, that the installed copies match this folder, that the vault's own
# internal links still resolve, and how stale the snapshot is. It cannot tell you
# whether the field context improves a report — for that, run the skill on a real
# venture and watch what it reads (see README, "Verifying it works").
#
# Usage:  ./scripts/verify-vaults.sh
set -uo pipefail

SKILL_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SKILL_NAME="$(basename "$SKILL_DIR")"
VAULTS="$SKILL_DIR/references/vaults"
STALE_DAYS=10

pass=0; fail=0; warn=0
ok()   { printf '  \033[32mPASS\033[0m  %s\n' "$1"; pass=$((pass+1)); }
bad()  { printf '  \033[31mFAIL\033[0m  %s\n' "$1"; fail=$((fail+1)); }
meh()  { printf '  \033[33mWARN\033[0m  %s\n' "$1"; warn=$((warn+1)); }

echo
echo "Verifying $SKILL_NAME"
echo

# --- 1. The vaults are bundled ----------------------------------------------
echo "1. Bundled content"
for f in VAULTS.md SNAPSHOT.md k12/index.md headstart/index.md; do
  [ -f "$VAULTS/$f" ] && ok "references/vaults/$f" || bad "missing references/vaults/$f"
done
for v in k12 headstart; do
  n=$(find "$VAULTS/$v" -name '*.md' 2>/dev/null | wc -l | tr -d ' ')
  [ "$n" -ge 20 ] && ok "$v: $n pages" || bad "$v: only $n pages — run scripts/refresh-vaults.sh"
  for d in themes entities digests; do
    [ -d "$VAULTS/$v/$d" ] || bad "$v/$d/ is missing — upstream layout may have changed"
  done
done

# --- 2. The skill is actually told to use them -------------------------------
echo
echo "2. Skill instructions"
check_hook() { grep -q "$2" "$SKILL_DIR/SKILL.md" && ok "$1" || bad "$1 — SKILL.md hook missing"; }
check_hook "Beat 2 sends it to the vaults"      "Start with the field knowledge vaults"
check_hook "Research method describes them"     "^### Field knowledge vaults"
check_hook "Citation rule present"              "Never cite an internal vault"
if grep -q "Regulatory-dependence stress test" "$SKILL_DIR/SKILL.md"; then
  grep -q "check the field vaults first" "$SKILL_DIR/SKILL.md" \
    && ok "Stress test points at the vaults" \
    || bad "Stress test present but doesn't reference the vaults"
fi

# --- 3. Installed copies match this folder -----------------------------------
echo
echo "3. Installed copies"
found_install=0
ROOTS=()
for root in "${CLAUDE_CONFIG_DIR:-}" "$HOME/.claude" "$HOME/.claude-work"; do
  [ -n "$root" ] && [ -d "$root" ] || continue
  case " ${ROOTS[*]-} " in *" $root "*) continue;; esac
  ROOTS+=("$root")
done
for root in "${ROOTS[@]}"; do
  [ -d "$root/skills/$SKILL_NAME" ] || continue
  found_install=1
  dest="$root/skills/$SKILL_NAME"
  label="~${dest#$HOME}"
  if diff -q "$SKILL_DIR/SKILL.md" "$dest/SKILL.md" >/dev/null 2>&1 \
     && [ -f "$dest/references/vaults/VAULTS.md" ]; then
    ok "$label is current"
  else
    bad "$label is out of date — re-run the installer"
  fi
done
[ "$found_install" -eq 1 ] || meh "not installed anywhere — run the installer"

# --- 4. The vault's own links still resolve ----------------------------------
# Catches an upstream restructure that would silently break the read protocol.
echo
echo "4. Read protocol integrity"
for v in k12 headstart; do
  broken=0; checked=0
  while IFS= read -r target; do
    checked=$((checked+1))
    [ -f "$VAULTS/$v/$target" ] || { broken=$((broken+1)); [ "$broken" -le 3 ] && echo "         broken: $v/$target"; }
  done < <(grep -o '](\([a-z0-9_/-]*\.md\))' "$VAULTS/$v/index.md" | sed 's/^](//; s/)$//')
  if [ "$checked" -eq 0 ]; then
    bad "$v: no links found in index.md — its format may have changed"
  elif [ "$broken" -eq 0 ]; then
    ok "$v: all $checked index links resolve"
  else
    bad "$v: $broken of $checked index links are broken"
  fi
done

# --- 5. Claims still carry sources -------------------------------------------
echo
echo "5. Citability"
for v in k12 headstart; do
  entries=$(grep -rhc '^### ' "$VAULTS/$v/themes/"*.md 2>/dev/null | paste -sd+ - | bc 2>/dev/null || echo 0)
  linked=$(grep -rh -A2 '^### ' "$VAULTS/$v/themes/"*.md 2>/dev/null | grep -c 'https\?://' || echo 0)
  if [ "${entries:-0}" -gt 0 ] && [ "${linked:-0}" -gt 0 ]; then
    ok "$v: $linked sourced links across $entries timeline entries"
  else
    bad "$v: timeline entries carry no source links — nothing here would be citable"
  fi
done

# --- 6. Freshness -------------------------------------------------------------
echo
echo "6. Freshness"
snap_age_days=$(( ( $(date +%s) - $(stat -f %m "$VAULTS/SNAPSHOT.md" 2>/dev/null || echo 0) ) / 86400 ))
[ "$snap_age_days" -le "$STALE_DAYS" ] \
  && ok "snapshot taken $snap_age_days day(s) ago" \
  || meh "snapshot is $snap_age_days days old — run scripts/refresh-vaults.sh"

if command -v gh >/dev/null 2>&1; then
  for pair in "k12|k12-synthesis" "headstart|headstart-synthesis"; do
    v="${pair%%|*}"; repo="${pair##*|}"
    local_week=$(find "$VAULTS/$v/digests" -name '*.md' 2>/dev/null | sort | tail -1 | xargs -I{} basename {} .md)
    remote_week=$(gh api "repos/thrive-incubator/$repo/contents/vault/digests/2026" --jq '[.[].name] | sort | last' 2>/dev/null | sed 's/\.md$//')
    if [ -z "$remote_week" ]; then
      meh "$v: could not reach upstream to compare"
    elif [ "$local_week" = "$remote_week" ]; then
      ok "$v: current with upstream ($local_week)"
    else
      meh "$v: bundled $local_week, upstream has $remote_week — refresh"
    fi
  done
else
  meh "gh not installed — skipped the upstream freshness comparison"
fi

echo
printf 'passed %d · warnings %d · failed %d\n\n' "$pass" "$warn" "$fail"
[ "$fail" -eq 0 ] || exit 1
