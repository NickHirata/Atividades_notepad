@echo off
title MENU PRINCIPAL
mode 70,30
color 0b
:inicio
cls
echo.
echo       _+_     _+_
echo      _+ +     + +_
echo -__  +   +++++   +  __
echo +__+-   O  _  O   -+__+
echo ========================
echo      MENU PRINCIPAL
echo ========================
echo [P] Pacote Office
echo [A] Aplicativos do Windows 
echo [S] Servidor de rede
echo [G] Gerenciamento do sistema
echo [E] Encerrar sessao
echo [F] Finalizar programa 
echo ========================
echo.
set /p op=Digite uma opcao:
if /i %op% == p (call pacote.bat)
if /i %op% == a (call app_win.bat)
if /i %op% == s (call servidor.bat)
if /i %op% == g (call gerenciamento.bat)
if /i %op% == e (call login.bat) 
if /i %op% == f (
set /p resp=Deseja mesmo finalizar o programa?(S/N) 
if %resp% == S (exit) ) else (goto:inicio) 
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