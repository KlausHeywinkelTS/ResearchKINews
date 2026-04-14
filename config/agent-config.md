# Agent-Konfiguration: KI-Recherche

Vollständige Vorgaben für den täglichen Recherche-Agenten.

---

## Thematische Schwerpunkte

| Priorität | Thema | Beschreibung |
|-----------|-------|--------------|
| ⭐ FOKUS | KI-Tools & Produkte (Endnutzer) | Neue Tools, Apps, Dienste, Produktupdates |
| Hoch | Allgemeine KI-News | Neue Modelle, Releases, Benchmarks, Ankündigungen |
| Hoch | Business & Unternehmen | KI-Einsatz in Firmen, Investitionen, Partnerschaften |
| Mittel | Forschung & Wissenschaft | Paper, Studien, arXiv-Veröffentlichungen mit Relevanz |
| Mittel | Schlüsselunternehmen | OpenAI, Google DeepMind, Anthropic, Meta AI, Mistral, xAI, Apple, Microsoft |

**Nicht im Fokus (kann weggelassen werden):**
- KI-Regulierung & Politik (nur wenn sehr bedeutend)
- KI-Ethik & Sicherheit (nur wenn sehr bedeutend)

**Ausgeschlossen – diese Meldungen nie aufnehmen:**
- Finanzierungsrunden, Kapitalerhöhungen, Investitionen (z.B. "Firma X sammelt Y Millionen Dollar ein")
- IPOs und Börsengänge von KI-Unternehmen
- Bewertungen und Firmenwert-Meldungen

---

## Quellenauswahl

Der Agent wählt Quellen **selbst nach Relevanz und Qualität**. Orientierung:

**Bevorzugte Quellen (Beispiele, nicht abschließend):**
- The Verge, TechCrunch, VentureBeat, Ars Technica, Wired
- Heise Online, t3n, Golem, Computerwoche
- Offizielle Unternehmensblogs (OpenAI, Google, Anthropic, Meta AI...)
- arXiv (nur bei hoher praktischer Relevanz)
- Hacker News (Top-Stories)

**Zeitfenster:** Ausschließlich Artikel der **letzten 48 Stunden**

---

## Deduplizierung

- Vor jeder Recherche `STATUS.md` lesen
- Alle URLs aus dem Abschnitt "Bekannte URLs (letzte 7 Tage)" prüfen
- Bereits erfasste Artikel **nicht erneut aufnehmen**
- Artikel, die mit vergleichbarenm Inhalt bereits am Vortag enthalten waren, nicht erneut aufnehmen
- Nach der Recherche `STATUS.md` mit neuen URLs aktualisieren
- URL-Liste klein halten: maximal **140** bekannte URL-Eintraege speichern (nur neueste behalten)

---

## Bewertung & Priorisierung

Jede Meldung erhält:

| Feld | Beschreibung |
|------|--------------|
| ⭐ Bewertung | 1–5 Sterne (Relevanz für Fokusthemen + Wichtigkeit) |
| 🚨 Must-Read | Für Meldungen mit ⭐⭐⭐⭐⭐ oder außerordentlicher Bedeutung |
| Kategorie | Thematische Einordnung |

**Bewertungskriterien:**
- Relevanz für KI-Tools & Endnutzer (Fokus = höheres Gewicht)
- Reichweite / Bedeutung der Quelle oder Ankündigung
- Aktualität (je frischer, desto besser)
- Praktischer Nutzen für den Leser

---

## Ausgabeformat

**Sprache:** Deutsch (Zusammenfassungen, Kommentare, Abschnittsüberschriften)  
**Meldungstitel** (fett, erste Zeile je Eintrag): **auf Deutsch** – prägnante Überschrift, nicht den englischen Originaltitel 1:1 übernehmen; Eigennamen und Produktnamen unverändert.  
**Quellen:** alle Sprachen, bevorzugt Deutsch & Englisch

### Berichtsstruktur

```markdown
# KI-News – [DATUM, Wochentag]

## 🚨 Must-Reads
[Meldungen mit ⭐⭐⭐⭐⭐ – immer ganz oben]

## Executive Summary
[3–5 Sätze: Was waren die wichtigsten Entwicklungen heute?]

## Top-Highlights
[Die 3–5 bedeutendsten Meldungen mit kurzer Einordnung]

## Alle Meldungen

### 🛠️ KI-Tools & Produkte
### 📰 Allgemeine KI-News
### 💼 Business & Unternehmen
### 🔬 Forschung & Wissenschaft

## Quellen & Links
[Vollständige URL-Liste aller Quellen]
```

### Wochenrückschau-Format

```markdown
# KI-Wochenrückschau — [TT. Monat] bis [TT. Monat YYYY] (KW ##)

> Zusammenfassung der täglichen KI-News-Berichte vom [TT.MM.] bis [TT.MM.YYYY].

---

## Das prägende Bild der Woche
[2–3 Sätze: Übergreifendes Thema oder Stimmungsbild]

---

## Highlights nach Thema

### [Thema 1, z.B. Agenten / Modelle / Infrastruktur / Sicherheit / Gesellschaft]
[Fließtext, 3–6 Sätze, wichtigste Meldungen gebündelt]

### [Thema 2 ...]
...

---

## Woche in einem Satz
[Prägnantes Fazit]

---

## Tagesberichte dieser Woche

| Tag | Datei | Meldungen |
|-----|-------|-----------|
| [Wochentag, TT.MM.] | [YYYY-MM-DD.md](YYYY-MM-DD.md) | [Anzahl] |
...

---

*Wochenrückschau erstellt: YYYY-MM-DD | Tagesberichte gesamt: N | Meldungen gesamt: ~N*
```

### Eintragsformat pro Meldung

```markdown
**[Deutscher Meldungstitel]** ⭐⭐⭐⭐  
*Quelle: [Name] | [Datum]*  
[2–3 Sätze Zusammenfassung auf Deutsch]  
🔗 [URL]
```

---

## Speicherung

- **Tagesberichte:** `reports/YYYY/MM/YYYY-MM-DD.md`
- **Wochenberichte:** `reports/YYYY/MM/week-YYYY-MM-DD_YYYY-MM-DD.md` (erster und letzter Tag des Zeitraums)
  - Beispiel: `reports/2026/04/week-2026-04-01_2026-04-05.md`
  - Wochenberichte werden **immer automatisch als Datei gespeichert**, ohne dass der Nutzer explizit darum bitten muss.
- **Monatsberichte:** `reports/YYYY/MM/monat-trend.md`

---

## Umfang

- **Ziel:** 20–30 Meldungen pro Tag
- **Minimum:** 10 Meldungen (bei nachrichtenarmen Tagen)
- **Maximum:** 35 Meldungen (nur bei außergewöhnlich vielen relevanten News)

---

## Trigger-Befehle

| Befehl | Aktion |
|--------|--------|
| `recherche starten` | Tägliche Recherche durchführen |
| `woche zusammenfassen` / `wochenrückschau` | Wöchentliches Highlight-Summary als MD-Datei speichern (`week-YYYY-MM-DD_YYYY-MM-DD.md`) |
| `monat zusammenfassen` | Monatlichen Trend-Bericht erstellen |
| `status anzeigen` | Aktuellen Stand der STATUS.md anzeigen |
