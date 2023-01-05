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
echo ========================
echo      PACOTE OFFICE
echo ========================
echo [1] Word
echo [2] Excel
echo [3] Power Point
echo [4] Access
echo [R] Retornar ao Menu
echo ========================
echo.
set /p op=Digite uma opcao:
if %op% == 1 (goto:word)
if %op% == 2 (goto:excel)
if %op% == 3 (goto:pp)
if %op% == 4 (goto:access)
if /i %op% == r (call menu.bat) else (
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

word:
start winword.exe
goto:inicio

excel:
start excel.exe
goto:inicio

pp:
start powerpnt.exe
goto:inicio

access:
start msaccess.exe
goto:inicio
