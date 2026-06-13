#!/usr/bin/env bash
#
# veri-koruma.sh — PreToolUse hook (matcher: Write|Edit)
#
# Ham ölçüm verisini korur. Claude, data/ham/ altındaki bir dosyaya YAZMAYA
# (Write/Edit) kalkışırsa bu hook eylemi engeller (exit 2) ve Claude'a
# nedenini söyler. Diğer her yere yazmaya izin verir (exit 0).
#
# Girdi: stdin'de JSON. İlgilendiğimiz alan: tool_input.file_path
# Kanıt slaytı: "Rule rica eder, Hook zorlar."

set -euo pipefail

input="$(cat)"

# file_path'i çek: önce jq, yoksa grep ile.
if command -v jq >/dev/null 2>&1; then
  file_path="$(printf '%s' "$input" | jq -r '.tool_input.file_path // empty')"
else
  file_path="$(printf '%s' "$input" \
    | grep -o '"file_path"[[:space:]]*:[[:space:]]*"[^"]*"' \
    | head -n1 | sed 's/.*:[[:space:]]*"\(.*\)"/\1/')"
fi

# Yol yoksa karışma.
[ -z "${file_path:-}" ] && exit 0

# Ters bölü'leri normalize et (Windows yolları için) ve kontrol et.
normalized="${file_path//\\//}"

case "$normalized" in
  *data/ham/*)
    echo "🛑 ENGELLENDİ: '$file_path' ham ölçüm verisidir ve salt-okunurdur." >&2
    echo "   Ham veri değiştirilemez. Analiz sonuçlarını raporlar/ altına yaz." >&2
    exit 2
    ;;
esac

exit 0
