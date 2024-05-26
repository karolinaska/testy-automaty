# jeżeli nie ma wirtualnego środowiska, to trzeba by je zainicjalizować, inaczej nie zadziałają testy
if (-not (Test-Path "venv")) {
	Write-Host "Pierwsze uruchomienie, inicjalizujemy srodowisko"
	& ".\setup.ps1"
}

# aktywujemy wirtualne środowisko
.\venv\Scripts\Activate.ps1
# odpalenie testów
Write-Host "Testy..."

$filename = "results/report.html"
robot -d results ./tests/

Invoke-Item $filename

deactivate