---
name: ki-recherche-gestern
description: Startet die KI-News-Tagesrecherche für den vorherigen Kalendertag und speichert den Bericht unter dem gestrigen Datum. Use when the user invokes /ki-recherche-gestern or asks to research KI news for yesterday.
disable-model-invocation: true
---

# KI-Recherche für gestern

1. Bestimme den vorherigen Kalendertag anhand der lokalen Systemzeit und bezeichne ihn als `ZIELDATUM`.
2. Lies `.cursor/skills/ki-recherche/SKILL.md` und `config/agent-config.md`. Befolge sämtliche Vorgaben für die tägliche Recherche, Bewertung, Quellenprüfung, Deduplizierung und Aktualisierung von `STATUS.md`.
3. Recherchiere ausschließlich Meldungen, deren gesichertes Veröffentlichungsdatum auf `ZIELDATUM` liegt. Der Berichtszeitraum ist `ZIELDATUM 00:00` bis `23:59` UTC.
4. Speichere den Tagesbericht als `reports/YYYY/MM/YYYY-MM-DD.md`, wobei Datum und Überschrift `ZIELDATUM` verwenden.
5. Gib nach Abschluss den Speicherpfad, die Anzahl der Meldungen und die Anzahl der Must-Reads aus.
