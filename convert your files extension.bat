@echo off

color 4
echo 	-----------------------------------------------------
echo 	WARNING DO NOT DELETE THE FOLDER WHEN YOUR DOING THIS
echo 	-----------------------------------------------------
pause

cls
color 7
echo 	-------------------------------------------------
echo 		convert your files extension
echo 	-------------------------------------------------
echo.
echo put your files in the new folder on your desktop DO NOT DELETE THE FOLDER
echo.
pause

cd %USERPROFILE%\Desktop
mkdir place_here

cls
echo.
echo put your file in the new folder on your hard drive DO NOT DELETE THE FOLDER
echo.
pause
start place_here


:somewhere
cls
echo.
echo Choose your file extension, just the name WITHOUT THE POINT. DO NOT DELETE THE FOLDER
echo.
set /p MYNAME="extension: "
pause

cls
:choice
echo.
echo Your extension is: %MYNAME%
echo.
echo press "Y" for Yes or "N" for No then enter. DO NOT DELETE THE FOLDER
set /P c=do you you want to change [Y/N]?
if /I "%c%" EQU "Y" goto :somewhere
if /I "%c%" EQU "N" goto :somewhere_else
goto :choice


:somewhere_else
cls
echo 	-------------------------------------------------
echo 	  converting your file DO NOT DELETE THE FOLDER
echo 	-------------------------------------------------

cd %USERPROFILE%\Desktop\place_here
ren *.??? *.%MYNAME%

echo %time%
timeout 5 > NUL

cls
echo 	-------------------------------------------------
echo				Done
echo 	-------------------------------------------------
echo.

echo %time%

echo you can now delete the folder
echo.
pause
exit