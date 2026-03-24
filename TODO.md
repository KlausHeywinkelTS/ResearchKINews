# TODO – Projekt-Setup: Research-KI-News

Checkliste für die vollständige Einrichtung des täglichen KI-Recherche-Agenten.

---

## Phase 1: Cursor-Konfiguration

- [x] Projektstruktur anlegen
- [x] `README.md` erstellen
- [x] `STATUS.md` anlegen
- [x] `config/agent-config.md` erstellen
- [x] Cursor Rule `.cursor/rules/ki-recherche-agent.mdc` erstellen
- [x] Cursor Skill `.cursor/skills/ki-recherche/SKILL.md` erstellen
- [x] **Cursor neu starten**, damit Rule und Skill geladen werden
- [x] Ersten manuellen Test durchführen: im Chat `recherche starten` eingeben
- [x] Ergebnis in `reports/2026/03/` prüfen ✓ (27 Meldungen, 2 Must-Reads)

---

## Phase 2: Autostart einrichten (Windows)

### Voraussetzungen prüfen

- [x] Cursor-Pfad ermitteln: `C:\Program Files\cursor\Cursor.exe`
- [x] Skript testen: `scripts\start-research.bat` funktioniert ✓
- [x] Task Scheduler nicht nutzbar (keine Admin-Rechte)

### Autostart über Windows Startup-Ordner

- [x] `scripts\autostart-ki-recherche.bat` erstellt
- [ ] Datei in Autostart-Ordner kopieren: `Win + R` → `shell:startup` → Datei hineinkopieren
- [ ] Testen: Abmelden & neu anmelden → Cursor und Benachrichtigung erscheinen automatisch

---

## Phase 3: Wöchentliche & Monatliche Berichte

- [ ] Nach der ersten vollen Woche: wöchentliches Summary testen (`woche zusammenfassen`)
- [ ] Nach dem ersten vollen Monat: monatlichen Trend-Bericht testen (`monat zusammenfassen`)

---

## Phase 4: Feintuning (nach erstem Betrieb)

- [ ] Qualität der gefundenen Quellen prüfen und ggf. in `config/agent-config.md` anpassen
- [ ] Bewertungskriterien anpassen falls nötig
- [ ] Thematische Schwerpunkte nachjustieren

---

## Schnell-Referenz: Trigger-Befehle

| Befehl im Chat | Aktion |
|----------------|--------|
| `recherche starten` | Tägliche Recherche starten |
| `woche zusammenfassen` | Wöchentliches Highlight-Summary erstellen |
| `monat zusammenfassen` | Monatlichen Trend-Bericht erstellen |
| `status anzeigen` | Recherche-Historie anzeigen |
