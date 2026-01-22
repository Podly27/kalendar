# CB/PMR/HAM kalendář akcí a závodů

## Odkazy na stránky
- Primární: https://podly27.github.io/CB-PMR-HAM-kalendar/
- Sekundární: https://kalendar.svysilackou.cz/

## Rychlá analýza projektu
Tento repozitář obsahuje statickou stránku publikovanou přes GitHub Pages. Jádrem je jediný HTML soubor s vloženými Google Calendar embed odkazy, doplněný o jednoduché CSS a ikonky pro URL/iCal odkazy. Stránka slouží jako rozcestník pro více tematických kalendářů a nabízí i kopírování iCal URL přímo z UI. Z technického pohledu jde o jednoduchý statický web bez build procesu, takže údržba spočívá hlavně v aktualizaci odkazů, textů a stylů.

### Struktura repozitáře
- `index.html` – hlavní stránka s vloženými kalendáři a popisy.
- `custom.css` – vlastní styly pro layout a vizuál.
- `_config.yml` – konfigurace GitHub Pages/Jekyll (např. theme a SEO).
- Ikony a favicona (`ical-icon.png`, `url-icon.png`, `favicon.ico`).

## Jak aktualizovat kalendáře
Kalendáře jsou definované v `index.html` jako jedna datová struktura v JavaScriptu (pole `calendars`). Pokud potřebujete přidat nebo upravit položku:
1. Otevřete `index.html` a najděte sekci se skriptem `calendars`.
2. Přidejte/aktualizujte objekt s názvem, `embedSrc`, `icalSrc` a `agendaSrc`.
3. Uložte soubor a případně zkontrolujte výsledný layout v prohlížeči.

## Jak nasadit na GitHub Pages
Tento projekt je statický a běží na GitHub Pages bez build kroku.
1. Pushněte změny do hlavní větve repozitáře.
2. V nastavení repozitáře otevřete **Settings → Pages**.
3. Zkontrolujte, že je zdroj nastaven na hlavní větev (root).
4. Počkejte na deploy – URL bude odpovídat nastavení v Pages.
