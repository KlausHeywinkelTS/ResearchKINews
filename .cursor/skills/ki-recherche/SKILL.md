---
name: ki-recherche
description: Führt die tägliche KI-News-Recherche durch. Sucht im Web nach aktuellen Meldungen zu KI-Tools, KI-Produkten, allgemeinen KI-News, Business und Forschung der letzten 48 Stunden. Bereitet Ergebnisse auf Deutsch auf, bewertet sie mit Sternen, markiert Must-Reads und speichert den Bericht als Markdown-Datei. Wird ausgelöst durch Befehle wie "recherche starten", "ki news", "tägliche recherche" oder "ki-recherche".
---

# KI-Recherche-Skill

## Workflow

### Schritt 1: Vorbereitung
- `STATUS.md` lesen → bekannte URLs der letzten 7 Tage extrahieren
- URL-Limit laden: maximal `140` bekannte URLs (nur neueste Eintraege behalten)
- `config/agent-config.md` lesen → Themen und Vorgaben laden
- Aktuelles Datum und Uhrzeit (UTC) notieren
- **48-Stunden-Cutoff berechnen:** `CUTOFF = aktuelles Datum/Uhrzeit − 48 Stunden`
  - Beispiel: Recherche am 2026-04-20 um 06:00 UTC → Cutoff = 2026-04-18 06:00 UTC
  - Diesen Cutoff-Zeitpunkt explizit festhalten und in Schritt 2 und 3 konsequent anwenden

### Schritt 2: Web-Recherche
Suche nach KI-News der **letzten 48 Stunden**. Thematische Gewichtung:

| Gewicht | Suchfokus |
|---------|-----------|
| ⭐ Hoch | KI-Tools & Produkte für Endnutzer (neue Tools, Updates, Releases) |
| Hoch | Neue KI-Modelle, Benchmarks, Ankündigungen |
| Hoch | KI-Business (Investitionen, Produktlaunches, Partnerschaften) |
| Mittel | KI-Forschung (Paper mit praktischer Relevanz) |
| Mittel | Updates von: OpenAI, Google, Anthropic, Meta AI, Mistral, xAI |

Ausschließlich Quellen berücksichtigen, deren Veröffentlichungsdatum **nach dem Cutoff** aus Schritt 1 liegt. Bereits bekannte URLs aus `STATUS.md` überspringen.

**Grundsätzlich ausschließen:** Finanzierungsrunden und Investitionsmeldungen (z. B. „Firma X sammelt Y Mio. ein") – diese nicht aufnehmen, auch wenn sie KI-Bezug haben.

### Schritt 2b: Datumsfilter (Pflicht vor Aufnahme in den Bericht)

Jeden gefundenen Artikel prüfen:
1. Veröffentlichungsdatum des Artikels ermitteln (aus Metadaten, Byline oder URL)
2. Liegt das Datum **vor dem Cutoff** → Artikel verwerfen, nicht aufnehmen
3. Ist das Veröffentlichungsdatum unklar oder nicht auffindbar → Artikel verwerfen
4. Nur Artikel mit gesichertem Datum **nach dem Cutoff** dürfen in den Bericht

### Schritt 3: Deduplizierung & Trennung

**Jede Meldung = ein eigener Eintrag.** Niemals zwei Themen oder Ankündigungen in einem Eintrag zusammenfassen, auch wenn sie vom selben Unternehmen stammen oder am selben Tag erschienen sind. Jeder Eintrag braucht genau eine Quelle und genau einen Link.

**Meldungstitel (fett, erste Zeile je Eintrag):** Immer **auf Deutsch** formulieren – kurz und klar wie eine Nachrichtenüberschrift. Den Originaltitel der Quelle nicht unübersetzt übernehmen, wenn er auf Englisch ist; Inhalt sinngemäß übersetzen. **Eigennamen und Produktnamen** (z. B. OpenAI, Gemini, Claude) unverändert lassen.

Falsch:
> **Cursor Composer 2 & Automations** – [ein Link für zwei Themen]

Richtig:
> **Cursor Composer 2: Neues Coding-Modell basiert auf Kimi** – [Link zu Composer-Artikel]
> **Cursor Automations: KI-Agenten reagieren auf GitHub & Slack** – [Link zu Automations-Artikel]

### Schritt 4: Bewertung

Jede Meldung bewerten:
- ⭐⭐⭐⭐⭐ = Must-Read (bahnbrechend, sehr hohe Relevanz)
- ⭐⭐⭐⭐ = Sehr relevant
- ⭐⭐⭐ = Relevant
- ⭐⭐ = Interessant
- ⭐ = Randnotiz

### Schritt 4: Bericht erstellen

Datei speichern unter: `reports/YYYY/MM/YYYY-MM-DD.md`

Vorlage (Meldungstitel fett: **deutsch**, siehe Schritt 3):

```markdown
# KI-News – [Wochentag], [DD. Monat YYYY]

## 🚨 Must-Reads
[Nur ⭐⭐⭐⭐⭐ Meldungen – oben, hervorgehoben]

**[Deutscher Meldungstitel]** ⭐⭐⭐⭐⭐ 🚨
*Quelle: [Name] | [Datum]*
[2–3 Sätze Zusammenfassung auf Deutsch]
🔗 [URL]

---

## Executive Summary
[3–5 Sätze: Überblick über die wichtigsten Entwicklungen des Tages]

## Top-Highlights
[Die 3–5 bedeutendsten Meldungen mit kurzer Einordnung, auch wenn bereits unter Must-Reads]

---

## Alle Meldungen

### 🛠️ KI-Tools & Produkte

**[Deutscher Meldungstitel]** ⭐⭐⭐⭐
*Quelle: [Name] | [Datum]*
[Zusammenfassung]
🔗 [URL]

### 📰 Allgemeine KI-News

### 💼 Business & Unternehmen

### 🔬 Forschung & Wissenschaft

---

## Quellen dieser Ausgabe
- [URL 1]
- [URL 2]
- ...

---
*Recherche durchgeführt: [Datum + Uhrzeit UTC] | Cutoff: [Cutoff-Datum + Uhrzeit UTC] | Meldungen gesamt: [N]*
```

**Pflichtangaben für Tagesberichte:**
- Sprache: Deutsch
- Umfang: **20–30 Meldungen** pro Bericht
- Bewertung: ⭐ 1–5 Sterne (Must-Reads = ⭐⭐⭐⭐⭐, immer ganz oben)
- **Ein Eintrag = eine Meldung = eine Quelle = ein Link** (niemals mehrere Themen zusammenfassen)

### Schritt 5: STATUS.md aktualisieren

Nach Abschluss `STATUS.md` aktualisieren:
1. Neuen Eintrag in "Letzte Recherche-Läufe" Tabelle hinzufügen
2. Alle neuen URLs unter "Bekannte URLs" eintragen (Format: `DATUM | URL`)
3. Einträge älter als 7 Tage entfernen
4. Zusätzliche Groessenbremse: nur die neuesten `140` URL-Einträge behalten (am Ende aeltere Zeilen abschneiden)
5. Statistiken aktualisieren

## Wochenbericht (`woche zusammenfassen`)

Alle relevanten Tagesberichte im angefragten Zeitraum lesen (`reports/YYYY/MM/YYYY-MM-DD.md`), Highlights nach Themen bündeln (Agenten, Modelle, Infrastruktur, Sicherheit, Gesellschaft etc.) und den Bericht **immer automatisch ohne Rückfrage** speichern.

Dateiname: `reports/YYYY/MM/week-YYYY-MM-DD_YYYY-MM-DD.md` (erster und letzter Tag des Zeitraums)
- Beispiel KW 14: `reports/2026/04/week-2026-04-01_2026-04-05.md`
- Beispiel KW 15: `reports/2026/04/week-2026-04-06_2026-04-12.md`

Vorlage:

```markdown
# KI-Wochen-Highlight – [DD. Monat] bis [DD. Monat YYYY]

## Top-Themen der Woche
[3–5 dominierende Themen mit Erklärung]

## Wichtigste Meldungen
[Top 10 Must-Reads / ⭐⭐⭐⭐⭐ der Woche]

## Trends & Entwicklungen
[Welche Entwicklungen zeichnen sich ab?]

## Statistik
- Recherche-Tage: [N]
- Erfasste Meldungen: [N]
- Must-Reads: [N]
```

## Monatsbericht (`monat zusammenfassen`)

Alle Wochen- und Tagesberichte des Monats analysieren, speichern unter `reports/YYYY/MM/monat-trend.md`:

```markdown
# KI-Trend-Bericht – [Monat YYYY]

## Monatszusammenfassung
## Top-Unternehmen & Produkte
## Technologie-Trends
## Wichtigste Releases & Ankündigungen
## Ausblick
## Statistik
```
