Write-Host "Starting AICG Website..." -ForegroundColor Green
Write-Host ""
Write-Host "正在启动小天AICG网站..." -ForegroundColor Green
Write-Host ""

# 检查Python是否可用
try {
    $pythonVersion = python --version 2>&1
    Write-Host "Python detected: $pythonVersion" -ForegroundColor Cyan
} catch {
    Write-Host "Error: Python not found. Please install Python 3.7+." -ForegroundColor Red
    Write-Host "错误：未找到Python。请安装Python 3.7+。" -ForegroundColor Red
    pause
    exit 1
}

Write-Host ""
Write-Host "Server starting on http://localhost:8000" -ForegroundColor Cyan
Write-Host "服务器启动在 http://localhost:8000" -ForegroundColor Cyan
Write-Host ""
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
Write-Host "按 Ctrl+C 停止服务器" -ForegroundColor Yellow
Write-Host ""

# 启动服务器
python server.py

if ($LASTEXITCODE -ne 0) {
    Write-Host ""
    Write-Host "Server failed to start. Possible issues:" -ForegroundColor Red
    Write-Host "服务器启动失败。可能的问题：" -ForegroundColor Red
    Write-Host "1. Port 8000 is already in use" -ForegroundColor Yellow
    Write-Host "   端口8000已被占用" -ForegroundColor Yellow
    Write-Host "2. Python is not properly installed" -ForegroundColor Yellow
    Write-Host "   Python未正确安装" -ForegroundColor Yellow
    Write-Host ""
    pause
}