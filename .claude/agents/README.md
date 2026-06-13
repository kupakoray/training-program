# .claude/agents/

Alt-agent (subagent) tanımları buraya gelir. Her agent kendi yalıtılmış bağlam
penceresinde çalışır; ana oturumun geçmişini görmez, sonucu döndürür.

## Dosya formatı

```markdown
---
name: agent-adi
description: Ne zaman devredileceği (orkestratör bunu okuyup karar verir)
tools: Read, Grep, Glob       # izinli araçları sınırla — salt-okunur agent yazma yapamaz
model: sonnet
---

# Agent Talimatı

## Görev
(tek sorumluluk)

## Çıktı
(net bir çıktı sözleşmesi: hangi bölümler, hangi sırayla)
```

## İlkeler

- **Bir agent = tek sorumluluk.** "Her şeyi yapan" agent'tan kaçın.
- **Araçları gerekenle sınırla.** İnceleyici bir agent'a `Write`/`Bash`
  vermeyin → kazara değişiklik olmaz.

> 🎯 **Egzersiz:** Kod tabanında bir ajana devredebileceğiniz odaklı bir iş
> seçin. Çalışan örnek için `solution` branch'ine bakın
> (`veri-inceleyici.md`).
