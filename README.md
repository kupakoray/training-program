# Kurumsal YZ Yetkinlik Programı — Uygulama Reposu

Bu repo, **Claude Code** eğitiminin uygulamalı bölümü için hazırlanmıştır.
Tarayıcıdan (claude.ai/code) çalışacak şekilde tasarlandı; CLI gerekmez. Tüm
yapılandırma repoda yaşar, dolayısıyla herkeste aynı çalışır.

## İki branch

| Branch     | İçerik                                                                 |
| ---------- | ---------------------------------------------------------------------- |
| `main`     | **İskelet.** `.claude/` klasörleri boş (rehber README'lerle). Egzersizlerde siz dolduracaksınız. |
| `solution` | **Çalışan referans.** Rules · Skills · Hooks · Subagents · MCP dolu ve çalışır durumda. |

> Egzersiz akışı: `main` üzerinde kendi kuralınızı/skill'inizi/hook'unuzu
> yazın. Takıldığınızda ya da "nasıl olmalıydı" diye bakmak istediğinizde
> `solution` branch'ine geçin.

## Hızlı başlangıç

```bash
# Özet istatistik (kurulum gerektirmez)
python scripts/ozet_istatistik.py data/ham/olcumler_hafta01.csv
```

## Klasörler

- `data/ham/` — Ham ölçüm CSV'leri (**salt-okunur** kabul edilir)
- `scripts/` — Analiz script'leri
- `raporlar/` — Üretilen raporlar
- `.claude/` — Claude Code yapılandırması (rules / skills / agents / hooks / settings)

## `solution` branch'inde ne göreceksiniz?

1. **Rule** — `rapor-standardi.md`: raporlar SI birimi + nokta ondalık + sabit
   altbilgi ile üretilir. (Kuralın çalıştığı *gözle görülür*.)
2. **Skill** — `/haftalik-rapor`: bir CSV'den haftalık analiz raporu üretir.
3. **Hook** — ham veriyi (`data/ham/`) değiştirmeyi ve tehlikeli komutları
   **canlı engeller** (`exit 2`).
4. **Subagent** — `veri-inceleyici`: salt-okunur, veri kalitesi raporlar.
5. **MCP** — `.mcp.json` ile GitHub bağlantısı.
