# Compile all Typst documents in the repository
Write-Host "Compiling all Typst documents..." -ForegroundColor Green

$files = @(
    "math.typ",
    "english.typ", 
    "408.typ",
    "probability.typ",
    "linear-algebra.typ"
)

foreach ($file in $files) {
    if (Test-Path $file) {
        Write-Host "Compiling $file..." -ForegroundColor Yellow
        typst compile $file
        if ($LASTEXITCODE -eq 0) {
            Write-Host "✓ Successfully compiled $file" -ForegroundColor Green
        } else {
            Write-Host "✗ Failed to compile $file" -ForegroundColor Red
        }
    } else {
        Write-Host "⚠ File $file not found" -ForegroundColor Yellow
    }
}

Write-Host "`nCompilation complete! Generated PDFs:" -ForegroundColor Green
Get-ChildItem -Name *.pdf | ForEach-Object { Write-Host "  - $_" -ForegroundColor Cyan }
