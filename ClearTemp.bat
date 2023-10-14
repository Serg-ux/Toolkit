@echo off
echo Limpiando archivos temporales...
rem Elimina archivos temporales en el sistema
del /q /f %temp%\*.*
rem Elimina archivos temporales del sistema
del /q /f C:\Windows\Temp\*.*
rem Elimina archivos temporales de Internet Explorer
del /q /f "%userprofile%\AppData\Local\Microsoft\Windows\INetCache\*.*"
rem Vacía la Papelera de reciclaje
rd /s /q "%userprofile%\AppData\Local\Microsoft\Windows\Explorer\*.db"
rem Desfragmentar discos
echo Desfragmentando discos...
defrag C: /O
echo Limpieza completada.
