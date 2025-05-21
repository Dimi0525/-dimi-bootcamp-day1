verkaufsliste.ps1
# CSV-Datei mit Verkaufsdaten erzeugen
$csvPath = "C:\Users\Dimitrios\Desktop\Dimi-Business\02_Drucker_Projekte\verkaufsliste.csv"

# Daten vorbereiten
$verkaeufe = @(
    [PSCustomObject]@{ Drucker = "HP OfficeJet 6700"; Preis = 65; Käufer = "Frau Schneider"; Datum = Get-Date -Format 'dd.MM.yyyy'; Status = "verkauft" },
    [PSCustomObject]@{ Drucker = "Brother MFC-J5320DW"; Preis = 75; Käufer = "Herr Maier"; Datum = Get-Date -Format 'dd.MM.yyyy'; Status = "verkauft" },
    [PSCustomObject]@{ Drucker = "Epson WF-3640"; Preis = 55; Käufer = "Ali aus Hamburg"; Datum = Get-Date -Format 'dd.MM.yyyy'; Status = "verkauft" }
)

# CSV schreiben
$verkaeufe | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

Write-Host "`n✅ CSV-Datei erfolgreich erstellt unter:`n$csvPath" -ForegroundColor Green
$csvPath = "C:\Users\Dimitrios\Desktop\Dimi-Business\02_Drucker_Projekte\verkaufsliste.csv"

$verkaeufe = @(
    [PSCustomObject]@{ Drucker = "HP OfficeJet 6700"; Preis = 65; Käufer = "Frau Schneider"; Datum = Get-Date -Format 'dd.MM.yyyy'; Status = "verkauft" },
    [PSCustomObject]@{ Drucker = "Brother MFC-J5320DW"; Preis = 75; Käufer = "Herr Maier"; Datum = Get-Date -Format 'dd.MM.yyyy'; Status = "verkauft" },
    [PSCustomObject]@{ Drucker = "Epson WF-3640"; Preis = 55; Käufer = "Ali aus Hamburg"; Datum = Get-Date -Format 'dd.MM.yyyy'; Status = "verkauft" }
)

$verkaeufe | Export-Csv -Path $csvPath -NoTypeInformation -Encoding UTF8

Write-Host "`n✅ CSV-Datei erfolgreich erstellt unter:`n$csvPath" -ForegroundColor Green
$csvPath = "C:\Users\Dimitrios\Desktop\Dimi-Business\02_Drucker_Projekte\verkaufsliste.csv"
$verkaeufe = Import-Csv -Path $csvPath

foreach ($verkauf in $verkaeufe) {
    Write-Host "🖨 Drucker: $($verkauf.Drucker)"
    Write-Host "💰 Preis:   $($verkauf.Preis) €"
    Write-Host "👤 Käufer:  $($verkauf.Käufer)"
    Write-Host "📅 Datum:   $($verkauf.Datum)"
    Write-Host "📌 Status:  $($verkauf.Status)"
    Write-Host "`n----------------------------`n"
}
# Pfad zur CSV-Datei
$csvPath = "C:\Users\Dimitrios\Desktop\Dimi-Business\02_Drucker_Projekte\verkaufsliste.csv"

# Daten einlesen
$verkaeufe = Import-Csv -Path $csvPath

# Zielordner für die Beschreibungstexte
$zielOrdner = "C:\Users\Dimitrios\Desktop\Dimi-Business\04_Marktplatz-Listings\eBay-Beschreibungen"
New-Item -Path $zielOrdner -ItemType Directory -Force

# Für jeden Eintrag eine Beschreibung erstellen
foreach ($verkauf in $verkaeufe) {
    $fileName = "$($verkauf.Drucker.Replace(' ', '_'))_beschreibung.txt"
    $filePath = Join-Path $zielOrdner $fileName

    $beschreibung = @"
📦 Produkt: $($verkauf.Drucker)
💰 Preis: $($verkauf.Preis) €
👤 Käufer: $($verkauf.Käufer)
📅 Verkaufsdatum: $($verkauf.Datum)
📌 Status: $($verkauf.Status)

📝 Beschreibungstext:
Dieser hochwertige Drucker vom Typ "$($verkauf.Drucker)" wurde erfolgreich verkauft.
Er erzielte einen Preis von $($verkauf.Preis) € und ging am $($verkauf.Datum) an "$($verkauf.Käufer)".
Das Gerät wurde vollständig überprüft und befindet sich in einwandfreiem Zustand.

Ideal für Käufer, die Qualität zum fairen Preis suchen.
"@

    Set-Content -Path $filePath -Value $beschreibung
}

Write-Host "`n✅ Alle eBay-Beschreibungen wurden erstellt im Ordner:`n$($zielOrdner)"
