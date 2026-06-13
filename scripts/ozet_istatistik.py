#!/usr/bin/env python3
"""ozet_istatistik.py — Ham ölçüm CSV'sinden özet istatistik çıkarır.

Sadece Python standart kütüphanesini kullanır (csv, statistics) — ek
paket kurulumu gerekmez. Her sayısal sütun için min/max/ortalama/std ve
durum dağılımını yazdırır.

Kullanım:
    python scripts/ozet_istatistik.py data/ham/olcumler_hafta01.csv
"""

import csv
import statistics
import sys
from collections import Counter

# Türkçe karakterlerin her platformda doğru basılması için (Windows cp1252)
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout.reconfigure(encoding="utf-8")

# Analiz edilecek sayısal sütunlar ve birimleri
SAYISAL_SUTUNLAR = {
    "sicaklik_C": "°C",
    "basinc_bar": "bar",
    "titresim_mm": "mm",
}


def veri_oku(yol):
    """CSV'yi okur, satırları sözlük listesi olarak döndürür."""
    with open(yol, newline="", encoding="utf-8") as f:
        return list(csv.DictReader(f))


def ozet_cikar(satirlar):
    """Her sayısal sütun için temel istatistikleri hesaplar."""
    ozet = {}
    for sutun in SAYISAL_SUTUNLAR:
        degerler = [float(s[sutun]) for s in satirlar if s.get(sutun)]
        if not degerler:
            continue
        ozet[sutun] = {
            "adet": len(degerler),
            "min": min(degerler),
            "max": max(degerler),
            "ortalama": statistics.mean(degerler),
            "std": statistics.pstdev(degerler),
        }
    return ozet


def yazdir(yol, satirlar, ozet):
    print(f"Dosya: {yol}")
    print(f"Satır sayısı: {len(satirlar)}")
    print()
    print(f"{'Sütun':<14}{'Min':>8}{'Max':>8}{'Ort':>8}{'Std':>8}  Birim")
    print("-" * 54)
    for sutun, d in ozet.items():
        birim = SAYISAL_SUTUNLAR[sutun]
        print(
            f"{sutun:<14}{d['min']:>8.2f}{d['max']:>8.2f}"
            f"{d['ortalama']:>8.2f}{d['std']:>8.2f}  {birim}"
        )
    print()
    dagilim = Counter(s["durum"] for s in satirlar if s.get("durum"))
    print("Durum dağılımı:", dict(dagilim))


def main():
    if len(sys.argv) != 2:
        print("Kullanım: python scripts/ozet_istatistik.py <csv_yolu>")
        sys.exit(1)
    yol = sys.argv[1]
    satirlar = veri_oku(yol)
    ozet = ozet_cikar(satirlar)
    yazdir(yol, satirlar, ozet)


if __name__ == "__main__":
    main()
