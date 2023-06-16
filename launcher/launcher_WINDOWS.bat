@echo off
pushd "%~dp0"
cd /d "%~dp0"

where java >nul 2>nul
if %errorlevel%==1 (
    @echo Java is not installed.
    exit
)

FOR /F "delims=" %i IN ('java -version') DO set java_version=%i
if NOT "%java_version%"=="%java_version:32-Bit=%" (
    @echo Wrong Java version: Java 32-Bit instead of 64-Bit is installed.
    exit
)

java -Xmx4608M -jar PokeRandoZX.jar please-use-the-launcher

echo Press any key to exit...
pause >nul
