# .claude/hooks/

Hook script'leri buraya gelir; `.claude/settings.json` içinde hangi olayda
çalışacakları tanımlanır. Hook'lar **belirlenimcidir** — AI karar vermez, her
seferinde çalışır.

## Olaylar

| Olay           | Ne zaman                  | Tipik kullanım                    |
| -------------- | ------------------------- | --------------------------------- |
| `PreToolUse`   | Bir araç çalışmadan önce  | Tehlikeli işi engelle / doğrula   |
| `PostToolUse`  | Araç çalıştıktan sonra    | Format, lint, denetim kaydı       |
| `SessionStart` | Oturum başında            | Ortam hazırla, bağlam enjekte et  |

## Çıkış kodları (PreToolUse)

- `exit 0` → izin ver, devam
- `exit 2` → **eylemi engelle**, stderr mesajını Claude'a göster

## settings.json'a bağlama

```json
{
  "hooks": {
    "PreToolUse": [
      { "matcher": "Write|Edit",
        "hooks": [{ "type": "command",
                    "command": "$CLAUDE_PROJECT_DIR/.claude/hooks/<betik>.sh" }] }
    ]
  }
}
```

## İpuçları

- `matcher` ile dar kapsa (yoksa **tüm** araçlarda çalışır).
- stdout'u kirletme; mesajı **stderr**'e yaz.
- Hızlı tut (<200 ms) — hook'lar senkron çalışır.

> 🎯 **Egzersiz:** Claude'un her araç çağrısından önce/sonra kontrol etmesini
> istediğiniz şey ne? Onu hook'layın. Çalışan örnek için `solution` branch'ine
> bakın — orada bir hook ham veriyi değiştirmeyi **canlı engeller**.
