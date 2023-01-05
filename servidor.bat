@echo off
title Aula 01 - Sistemas informacao
mode 70,40
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
echo    SERVIDOR DE REDE
echo ========================
echo [1] Navegar na web
echo [2] Testar conexao de rede 
echo [3] Obter IP da maquina
echo [R] Retornar ao Menu
echo ========================
echo.
set /p op=Digite uma opcao:
if /i %op% == r (call menu.bat)
if /i %op% == 1 (goto:web)
if /i %op% == 2 (goto:teste)
if /i %op% == 3 (goto:ip)
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
:web 
echo.
set /p site=Digite o endereco da pagina:
start chrome.exe %site%
goto:inicio

:teste
echo.
set /p conexao=Digite o IP da maquina ou endereco da web:
ping %conexao% -t
goto:inicio

:ip
ipconfig /all
pause	
goto:inicio