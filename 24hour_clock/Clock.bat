@echo off
pushd "%~dp0"
SETLOCAL ENABLEEXTENSIONS
setlocal enabledelayedexpansion

::chack zip file
if not exist "system\check\clock" (goto check)

::sat language
set language==ko
chcp.com 949 >Nul 2>Nul
if not %ERRORLEVEL% == 0 (
set language==en
)

::Chack OS version
set osver=nosupport
ver|system\grep\grep.exe -Eiq "Version 6.1." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=7
ver|system\grep\grep.exe -Eiq "Version 6.(2|3)." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=8
ver|system\grep\grep.exe -Eiq "Version 10.0." >Nul 2>Nul
if not %ERRORLEVEL% == 0 set osver=10
if /I "%osver%" == "nosupport" (
	goto nonos
)
::Set window size
mode.com con cols=30 lines=20

::Set color
color 0f



::set
set refreshtime=10

:start
set year=%date:~0,4%
set month=%date:~5,2%
set day=%date:~8,2%
set hour=%time:~0,2%
set minute=%time:~3,2%

:: 현재 년  : %year%
:: 현재 월  : %month%
:: 현재 일  : %day% 
:: 현재 시  : %hour%
:: 현재 분  : %minute%

title %year%-%month%-%day%
cls

if %hour%==0 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■      ■
echo. ■      ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==1 (
echo. 
echo. ■■■■■      ■
echo. ■      ■    ■■
echo. ■      ■      ■
echo. ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==2 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■          ■
echo. ■      ■  ■■■■■
echo. ■      ■  ■
echo. ■■■■■  ■■■■■
echo. 
goto min
)
if %hour%==3 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■          ■
echo. ■      ■  ■■■■■
echo. ■      ■          ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==4 (
echo. 
echo. ■■■■■  ■    ■
echo. ■      ■  ■    ■
echo. ■      ■  ■    ■
echo. ■      ■  ■■■■■
echo. ■■■■■        ■
echo.
goto min
)
if %hour%==5 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■
echo. ■      ■  ■■■■■
echo. ■      ■          ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==6 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■
echo. ■      ■  ■■■■■
echo. ■      ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==7 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■      ■
echo. ■      ■          ■
echo. ■■■■■          ■
echo.
goto min
)
if %hour%==8 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■■■■■
echo. ■      ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==9 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■■■■■
echo. ■      ■          ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==10 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■      ■
echo.     ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==11 (
echo. 
echo.     ■          ■    
echo.   ■■        ■■    
echo.     ■          ■    
echo.     ■          ■    
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==12 (
echo. 
echo.     ■      ■■■■■
echo.   ■■              ■
echo.     ■      ■■■■■
echo.     ■      ■        
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==13 (
echo. 
echo.     ■      ■■■■■
echo.   ■■              ■
echo.     ■      ■■■■■
echo.     ■              ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==14 (
echo. 
echo.     ■      ■    ■  
echo.   ■■      ■    ■  
echo.     ■      ■    ■  
echo.     ■      ■■■■■
echo. ■■■■■        ■  
echo.
goto min
)
if %hour%==15 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■
echo.     ■      ■■■■■
echo.     ■              ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==16 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■
echo.     ■      ■■■■■
echo.     ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==17 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■      ■
echo.     ■              ■
echo. ■■■■■          ■
echo.
goto min
)
if %hour%==18 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■■■■■
echo.     ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==19 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■■■■■
echo.     ■              ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==20 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■      ■
echo. ■          ■      ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==21 (
echo. 
echo. ■■■■■      ■    
echo.         ■    ■■    
echo. ■■■■■      ■
echo. ■              ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==22 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo. ■          ■        
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==23 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo. ■                  ■
echo. ■■■■■  ■■■■■
echo.
goto min
)
if %hour%==24 (
echo. 
echo. ■■■■■  ■    ■
echo.         ■  ■    ■
echo. ■■■■■  ■    ■
echo. ■          ■■■■■
echo. ■■■■■        ■
echo.
goto min
)

:min
if %language%==en (
echo.
echo.==============================
echo.   %year% - %month% - %day%
echo.==============================
echo.
goto minute
)
echo.
echo.==============================
echo.   %year%년 %month%월 %day%일
echo.==============================
echo.
goto minute
:minute

if %minute%==00 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■      ■
echo. ■      ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==01 (
echo. 
echo. ■■■■■      ■
echo. ■      ■    ■■
echo. ■      ■      ■
echo. ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==02 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■          ■
echo. ■      ■  ■■■■■
echo. ■      ■  ■
echo. ■■■■■  ■■■■■
echo. 
goto finish
)
if %minute%==03 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■          ■
echo. ■      ■  ■■■■■
echo. ■      ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==04 (
echo. 
echo. ■■■■■  ■    ■
echo. ■      ■  ■    ■
echo. ■      ■  ■    ■
echo. ■      ■  ■■■■■
echo. ■■■■■        ■
echo.
goto finish
)
if %minute%==05 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■
echo. ■      ■  ■■■■■
echo. ■      ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==06 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■
echo. ■      ■  ■■■■■
echo. ■      ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==07 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■      ■
echo. ■      ■          ■
echo. ■■■■■          ■
echo.
goto finish
)
if %minute%==08 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■■■■■
echo. ■      ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==09 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■      ■  ■      ■
echo. ■      ■  ■■■■■
echo. ■      ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==10 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■      ■
echo.     ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==11 (
echo. 
echo.     ■          ■    
echo.   ■■        ■■    
echo.     ■          ■    
echo.     ■          ■    
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==12 (
echo. 
echo.     ■      ■■■■■
echo.   ■■              ■
echo.     ■      ■■■■■
echo.     ■      ■        
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==13 (
echo. 
echo.     ■      ■■■■■
echo.   ■■              ■
echo.     ■      ■■■■■
echo.     ■              ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==14 (
echo. 
echo.     ■      ■    ■  
echo.   ■■      ■    ■  
echo.     ■      ■    ■  
echo.     ■      ■■■■■
echo. ■■■■■        ■  
echo.
goto finish
)
if %minute%==15 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■
echo.     ■      ■■■■■
echo.     ■              ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==16 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■
echo.     ■      ■■■■■
echo.     ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==17 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■      ■
echo.     ■              ■
echo. ■■■■■          ■
echo.
goto finish
)
if %minute%==18 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■■■■■
echo.     ■      ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==19 (
echo. 
echo.     ■      ■■■■■
echo.   ■■      ■      ■
echo.     ■      ■■■■■
echo.     ■              ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==20 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■      ■
echo. ■          ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==21 (
echo. 
echo. ■■■■■      ■    
echo.         ■    ■■    
echo. ■■■■■      ■
echo. ■              ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==22 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo. ■          ■        
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==23 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo. ■                  ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==24 (
echo. 
echo. ■■■■■  ■    ■
echo.         ■  ■    ■
echo. ■■■■■  ■    ■
echo. ■          ■■■■■
echo. ■■■■■        ■
echo.
goto finish
)
if %minute%==25 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■
echo. ■■■■■  ■■■■■
echo. ■                  ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==26 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■
echo. ■■■■■  ■■■■■
echo. ■          ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==27 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■      ■
echo. ■                  ■
echo. ■■■■■          ■
echo.
goto finish
)
if %minute%==28 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo. ■          ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==29 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo. ■                  ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==30 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■      ■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==31 (
echo. 
echo. ■■■■■      ■    
echo.         ■    ■■    
echo. ■■■■■      ■    
echo.         ■      ■    
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==32 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.         ■  ■        
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==33 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==34 (
echo. 
echo. ■■■■■  ■    ■
echo.         ■  ■    ■
echo. ■■■■■  ■    ■
echo.         ■  ■■■■■
echo. ■■■■■        ■
echo.
goto finish
)
if %minute%==35 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■        
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==36 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■        
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==37 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■      ■
echo.         ■          ■
echo. ■■■■■          ■
echo.
goto finish
)
if %minute%==38 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==39 (
echo. 
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==40 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■    ■      ■
echo. ■    ■    ■      ■
echo. ■■■■■  ■      ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==41 (
echo. 
echo. ■    ■        ■    
echo. ■    ■      ■■    
echo. ■    ■        ■
echo. ■■■■■      ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==42 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■            ■
echo. ■    ■    ■■■■■
echo. ■■■■■  ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==43 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■            ■
echo. ■    ■    ■■■■■
echo. ■■■■■          ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==44 (
echo. 
echo. ■    ■    ■    ■
echo. ■    ■    ■    ■
echo. ■    ■    ■    ■
echo. ■■■■■  ■■■■■
echo.       ■          ■  
echo.
goto finish
)
if %minute%==45 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■    ■
echo. ■    ■    ■■■■■
echo. ■■■■■          ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==46 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■    ■
echo. ■    ■    ■■■■■
echo. ■■■■■  ■      ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==47 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■    ■      ■
echo. ■    ■    ■      ■
echo. ■■■■■          ■
echo.       ■            ■
echo.
goto finish
)
if %minute%==48 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■    ■      ■
echo. ■    ■    ■■■■■
echo. ■■■■■  ■      ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==49 (
echo. 
echo. ■    ■    ■■■■■
echo. ■    ■    ■      ■
echo. ■    ■    ■■■■■
echo. ■■■■■          ■
echo.       ■    ■■■■■
echo.
goto finish
)
if %minute%==50 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■          ■      ■
echo. ■■■■■  ■      ■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==51 (
echo. 
echo. ■■■■■      ■    
echo. ■            ■■    
echo. ■■■■■      ■    
echo.         ■      ■    
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==52 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■                  ■
echo. ■■■■■  ■■■■■
echo.         ■  ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==53 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■                  ■
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==54 (
echo. 
echo. ■■■■■  ■    ■
echo. ■          ■    ■
echo. ■■■■■  ■    ■
echo.         ■  ■■■■■
echo. ■■■■■        ■
echo.
goto finish
)
if %minute%==55 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■          ■
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==56 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■          ■
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==57 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■          ■      ■
echo. ■■■■■  ■      ■
echo.         ■          ■
echo. ■■■■■          ■
echo.
goto finish
)
if %minute%==58 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■          ■      ■
echo. ■■■■■  ■■■■■
echo.         ■  ■      ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)
if %minute%==59 (
echo. 
echo. ■■■■■  ■■■■■
echo. ■          ■      ■
echo. ■■■■■  ■■■■■
echo.         ■          ■
echo. ■■■■■  ■■■■■
echo.
goto finish
)

:finish
timeout/t %refreshtime% /nobreak>nul
goto start

::==============================================================================::

:check
COLOR 4F
cls
title Please unzip the file properly and execute it.
echo.
echo. Please unzip the file properly and execute it.
echo.
echo. Press the ENTER key to exit the program.
PAUSE>NUL
exit

:nonos
COLOR 4F
cls
title This OS isn't supported
echo.
echo. This OS isn't supported
echo.
echo. Supported OS : Windows 7~10
echo.
echo. Press the ENTER key to exit the program.
pause>nul
exit