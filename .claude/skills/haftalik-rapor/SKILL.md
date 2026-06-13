---
name: haftalik-rapor
description: Bir ölçüm CSV'sinden haftalık analiz raporu üretir. "haftalık rapor üret", "ölçüm özeti çıkar", "şu CSV'yi raporla" gibi istekler geldiğinde kullan.
---

# Haftalık Ölçüm Raporu

Verilen bir ham ölçüm CSV'sinden Markdown bir analiz raporu üretir.

## Çıktı Yolu

`raporlar/<dosya-adı>-rapor.md`
(ör. `data/ham/olcumler_hafta01.csv` → `raporlar/olcumler_hafta01-rapor.md`)

## Adımlar

1. CSV'yi **oku** (`data/ham/` altından). Ham dosyayı **değiştirme**.
2. Her sayısal sütun için min / max / ortalama / std hesapla. Pratik için
   `python scripts/ozet_istatistik.py <csv>` çıktısını kullanabilirsin.
3. `durum` sütununda `uyari` ve `kritik` satırları **anomali** olarak listele
   (zaman + istasyon + ilgili değer).
4. Raporu Markdown olarak `raporlar/` altına yaz.
5. `.claude/rules/rapor-standardi.md` kurallarına uy: SI birimleri, nokta
   ondalık, ISO tarih ve **zorunlu altbilgi satırı**.

## Beklenen Çıktı (iskelet)

```markdown
# Haftalık Ölçüm Raporu — <hafta>

## Özet İstatistik
| Sütun | Min | Max | Ort | Std | Birim |
|-------|-----|-----|-----|-----|-------|
| Sıcaklık | 68.20 | 110.30 | 77.98 | 10.42 | °C |
| ... |

## Anomaliler
- 2026-06-01T12:00 · IST-01 · sıcaklık 98.60 °C (uyari)
- 2026-06-03T10:00 · IST-03 · sıcaklık 110.30 °C (kritik)

## Yorum
<kısa değerlendirme; hangi istasyonda hangi eğilim>

---
> Kaynak: olcumler_hafta01.csv · Otomatik üretim · AdAstra YZ Yetkinlik Programı
```
