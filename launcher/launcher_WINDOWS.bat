@echo off
pushd "%~dp0"
cd /d "%~dp0"

where java >nul 2>nul
if %errorlevel%==1 (
    @echo Java not found.
    exit
)

java -Xmx4608M -jar PokeRandoZX.jar please-use-the-launcher

echo Press any key to exit...
pause >nul
