#!/usr/bin/env bash
#
# setup.sh — Claude Code web ortam kurulum script'i (opsiyonel).
#
# Claude Code web'de bir "environment" tanımlarken bu script'i kurulum
# adımı olarak gösterebilirsiniz; çıktısı cache'lenir ve sonraki oturumlar
# hızlı başlar. Çekirdek demo bu kuruluma ihtiyaç duymaz.

set -euo pipefail

if [[ -f requirements.txt ]]; then
  echo "Bağımlılıklar kuruluyor..."
  pip install -r requirements.txt
fi

echo "Kurulum tamam."
