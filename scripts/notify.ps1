Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.MessageBox]::Show(
    "Cursor wurde geoeffnet." + [System.Environment]::NewLine + [System.Environment]::NewLine +
    "Tippe im Cursor-Chat:" + [System.Environment]::NewLine +
    "    recherche starten",
    "KI-Recherche Agent",
    [System.Windows.Forms.MessageBoxButtons]::OK,
    [System.Windows.Forms.MessageBoxIcon]::Information
) | Out-Null
