# .claude/rules/

Path-bazlı kurallar buraya gelir. Her dosya **tek bir konu** olsun, dosya adı
neyi zorladığını anlatsın (`rapor-standardi.md` gibi; `kurallar.md` değil).

## Yükleme davranışı

- `paths:` **yoksa** → kural her oturumda yüklenir (genel kural).
- `paths:` **varsa** → yalnızca eşleşen dosyalarla çalışılırken yüklenir
  (token tasarrufu).

## Dosya formatı

```markdown
---
description: Bu kuralın ne işe yaradığı (Claude bunu okuyup yükleyip yüklemeyeceğine karar verir)
paths:
  - "raporlar/**"
  - "scripts/**"
---

# Başlık

- Emir kipinde, somut kurallar yaz. ("Her zaman ...", "Asla ...")
- Her kuralın yanına kısa bir gerekçe ekle.
```

> 🎯 **Egzersiz:** Claude'un sürekli yanlış yaptığı bir şey düşünün ve onun
> için bir kural yazın. Çalışan örnek için `solution` branch'ine bakın
> (`rapor-standardi.md`).
