# jeżeli nie ma wirtualnego środowiska, to trzeba by je zainicjalizować, inaczej nie zadziałają testy
if (-not (Test-Path "venv")) {
	Write-Host "Pierwsze uruchomienie, inicjalizujemy srodowisko"
	& ".\setup.ps1"
}

# aktywujemy wirtualne środowisko
.\venv\Scripts\Activate.ps1
# odpalenie testów
Write-Host "Testy..."

$timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$filename = "reports/report-$timestamp.html"
pytest ./src/tests --no-header -v --html=$filename --self-contained-html 

Invoke-Item $filename

deactivate