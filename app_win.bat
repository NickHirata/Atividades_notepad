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
echo  APLICATIVOS DO WINDOWS
echo ========================
echo [1] Teclado virtual
echo [2] Paint 
echo [3] Calculadora
echo [4] Bloco de notas
echo [5] Painel de controle
echo [6] Windows explorer
echo [R] Retornar ao Menu
echo ========================
echo.
set /p op=Digite uma opcao:
if %op% == 1 (goto:teclado)
if %op% == 2 (goto:paint)
if %op% == 3 (goto:calculadora)
if %op% == 4 (goto:notas)
if %op% == 5 (goto:painel)
if %op% == 6 (goto:explorer)
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
:teclado 
start osk.exe
goto:inicio

:paint 
start mspaint.exe
goto:inicio 

:calculadora
start calc.exe
goto:inicio

:notas
start notepad.exe
goto:inicio

:painel
start control.exe 
goto:inicio

:explorer
start Explorer.exe
goto:inicio