<<<<<<< HEAD
@echo off
echo Starting AICG Website...
echo.
echo 正在启动小天AICG网站...

REM 检查Python是否可用
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python not found. Please install Python 3.7+.
    echo 错误：未找到Python。请安装Python 3.7+。
    pause
    exit /b 1
)

echo.
echo Server starting on http://localhost:8000
echo 服务器启动在 http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo 按 Ctrl+C 停止服务器
echo.

python server.py

if %errorlevel% neq 0 (
    echo.
    echo Server failed to start. Possible issues:
    echo 服务器启动失败。可能的问题：
    echo 1. Port 8000 is already in use
    echo    端口8000已被占用
    echo 2. Python is not properly installed
    echo    Python未正确安装
    echo.
    pause
=======
@echo off
echo Starting AICG Website...
echo.
echo 正在启动小天AICG网站...

REM 检查Python是否可用
python --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Error: Python not found. Please install Python 3.7+.
    echo 错误：未找到Python。请安装Python 3.7+。
    pause
    exit /b 1
)

echo.
echo Server starting on http://localhost:8000
echo 服务器启动在 http://localhost:8000
echo.
echo Press Ctrl+C to stop the server
echo 按 Ctrl+C 停止服务器
echo.

python server.py

if %errorlevel% neq 0 (
    echo.
    echo Server failed to start. Possible issues:
    echo 服务器启动失败。可能的问题：
    echo 1. Port 8000 is already in use
    echo    端口8000已被占用
    echo 2. Python is not properly installed
    echo    Python未正确安装
    echo.
    pause
>>>>>>> 27a1e79cae8b7acd761a8a25b46ed6b11677ff6f
)