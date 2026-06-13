# CLAUDE.md

Bu dosya, projede çalışan Claude Code için **ana talimatları** içerir. Her
oturumun başında otomatik okunur. Genel (tüm path'ler için geçerli) kuralları
burada tut; daha dar kapsamlı path-bazlı kurallar `.claude/rules/` altındadır.

## Proje Hakkında

Test istasyonlarından gelen **ölçüm verilerini** analiz eden küçük bir Python
projesi. Claude Code'un Rules · Skills · Hooks · MCP · Subagents yapılarını
gerçek bir veri-analiz akışı üzerinde gösterir.

- Dil: Python 3 (standart kütüphane; script'ler ek paket gerektirmez)
- Veri: `data/ham/` altında CSV ölçüm dosyaları (**salt-okunur**)
- Çıktı: analiz raporları `raporlar/` altına yazılır
- İleri analiz: `requirements.txt` (pandas, matplotlib) opsiyonel

## Komutlar

| Amaç                  | Komut                                                      |
| --------------------- | --------------------------------------------------------- |
| (Opsiyonel) bağımlılık| `pip install -r requirements.txt`                         |
| Özet istatistik       | `python scripts/ozet_istatistik.py data/ham/<dosya>.csv`  |

## Dizin Yapısı

```
.
├── CLAUDE.md
├── data/ham/             # Ham ölçüm CSV'leri (DEĞİŞTİRİLMEZ — hook engeller)
├── scripts/              # Analiz script'leri
├── raporlar/             # Üretilen raporlar
└── .claude/
    ├── rules/             # rapor-standardi.md
    ├── skills/            # haftalik-rapor/
    ├── agents/            # veri-inceleyici.md
    ├── hooks/             # veri-koruma · komut-guard · denetim-kaydi
    └── settings.json      # izinler + hook tanımları
```

## Genel Kurallar

1. **Türkçe iletişim**: Kullanıcıyla Türkçe konuş; kod ve değişken isimleri
   açık, okunabilir olsun.
2. **Ham veriye dokunma**: `data/ham/` altındaki dosyaları **asla** değiştirme;
   yalnızca oku. Analiz sonuçlarını `raporlar/` altına yaz. _(Bir hook bunu
   ayrıca zorlar — kural rica eder, hook zorlar.)_
3. **Sırları sızdırma**: Token/parola gibi sırları koda gömme.
4. **Küçük, açıklanabilir adımlar**: Ne yaptığını ve neden yaptığını kısaca
   belirt.

> 📌 Rapor ve script çıktılarına özel yazım standardı `.claude/rules/rapor-standardi.md`
> içindedir (path-bazlı yüklenir).
