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
- **Wochenberichte:** `reports/YYYY/MM/week-KW##.md`
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
| `woche zusammenfassen` | Wöchentliches Highlight-Summary erstellen |
| `monat zusammenfassen` | Monatlichen Trend-Bericht erstellen |
| `status anzeigen` | Aktuellen Stand der STATUS.md anzeigen |
