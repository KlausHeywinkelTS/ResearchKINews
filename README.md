# Research-KI-News – Täglicher KI-Recherche-Agent

Ein Cursor-integrierter Agent, der täglich automatisch nach aktuellen KI-News und Updates sucht, bewertet und strukturiert aufbereitet.

## Schnellstart

Tippe in den Cursor-Chat:

```
recherche starten
```

Der Agent durchsucht das Web, bewertet die Ergebnisse und speichert den Bericht unter `reports/YYYY/MM/YYYY-MM-DD.md`.

## Thematische Schwerpunkte

| Priorität | Thema |
|-----------|-------|
| ⭐ Fokus | KI-Tools & Produkte für Endnutzer |
| Hoch | Allgemeine KI-News (Modelle, Releases, Benchmarks) |
| Hoch | KI in Unternehmen / Business-Anwendungen |
| Mittel | KI-Forschung & Wissenschaft (Paper, Studien) |
| Mittel | Relevante Unternehmen (OpenAI, Google, Anthropic, Meta...) |

## Projektstruktur

```
Research-KI-News/
├── README.md                        # Diese Datei
├── TODO.md                          # Setup-Checkliste
├── STATUS.md                        # Recherche-Historie & bekannte URLs
├── config/
│   └── agent-config.md              # Vollständige Agent-Konfiguration
├── reports/
│   └── YYYY/MM/YYYY-MM-DD.md        # Tägliche Berichte
├── scripts/
│   └── start-research.ps1           # Task Scheduler Startskript
└── .cursor/
    ├── rules/
    │   └── ki-recherche-agent.mdc   # Cursor Rule (immer aktiv)
    └── skills/
        └── ki-recherche/
            └── SKILL.md             # Recherche-Skill
```

## Berichte

- **Täglich:** `reports/YYYY/MM/YYYY-MM-DD.md` – Executive Summary + 20–30 bewertete Meldungen
- **Wöchentlich:** `reports/YYYY/MM/week-KW.md` – Top-Themen der Woche
- **Monatlich:** `reports/YYYY/MM/monat-trend.md` – Trend-Bericht

## Automatischer Start (Task Scheduler)

Siehe `scripts/start-research.ps1` und `TODO.md` für die Einrichtung.

## Manuelle Ausführung

Cursor öffnen → Projekt laden → im Chat eingeben: `recherche starten`
