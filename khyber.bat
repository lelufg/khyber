@ECHO off
:: lelufg @ shelleprechaun
title Khyber, por Luiz Nickel
echo khyber - uma ferramenta simples
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo que cura qualquer pendrive!
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo atualizado semanalmente pelo git
@ping 127.0.0.1 -n 2 -w 1000 > nul
:khyber_menu
echo Menu Principal
echo I - Iniciar Varredura
echo S - Sair
set/p "khyber_cho=>"
if %khyber_cho%==I goto khyber_action
if %khyber_cho%==i goto khyber_action
if %khyber_cho%==S goto khyber_quit
if %khyber_cho%==s goto khyber_quit
echo loaded.
:: script attrib session
:khyber_action
echo searching and cleaning...
attrib -h -r -s /s /d E:\*.* :: 1st try
attrib -h -r -s /s /d F:\*.* :: 2nd try
attrib -h -r -s /s /d G:\*.* :: 3rd try
attrib -h -r -s /s /d H:\*.* :: 4th try
echo done. you may able to see your files now.
pause
goto khyber_menu
pause
goto khyber_menu
:khyber_quit
exit
