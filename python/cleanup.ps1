param (
    [switch]$f
)

Remove-Item -Path "reports" -Recurse -Force -ErrorAction SilentlyContinue
Remove-Item -Path ".pytest_cache" -Recurse -Force -ErrorAction SilentlyContinue
Get-ChildItem -Recurse -Include __pycache__, *.pyc, *.pyo | Remove-Item -Force -Recurse

if ($f) {
    Remove-Item -Path "venv" -Recurse -Force -ErrorAction SilentlyContinue
}