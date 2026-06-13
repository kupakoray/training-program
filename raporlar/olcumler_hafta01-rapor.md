# Haftalık Ölçüm Raporu — Hafta 01 (2026-06-01 / 2026-06-03)

## Özet İstatistik
| Sütun | Min | Max | Ort | Std | Birim |
|-------|-----|-----|-----|-----|-------|
| Sıcaklık | 68.20 | 110.30 | 77.98 | 10.42 | °C |
| Basınç | 3.90 | 5.40 | 4.38 | 0.38 | bar |
| Titreşim | 0.09 | 0.63 | 0.20 | 0.13 | mm |

Toplam 18 ölçüm · Durum dağılımı: normal 16 · uyari 1 · kritik 1

## Anomaliler
- 2026-06-01T12:00 · IST-01 · sıcaklık 98.60 °C, basınç 4.90 bar, titreşim 0.41 mm (uyari)
- 2026-06-03T10:00 · IST-03 · sıcaklık 110.30 °C, basınç 5.40 bar, titreşim 0.63 mm (kritik)

## Yorum
İstasyonların büyük çoğunluğu normal aralıkta çalıştı (16/18). İki anomali de
tekil sıçramalar biçiminde: IST-01'de bir saatlik bir `uyari` (98.60 °C) hemen
ardından normale dönmüş; IST-03'te ise haftanın en yüksek değeri olan 110.30 °C
ile bir `kritik` olay görülmüş ve bu satırda titreşim de 0.63 mm ile zirveye
çıkmış. Sıcaklık ile titreşimin birlikte yükselmesi, IST-03'teki olayın
mekanik kaynaklı olabileceğine işaret ediyor; bu istasyon yakından izlenmeli.

---
> Kaynak: olcumler_hafta01.csv · Otomatik üretim · AdAstra YZ Yetkinlik Programı
