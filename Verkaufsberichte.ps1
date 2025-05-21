Verkaufsberichte
# Zielordner vorbereiten
$reportFolder = "C:\Users\Dimitrios\Desktop\Dimi-Business\02_Drucker_Projekte\Verkaufsberichte"
New-Item -Path $reportFolder -ItemType Directory -Force

# Beispiel-Daten für 3 verkaufte Geräte
$verkaeufe = @(
    @{ Name = "HP OfficeJet 6700"; Preis = 65; Käufer = "Frau Schneider" },
    @{ Name = "Brother MFC-J5320DW"; Preis = 75; Käufer = "Herr Maier" },
    @{ Name = "Epson WF-3640"; Preis = 55; Käufer = "Ali aus Hamburg" }
)

# Für jeden Verkauf Bericht schreiben
for ($i = 0; $i -lt $verkaeufe.Count; $i++) {
    $drucker = $verkaeufe[$i]
    $fileName = "Verkauf_$($i + 1).txt"
    $filePath = Join-Path $reportFolder $fileName
    $content = @"
Drucker: $($drucker.Name)
Preis: $($drucker.Preis) €
Käufer: $($drucker.Käufer)
Datum: $(Get-Date -Format 'dd.MM.yyyy')
Status: verkauft
"@
    Set-Content -Path $filePath -Value $content
}

Write-Host "`n✅ Verkaufsberichte mit Namen, Preis & Käufer erstellt!" -ForegroundColor Cyan
