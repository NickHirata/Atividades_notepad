@echo off
mode 70,30
title LOGIN
color 0A
:inicio
cls
echo.
echo ===========IDENTIFICACAO===========
set /p u=Usuario:
if /i %u% == user (goto:senhas) else (
echo.
echo       _+_     _+_
echo      _+ +     + +_
echo -__  +   +++++   +  __
echo +__+-   O  _  O   -+__+
echo ========================
echo     Usuario invalido!
echo ========================
echo Digite novamente!!
echo.
pause
goto:inicio)


:senhas
set /p s=Senha:
if %s% == admin (call menu.bat) else (
echo.
echo       _+_     _+_
echo      _+ +     + +_
echo -__  +   +++++   +  __
echo +__+-   O  _  O   -+__+
echo ========================
echo     Senha invalida!
echo ========================
echo Digite novamente!!
echo.
pause
goto:inicio)

