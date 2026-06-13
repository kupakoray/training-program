# data/

Eğitim için örnek **ölçüm verileri**.

## `ham/` — Ham ölçüm verisi (salt-okunur)

Test istasyonlarından toplanan saatlik ölçümler. Sütunlar:

| Sütun        | Birim | Açıklama                                  |
| ------------ | ----- | ----------------------------------------- |
| `zaman`      | ISO   | Ölçüm zamanı (YYYY-MM-DDThh:mm:ss)        |
| `istasyon`   | —     | Test istasyonu kimliği                    |
| `sicaklik_C` | °C    | Sıcaklık                                  |
| `basinc_bar` | bar   | Basınç                                    |
| `titresim_mm`| mm    | Titreşim genliği                          |
| `durum`      | —     | `normal` / `uyari` / `kritik`             |

> ⚠️ **Ham veri değiştirilemez.** Bu klasör gerçek ölçüm kaydını temsil eder.
> `solution` branch'inde bir **hook** bu dosyalara yazmayı engeller — analiz
> sonuçları `raporlar/` altına yazılır, ham veriye dokunulmaz.

Her dosyada bilinçli olarak birkaç **anomali** (uyarı/kritik satır) var; veri
inceleme ve raporlama örneklerinde bunları yakalamak için kullanılır.
