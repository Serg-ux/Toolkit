@echo off
echo ------------------------------
echo Herramientas de Analisis Forense by Serg-Ux
echo ------------------------------
echo.

:menu
echo 1. Listar puertos que estan en escucha
echo 2. Listar procesos en ejecución
echo 3. Mostrar informacion del sistema
echo 4. Copiar registros de eventos
echo 5. Mostrar usuarios locales y grupos locales
echo 6. Mostrar información detallada de todas las interfaces de red
echo 7. Salir
echo.
set /p "opcion=Selecciona una opcion: "

if "%opcion%"=="1" (
    netstat -ano
    pause
    goto menu
) else if "%opcion%"=="2" (
    tasklist
    pause
    goto menu
) else if "%opcion%"=="3" (
    systeminfo
    pause
    goto menu
) else if "%opcion%"=="4" (
    mkdir Logs
    copy "%SystemRoot%\System32\winevt\Logs\*.*" Logs
    echo Registros de eventos copiados en la carpeta "Logs".
    pause
    goto menu
)else if "%opcion%"=="5" ( 
    net user
    net localgroup
    pause
    goto menu
)else if "%opcion%"=="6" (
    ipconfig /all
    pause
    goto menu
)else if "%opcion%"=="7" (
    echo Adiós.
    exit /b 0
) else (
    echo Opción no válida. Inténtalo de nuevo.
    pause
    goto menu
)

