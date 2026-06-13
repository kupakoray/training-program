# .claude/skills/

Tekrarlanabilir işler buraya gelir. Her skill kendi klasöründe bir `SKILL.md`
dosyasıdır: `.claude/skills/<ad>/SKILL.md`.

## Dosya formatı

```markdown
---
name: skill-adi
description: Ne yaptığı + ne zaman tetikleneceği. 2-4 somut tetikleyici ifade ver.
---

# Başlık

## Adımlar
1. ...
2. ...

## Beklenen Çıktı
(kısa bir örnek — halüsinasyonu azaltır)
```

## Nasıl tetiklenir

- `/skill-adi` ile elle, **veya**
- `description` iş tanımıyla eşleşince Claude otomatik yükler.

> 🎯 **Egzersiz:** Sık yaptığınız bir işi (haftalık rapor, ölçüm özeti) skill
> olarak tanımlayın. Çalışan örnek için `solution` branch'ine bakın
> (`haftalik-rapor/SKILL.md`).
