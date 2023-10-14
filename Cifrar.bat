@echo off
setlocal enabledelayedexpansion

rem Solicitar al usuario la ruta del archivo a cifrar
set /p "archivo=Ruta del archivo a cifrar: "

rem Cifrar el archivo
cipher /e "!archivo!"

echo Archivo cifrado exitosamente: !archivo!
exit /b 0
