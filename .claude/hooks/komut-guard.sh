#!/usr/bin/env bash
#
# komut-guard.sh — PreToolUse hook (matcher: Bash)
#
# Tehlikeli kabuk komutlarını engeller. Claude bir Bash komutu çalıştırmadan
# ÖNCE çalışır; komut kara listedeki bir desene uyuyorsa exit 2 ile engeller.
#
# Girdi: stdin'de JSON. İlgilendiğimiz alan: tool_input.command

set -euo pipefail

input="$(cat)"

if command -v jq >/dev/null 2>&1; then
  cmd="$(printf '%s' "$input" | jq -r '.tool_input.command // empty')"
else
  cmd="$(printf '%s' "$input" \
    | grep -o '"command"[[:space:]]*:[[:space:]]*"[^"]*"' \
    | head -n1 | sed 's/.*:[[:space:]]*"\(.*\)"/\1/')"
fi

[ -z "${cmd:-}" ] && exit 0

# Tehlikeli desenler (genişletilebilir).
tehlikeli='rm[[:space:]]+-[a-zA-Z]*[rf]|mkfs|dd[[:space:]]+if=|:\(\)\{|chmod[[:space:]]+-R[[:space:]]+777|git[[:space:]]+push[[:space:]]+.*--force'

if printf '%s' "$cmd" | grep -Eq "$tehlikeli"; then
  echo "🛑 ENGELLENDİ: tehlikeli komut reddedildi:" >&2
  echo "   $cmd" >&2
  echo "   Bu komut kalıcı veri kaybına yol açabilir. Güvenli bir yol kullan." >&2
  exit 2
fi

exit 0
