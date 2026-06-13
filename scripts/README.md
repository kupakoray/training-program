# scripts/

Ham ölçüm verisi üzerinde çalışan küçük analiz script'leri.

## `ozet_istatistik.py`

Bir CSV dosyasındaki sayısal sütunlar için min/max/ortalama/std ve durum
dağılımını yazdırır. Sadece standart kütüphane kullanır.

```bash
python scripts/ozet_istatistik.py data/ham/olcumler_hafta01.csv
```

> 💡 Eğitim fikri: Claude'a "ikinci haftanın verisini de özetleyen, iki
> haftayı karşılaştıran bir script yaz" gibi bir görev verip yeni script
> ürettirebilirsiniz. `scripts/**` altındaki kurallar (varsa) devreye girer.
