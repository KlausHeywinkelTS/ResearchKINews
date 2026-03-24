# =============================================================================
# KI-Recherche – Täglicher Starter (Task Scheduler)
# =============================================================================
# Dieses Skript wird vom Windows Task Scheduler täglich ausgeführt.
# Es öffnet Cursor mit dem Recherche-Projekt und zeigt eine Windows-Benachrichtigung.
#
# Einrichtung: Siehe TODO.md → Phase 2: Task Scheduler einrichten
# =============================================================================

$ProjectPath = "C:\Users\Kl6713\AI-Agent\Research-KI-News"

# Cursor-Installationspfade (in Priorität):
$CursorPaths = @(
    "C:\Program Files\cursor\Cursor.exe",
    "$env:LOCALAPPDATA\Programs\cursor\Cursor.exe",
    "C:\Program Files (x86)\Cursor\Cursor.exe"
)

$CursorExe = $null
foreach ($path in $CursorPaths) {
    if (Test-Path $path) {
        $CursorExe = $path
        break
    }
}

# Cursor öffnen
if ($CursorExe) {
    Start-Process $CursorExe -ArgumentList "`"$ProjectPath`""
    Write-Host "Cursor geöffnet mit Projekt: $ProjectPath"
} else {
    Write-Warning "Cursor nicht gefunden. Bitte Pfad in start-research.ps1 anpassen."
    Write-Warning "Geprüfte Pfade: $($CursorPaths -join ', ')"
}

# Kurz warten, damit Cursor starten kann
Start-Sleep -Seconds 2

# MessageBox anzeigen – bleibt offen bis der Nutzer auf OK klickt
Add-Type -AssemblyName System.Windows.Forms

[System.Windows.Forms.MessageBox]::Show(
    "Cursor wurde mit dem KI-Recherche-Projekt geöffnet.`n`nBitte im Cursor-Chat eingeben:`n`n    recherche starten`n`nDann startet der Agent automatisch.",
    "KI-Recherche Agent bereit",
    [System.Windows.Forms.MessageBoxButtons]::OK,
    [System.Windows.Forms.MessageBoxIcon]::Information
) | Out-Null

Write-Host "Fertig. Bitte in Cursor: 'recherche starten' eingeben."

