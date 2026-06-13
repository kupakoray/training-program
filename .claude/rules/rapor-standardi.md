---
description: raporlar/ ve scripts/ altındaki çıktılar için yazım ve birim standardı
paths:
  - "raporlar/**"
  - "scripts/**"
---

# Rapor ve Çıktı Standardı

`raporlar/` ve `scripts/` altında üretilen her çıktı bu kurallara uyar. Bu
kurallar `CLAUDE.md`'deki genel kuralların üzerine eklenir.

## Birimler ve Sayılar

1. **Her zaman SI birimi** kullan ve birimi sayının yanına yaz: `°C`, `bar`,
   `mm`. _(Tutarlılık; mühendislik raporunda birimsiz sayı kabul edilmez.)_
2. **Ondalık ayırıcı her zaman nokta** (`75.2`), asla virgül. _(Veri işleme ve
   CSV uyumu için.)_
3. Sayıları **2 ondalık** ile yuvarla (titreşim gibi küçük değerlerde 2 yeterli).

## Tarih

4. Tarihleri **ISO formatında** yaz: `YYYY-MM-DD`. _(Sıralanabilir,
   bölgeden bağımsız.)_

## Kaynak ve İzlenebilirlik

5. Bir sayıyı yorumlarken **hangi dosyadan** geldiğini belirt.
6. **Her raporun en altına**, aynen şu altbilgi satırını ekle:

   ```
   ---
   > Kaynak: <kullanılan veri dosyası> · Otomatik üretim · AdAstra YZ Yetkinlik Programı
   ```

   _(İzlenebilirlik: raporun hangi ham veriden ve hangi süreçle üretildiği
   tek bakışta görünsün.)_

## Ham Veri

7. `data/ham/` altındaki dosyaları **asla** değiştirme; yalnızca oku.
