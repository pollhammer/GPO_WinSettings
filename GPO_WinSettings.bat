@echo off
setlocal

REM Pfad zur Logdatei
set logfile=%temp%\logdatei.log

REM Überprüfen, ob die Logdatei existiert
if exist "%logfile%" (
	echo Die Logdatei existiert bereits. Skript wird nicht ausgeführt.
	exit /b
)

REM Logdatei erstellen
echo MY-WINDOWS-SETTINGS Logdatei erstellt am %date% um %time% > "%logfile%"

REM Hier kommen die weiteren Befehle des Skripts
REM Weitere Befehle hier einfügen

REM Speichere das aktuelle Verzeichnis (das Verzeichnis der Batch-Datei)
set "currentDir=%~dp0"

REM PowerShell-Skriptdatei (my-windows-settings.ps1)
set "powershellScript=%currentDir%my-windows-settings.ps1"

REM Erstelle die PowerShell-Befehlszeile zum Ausführen des Skripts
set "psCommand=Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File \"%powershellScript%\"' -Verb RunAs"

REM Führe die PowerShell-Befehlszeile aus und fordere Administratorrechte an
powershell -NoProfile -Command "%psCommand%"

endlocal
