# kalendar
CB/PMR/HAM kalendář akcí a závodů

## Rychlá analýza projektu
Tento repozitář obsahuje statickou stránku publikovanou přes GitHub Pages. Jádrem je jediný HTML soubor s vloženými Google Calendar embed odkazy, doplněný o jednoduché CSS a ikonky pro URL/iCal odkazy. Stránka slouží jako rozcestník pro více tematických kalendářů a nabízí i kopírování iCal URL přímo z UI. Z technického pohledu jde o jednoduchý statický web bez build procesu, takže údržba spočívá hlavně v aktualizaci odkazů, textů a stylů.

### Struktura repozitáře
- `index.html` – hlavní stránka s vloženými kalendáři a popisy.
- `custom.css` – vlastní styly pro layout a vizuál.
- `_config.yml` – konfigurace GitHub Pages/Jekyll (např. theme a SEO).
- Ikony a favicona (`ical-icon.png`, `url-icon.png`, `favicon.ico`).

## TODO návrhy na úpravy
- [ ] **Zjednodušit embed část** – vytvořit přehledný seznam kalendářů z jedné datové struktury (např. JSON v JS) a generovat karty/iframe dynamicky, aby se minimalizovala duplicita HTML.
- [ ] **Lepší přístupnost** – doplnit popisky/aria-labely u tlačítek a odkazů, sjednotit heading hierarchii a upravit kontrasty v CSS.
- [ ] **Responzivní layout** – vylepšit chování na mobilech (např. změnit tabulku mini-kalendářů na stacking karty).
- [ ] **Dokumentace** – přidat do README sekci „Jak aktualizovat kalendáře“ a „Jak nasadit na GitHub Pages“.
- [ ] **Monitoring odkazů** – krátký skript nebo GitHub Action, která ověří dostupnost iCal/URL odkazů.
