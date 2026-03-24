---
name: ki-recherche
description: Führt die tägliche KI-News-Recherche durch. Sucht im Web nach aktuellen Meldungen zu KI-Tools, KI-Produkten, allgemeinen KI-News, Business und Forschung der letzten 48 Stunden. Bereitet Ergebnisse auf Deutsch auf, bewertet sie mit Sternen, markiert Must-Reads und speichert den Bericht als Markdown-Datei. Wird ausgelöst durch Befehle wie "recherche starten", "ki news", "tägliche recherche" oder "ki-recherche".
---

# KI-Recherche-Skill

## Workflow

### Schritt 1: Vorbereitung
- `STATUS.md` lesen → bekannte URLs der letzten 7 Tage extrahieren
- `config/agent-config.md` lesen → Themen und Vorgaben laden
- Aktuelles Datum und Kalenderwoche notieren

### Schritt 2: Web-Recherche
Suche nach KI-News der **letzten 48 Stunden**. Thematische Gewichtung:

| Gewicht | Suchfokus |
|---------|-----------|
| ⭐ Hoch | KI-Tools & Produkte für Endnutzer (neue Tools, Updates, Releases) |
| Hoch | Neue KI-Modelle, Benchmarks, Ankündigungen |
| Hoch | KI-Business (Investitionen, Produktlaunches, Partnerschaften) |
| Mittel | KI-Forschung (Paper mit praktischer Relevanz) |
| Mittel | Updates von: OpenAI, Google, Anthropic, Meta AI, Mistral, xAI |

Ausschließlich Quellen der letzten 48 Stunden berücksichtigen. Bereits bekannte URLs aus `STATUS.md` überspringen.

### Schritt 3: Deduplizierung & Trennung

**Jede Meldung = ein eigener Eintrag.** Niemals zwei Themen oder Ankündigungen in einem Eintrag zusammenfassen, auch wenn sie vom selben Unternehmen stammen oder am selben Tag erschienen sind. Jeder Eintrag braucht genau eine Quelle und genau einen Link.

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

Vorlage:

```markdown
# KI-News – [Wochentag], [DD. Monat YYYY]

## 🚨 Must-Reads
[Nur ⭐⭐⭐⭐⭐ Meldungen – oben, hervorgehoben]

**[TITEL]** ⭐⭐⭐⭐⭐ 🚨
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

**[TITEL]** ⭐⭐⭐⭐
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
*Recherche durchgeführt: [Datum + Uhrzeit] | Meldungen gesamt: [N]*
```

### Schritt 5: STATUS.md aktualisieren

Nach Abschluss `STATUS.md` aktualisieren:
1. Neuen Eintrag in "Letzte Recherche-Läufe" Tabelle hinzufügen
2. Alle neuen URLs unter "Bekannte URLs" eintragen (Format: `DATUM | URL`)
3. Einträge älter als 7 Tage entfernen
4. Statistiken aktualisieren

## Wochenbericht (`woche zusammenfassen`)

Alle Tagesberichte der aktuellen/letzten Woche lesen, dann speichern unter `reports/YYYY/MM/week-KW##.md`:

```markdown
# KI-Wochen-Highlight – KW## / YYYY

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
