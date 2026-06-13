# Giriş Ekranı — Yerleşim Kuralı (layout.md)

> Mobil uygulama giriş (login) ekranı için yerleşim rehberi.
> Tüm ölçüler **pt** (point) cinsindendir. Yeni giriş ekranı tasarlanırken / revize edilirken bu kurallara uyulur.

---

## 0. Tuval & Global Kurallar

| Parametre        | Değer        | Not |
|------------------|--------------|-----|
| Tuval (canvas)   | `390 × 844 pt` | Referans cihaz (iPhone 12/13/14 mantığı) |
| Kenar boşluğu    | `24 pt`        | Sol/sağ güvenli içerik marjı |
| Min. dokunma alanı | `44 × 44 pt` | Tüm tıklanabilir/dokunulabilir öğeler için taban |
| Status bar payı  | `~44 pt`       | Üstte güvenli boşluk |
| Safe area (alt)  | bırakılır      | Alt cihaz güvenli alanı için boşluk ayrılır |

**Genel ilkeler**
- İçerik `24 pt` kenar boşluğu içinde kalır; tam genişlik öğeler (banner, buton) bu marjı taşabilir ya da hizalanır (öğe bazında belirtildi).
- Dikey sıralama yukarıdan aşağıya **1 → 8** olarak korunur.
- Dokunma alanı `44 × 44 pt`'nin altına düşürülmez.

---

## 1. Banner / Üst Görsel Alanı
- **Yükseklik:** `140–200 pt`
- **Genişlik:** Tam genişlik (edge-to-edge).
- Marka görseli ya da düz/degrade renk.
- Üstte status bar için `~44 pt` güvenli boşluk bırakılır.
- Metin okunurluğunu bozmayacak sade bir görsel seçilir.

## 2. Logo Alanı
- **Maksimum boyut:** `120 × 120 pt`
- Ekranın **yatay merkezinde** konumlanır.
- Banner'ın alt kenarına hafif **bindirilebilir** (overlap).
- Logo ile başlık arasında `~24 pt` boşluk.

## 3. Başlık + Alt Başlık
- **Başlık punto:** `22–26 pt` — kalın ve ortalı (ör. "Hoş geldiniz").
- **Alt başlık punto:** `14–16 pt` — gri ve ince.
- Alt başlık **en fazla iki satır**.
- Karşılama ya da kısa yönlendirme metni.

## 4. Kullanıcı Adı / E-posta
- **Alan yüksekliği:** `≥ 48 pt`
- Üstte `13 pt` etiket.
- Alan içinde ikon + ipucu (placeholder) metni.
- **Köşe yarıçapı:** `10–12 pt`
- **Kenar boşluğu:** `24 pt`

## 5. Şifre Alanı
- E-posta alanıyla **aynı stil**.
- Sağda **göster/gizle** ikonu — dokunma alanı en az `44 × 44 pt`.
- Alanlar arası `~16 pt` boşluk.

## 6. Beni Hatırla / Şifremi Unuttum
- **Punto:** `13–14 pt`
- Tek satırda:
  - **Solda:** onay kutusu (checkbox) + "Beni hatırla"
  - **Sağda:** "Şifremi unuttum?" bağlantısı
- Bağlantı **vurgulu renkte** olabilir.

## 7. Giriş Butonu
- **Yükseklik:** `≥ 52 pt`
- Tam genişlik, **dolgulu** ve **yüksek kontrastlı** (birincil eylem).
- Form alanlarından `~24 pt` aşağıda.
- Metin **ortalı ve kalın**.

## 8. Alt Bilgi / Versiyon / Telif
- **Punto:** `11–12 pt`
- Ekranın **en altında**, ortalı ve gri.
- Örn: `v1.0.0 · © 2026`
- Altta cihaz güvenli alanı (safe area) için boşluk bırakılır.

---

## Dikey Akış Özeti (yukarıdan aşağı)

```
┌─────────────────────────────┐  ← 0  Status bar payı (~44 pt)
│ 1  Banner / Üst Görsel       │     140–200 pt, tam genişlik
│        ┌───────┐             │
│        │ 2 LOGO│  ← banner'a bindirilmiş, maks 120×120
│        └───────┘             │
│ 3  Başlık (22–26) + Alt(14–16)│  ↕ ~24 pt
│ 4  [ Kullanıcı / E-posta ]   │  ≥48 pt, r=10–12
│        ↕ ~16 pt              │
│ 5  [ Şifre        👁 ]        │  ≥48 pt, göster/gizle 44×44
│ 6  ☐ Beni hatırla   Şifremi? │  13–14 pt
│        ↕ ~24 pt              │
│ 7  [   GİRİŞ YAP   ]          │  ≥52 pt, dolgulu, tam genişlik
│                              │
│ 8  v1.0.0 · © 2026           │  11–12 pt, ortalı, gri
└─────────────────────────────┘  ← safe area boşluğu
```

---

## Hızlı Kontrol Listesi (Definition of Done)

- [ ] Kenar boşluğu her yerde `24 pt`.
- [ ] Tüm dokunulabilir öğeler `≥ 44 × 44 pt`.
- [ ] Banner `140–200 pt`, status bar için üstte `~44 pt` boşluk var.
- [ ] Logo yatay ortada, `≤ 120 × 120 pt`, banner'a bindirilmiş.
- [ ] Başlık `22–26 pt` kalın/ortalı; alt başlık `14–16 pt` gri, ≤ 2 satır.
- [ ] Input alanları `≥ 48 pt`, köşe `10–12 pt`, ikon + placeholder var.
- [ ] Şifrede göster/gizle ikonu `≥ 44×44`, alanlar arası `16 pt`.
- [ ] "Beni hatırla" solda, "Şifremi unuttum?" sağda, tek satır.
- [ ] Giriş butonu `≥ 52 pt`, dolgulu/yüksek kontrast, formdan `~24 pt` altta.
- [ ] Alt bilgi `11–12 pt`, ortalı/gri; altta safe area boşluğu var.
```
