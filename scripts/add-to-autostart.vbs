Dim WshShell, Shortcut, StartupPath, BatFile

BatFile     = "C:\Users\Kl6713\AI-Agent\Research-KI-News\scripts\start-research.bat"
StartupPath = CreateObject("WScript.Shell").SpecialFolders("Startup")

Set WshShell = CreateObject("WScript.Shell")
Set Shortcut = WshShell.CreateShortcut(StartupPath & "\KI-Recherche.lnk")

Shortcut.TargetPath  = "cmd.exe"
Shortcut.Arguments   = "/c """ & BatFile & """"
Shortcut.WindowStyle = 7
Shortcut.Description = "KI-Recherche Agent starten"
Shortcut.Save()

MsgBox "Erledigt!" & vbCrLf & vbCrLf & _
       "Verknuepfung angelegt in:" & vbCrLf & _
       StartupPath & "\KI-Recherche.lnk" & vbCrLf & vbCrLf & _
       "Der Agent startet ab sofort bei jeder Anmeldung automatisch.", _
       vbInformation, "KI-Recherche Autostart"
