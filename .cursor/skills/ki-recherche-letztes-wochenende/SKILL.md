---
name: ki-recherche-letztes-wochenende
description: Führt die KI-News-Tagesrecherche für den letzten vollständig abgeschlossenen Samstag und Sonntag durch und erstellt je einen Tagesbericht. Use when the user invokes /ki-recherche-letztes-wochenende or asks to research KI news for the last weekend.
disable-model-invocation: true
---

# KI-Recherche für das letzte Wochenende

1. Bestimme anhand der lokalen Systemzeit das jüngste vollständig abgeschlossene Wochenende. Bezeichne dessen Samstag als `SAMSTAG` und Sonntag als `SONNTAG`. Ein noch laufendes Wochenende darf nicht verwendet werden.
2. Lies `.cursor/skills/ki-recherche/SKILL.md` und `config/agent-config.md`. Befolge alle dort definierten Vorgaben für Recherche, Quellenprüfung, Bewertung, Deduplizierung und `STATUS.md`.
3. Führe die Tagesrecherche getrennt für `SAMSTAG` und `SONNTAG` aus. Berücksichtige je Bericht ausschließlich Meldungen mit gesichertem Veröffentlichungsdatum innerhalb des jeweiligen Kalendertags von `00:00` bis `23:59` UTC.
4. Erstelle zwei vollständige Tagesberichte: `reports/YYYY/MM/YYYY-MM-DD.md` für `SAMSTAG` und `SONNTAG`. Verwende für beide Berichte die Standardstruktur des Skills `ki-recherche`.
5. Aktualisiere `STATUS.md` nach beiden Recherchen einmal vollständig mit sämtlichen neuen URLs.
6. Gib die beiden Speicherpfade sowie die jeweilige Zahl der Meldungen und Must-Reads aus.
