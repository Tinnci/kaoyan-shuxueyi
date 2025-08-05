# 批量编译错题集
Write-Host "🚀 开始编译错题集..." -ForegroundColor Green

# 设置根目录
$rootDir = Get-Location
$errorCount = 0
$successCount = 0

# 编译汇总文件
Write-Host "`n📋 编译错题集汇总..." -ForegroundColor Cyan
try {
    typst compile --root $rootDir "错题集/错题集汇总.typ"
    Write-Host "✅ 错题集汇总编译成功" -ForegroundColor Green
    $successCount++
} catch {
    Write-Host "❌ 错题集汇总编译失败: $_" -ForegroundColor Red
    $errorCount++
}

# 查找所有错题文件并编译
$questionFiles = Get-ChildItem -Path "错题集" -Filter "*.typ" -Recurse | Where-Object { 
    $_.Name -ne "错题集汇总.typ" -and $_.Name -ne "单题模板.typ" 
}

if ($questionFiles.Count -eq 0) {
    Write-Host "⚠️  未找到错题文件" -ForegroundColor Yellow
} else {
    Write-Host "`n📚 找到 $($questionFiles.Count) 个错题文件，开始编译..." -ForegroundColor Cyan
    
    foreach ($file in $questionFiles) {
        $relativePath = $file.FullName.Substring($rootDir.Path.Length + 1)
        Write-Host "🔄 编译: $relativePath" -ForegroundColor Yellow
        
        try {
            typst compile --root $rootDir $relativePath
            Write-Host "✅ $($file.BaseName) 编译成功" -ForegroundColor Green
            $successCount++
        } catch {
            Write-Host "❌ $($file.BaseName) 编译失败: $_" -ForegroundColor Red
            $errorCount++
        }
    }
}

# 显示统计信息
Write-Host "`n📊 编译完成!" -ForegroundColor Green
Write-Host "✅ 成功: $successCount 个文件" -ForegroundColor Green
Write-Host "❌ 失败: $errorCount 个文件" -ForegroundColor Red

if ($errorCount -eq 0) {
    Write-Host "🎉 所有文件编译成功！" -ForegroundColor Green
} else {
    Write-Host "⚠️  请检查失败的文件" -ForegroundColor Yellow
}

# 列出生成的PDF文件
Write-Host "`n📄 生成的PDF文件:" -ForegroundColor Cyan
Get-ChildItem -Path "错题集" -Filter "*.pdf" -Recurse | ForEach-Object {
    $size = [math]::Round($_.Length / 1KB, 2)
    Write-Host "  📄 $($_.Name) ($size KB)" -ForegroundColor White
}
