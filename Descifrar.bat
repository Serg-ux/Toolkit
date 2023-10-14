@echo off
setlocal enabledelayedexpansion

rem Solicitar al usuario la ruta del archivo a descifrar
set /p "archivo=Ruta del archivo a descifrar: "

rem Descifrar el archivo
cipher /d "!archivo!"

echo Archivo descifrado exitosamente: !archivo!
exit /b 0
