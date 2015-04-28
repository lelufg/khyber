@ECHO off
:: lelufg @ shelleprechaun
title Khyber, por Luiz Nickel
echo Uma ferramenta simples
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo Que vai curar seu pendrive!
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo (atualizado mensalmente)
@ping 127.0.0.1 -n 2 -w 1000 > nul
:khyber_menu
echo Sistema Khyber - MIDNIGHT_APRIL
echo I - Iniciar Varredura
echo A - Atualizar
echo S - Sair
set/p "khyber_cho=>"
if %khyber_cho%==I goto khyber_action
if %khyber_cho%==i goto khyber_action
if %khyber_cho%==A goto khyber_update
if %khyber_cho%==a goto khyber_update
if %khyber_cho%==S goto khyber_quit
if %khyber_cho%==s goto khyber_quit
echo loaded.
:khyber_action
echo Procurando arquivos maliciosos
attrib -h -r -s /s /d E:\*.* :: 1st try
attrib -h -r -s /s /d F:\*.* :: 2nd try
attrib -h -r -s /s /d G:\*.* :: 3rd try
attrib -h -r -s /s /d H:\*.* :: 4th try
echo concluido! os arquivos foram limpados.
pause
goto khyber_menu
pause
:khyber_update
echo O download sera iniciado...
@ping 127.0.0.1 -n 2 -w 1000 > nul
start https://github.com/lelufg/khyber/archive/master.zip
goto khyber_menu
pause
:khyber_quit
exit
