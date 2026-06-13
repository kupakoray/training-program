# CLAUDE.md

Bu dosya, projede çalışan Claude Code için **ana talimatları** içerir. Her
oturumun başında otomatik okunur. Genel (tüm path'ler için geçerli) kuralları
burada tut; daha dar kapsamlı path-bazlı kurallar `.claude/rules/` altına gelir.

## Proje Hakkında

Test istasyonlarından gelen **ölçüm verilerini** analiz eden küçük bir Python
projesi. Amaç; Claude Code'un Rules · Skills · Hooks · MCP · Subagents
yapılarını gerçek bir veri-analiz akışı üzerinde göstermek.

- Dil: Python 3 (standart kütüphane)
- Veri: `data/ham/` altında CSV ölçüm dosyaları (salt-okunur)
- Çıktı: analiz raporları `raporlar/` altına yazılır
- Paket: ek bağımlılık zorunlu değil; ileri analiz için `requirements.txt`

## Komutlar

| Amaç                  | Komut                                                      |
| --------------------- | --------------------------------------------------------- |
| (Opsiyonel) bağımlılık| `pip install -r requirements.txt`                         |
| Özet istatistik       | `python scripts/ozet_istatistik.py data/ham/<dosya>.csv`  |

## Dizin Yapısı

```
.
├── CLAUDE.md              # Bu dosya — genel talimatlar
├── data/ham/             # Ham ölçüm CSV'leri (DEĞİŞTİRİLMEZ)
├── scripts/              # Analiz script'leri
├── raporlar/             # Üretilen raporlar buraya
└── .claude/
    ├── rules/             # Path-bazlı kurallar    → SEN DOLDURACAKSIN
    ├── skills/            # Tekrarlanabilir işler   → SEN DOLDURACAKSIN
    ├── agents/            # Alt-agent tanımları     → SEN DOLDURACAKSIN
    ├── hooks/             # Hook script'leri        → SEN DOLDURACAKSIN
    └── settings.json      # İzinler + hook tanımları
```

## Genel Kurallar

> ℹ️ Bu bölüm bilinçli olarak **kısa** bırakıldı. Eğitim sırasında buraya kendi
> kurallarınızı ekleyeceksiniz. Aşağıdakiler başlangıç için birkaç örnektir:

1. **Türkçe iletişim**: Kullanıcıyla Türkçe konuş; kod ve değişken isimleri
   açık ve okunabilir olsun.
2. **Ham veriye dokunma**: `data/ham/` altındaki dosyaları asla değiştirme;
   yalnızca oku. Sonuçları `raporlar/` altına yaz.

<!--
  EĞİTİM NOTU: Çalışan, doldurulmuş bir referans için `solution` branch'ine
  bakın. Orada rules / skills / agents / hooks örnekleri ve çalışan bir hook
  demosu (ham veriyi değiştirmeyi engelleme) bulunur.
-->
