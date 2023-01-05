@echo off
title Aula 01 - Sistemas informacao
mode 70,20
color 0b
:inicio
cls
rem cls = limpar tela
echo.
rem pula linha
echo       _+_     _+_
echo      _+ +     + +_
echo -__  +   +++++   +  __
echo +__+-   O  _  O   -+__+
echo ==========================
echo  GERENCIAMENTO DO SISTEMA
echo ==========================
echo [1] Desligar a maquina 
echo [2] Reiniciar a maquina 
echo [3] Suspender a maquina						
echo [R] Retornar ao Menu
echo ==========================
echo.
set /p op=Digite uma opcao:
if /i %op% == r (call menu.bat) 
if /i %op% == 1 (goto:desligar)
if /i %op% == 2 (goto:suspender)
if /i %op% == 3 (goto:reiniciar)
else (
echo.
echo       _+_     _+_
echo      _+ +     + +_
echo -__  +   +++++   +  __
echo +__+-   O  _  O   -+__+
echo ========================
echo     Opcao Invalida!
echo ========================
echo.
pause
goto:inicio)

:desligar
start shutdown.exe -s -t 10
goto:inicio

:suspender
start rundll32.exe powrprof.dll,SetSuspendState 0,1,0
goto:inicio

:reiniciar 
start shutdown.exe -r -t 10
goto:inicio