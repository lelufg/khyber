@ECHO off
:: lelufg @ shelleprechaun
title Khyber @ shelleprechaun
echo khyber - a mugen.vbn erasing tool
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo this will be updated weekly.
@ping 127.0.0.1 -n 2 -w 1000 > nul
echo developed by lelufg (luiznickel)
@ping 127.0.0.1 -n 2 -w 1000 > nul
:khyber_menu
echo Tool menu
echo S - Initiate mugen search and cleaning
echo Q - Quit
set/p "khyber_cho=>"
if %khyber_cho%==S goto khyber_action
if %khyber_cho%==s goto khyber_action
if %khyber_cho%==Q goto khyber_quit
if %khyber_cho%==q goto khyber_quit
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
goto menu
:khyber_quit
exit
