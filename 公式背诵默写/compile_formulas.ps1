# PowerShell Script for Compiling Typst Files

# Directory containing formula templates (current directory)
$dirName = $PSScriptRoot

# Get all .typ files
$typstFiles = Get-ChildItem -Path $dirName -Filter "*.typ" | Where-Object { $_.Name -ne "math-formula-template.typ" }

Write-Host "Found $($typstFiles.Count) files to compile:"
foreach ($file in $typstFiles) {
    Write-Host "  - $($file.Name)"
}

# Compile each Typst file
foreach ($file in $typstFiles) {
    Write-Host "Compiling $($file.Name)..." -ForegroundColor Green
    try {
        $result = typst compile $file.FullName 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-Host "  Success!" -ForegroundColor Green
        } else {
            Write-Host "  Error: $result" -ForegroundColor Red
        }
    } catch {
        Write-Host "  Exception: $($_.Exception.Message)" -ForegroundColor Red
    }
}
