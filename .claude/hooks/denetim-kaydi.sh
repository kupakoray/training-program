#!/usr/bin/env bash
#
# denetim-kaydi.sh — PostToolUse hook (matcher: Write|Edit)
#
# Claude bir dosyayı yazdıktan/düzenledikten SONRA çalışır. Hangi dosyanın
# ne zaman değiştirildiğini .claude/denetim.log'a yazar. Claude'u ASLA
# engellemez (her zaman exit 0); yalnızca yan etki üretir.
#
# Slayt notu: "Loglama & yan etki için PostToolUse kullan."

set -euo pipefail

input="$(cat)"

if command -v jq >/dev/null 2>&1; then
  file_path="$(printf '%s' "$input" | jq -r '.tool_input.file_path // empty')"
else
  file_path="$(printf '%s' "$input" \
    | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' \
    | head -n1 | sed 's/.*:[[:space:]]*"\(.*\)"/\1/')"
fi

[ -z "${file_path:-}" ] && exit 0

# Proje köküne göre log; CLAUDE_PROJECT_DIR yoksa çalışılan dizini kullan.
log_dir="${CLAUDE_PROJECT_DIR:-.}/.claude"
mkdir -p "$log_dir"
zaman="$(date '+%Y-%m-%dT%H:%M:%S')"
echo "$zaman  yazıldı: $file_path" >> "$log_dir/denetim.log"

# stdout'u kirletme; bilgilendirme stderr'e.
echo "denetim-kaydi: $file_path kaydedildi." >&2
exit 0
