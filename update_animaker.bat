:: GoAnimaker Updater
:: Author: Kia#0001
:: License: MIT
title GoAnimaker Updater [Initializing...]

::::::::::::::::::::
:: Initialization ::
::::::::::::::::::::

:: Stop commands from spamming stuff, cleans up the screen
@echo off && cls

:: Lets variables work or something idk im not a nerd
SETLOCAL ENABLEDELAYEDEXPANSION

:: Make sure we're starting in the correct folder, and that it worked (otherwise things would go horribly wrong)
pushd "%~dp0"
if !errorlevel! NEQ 0 goto error_location
if not exist utilities ( goto error_location )
if not exist wrapper ( goto error_location )
if not exist server ( goto error_location )
goto noerror_location
:error_location
echo Doesn't seem like this script is in a GoAnimaker folder.
pause && exit
:noerror_location

:::::::::::::::::::::::::
:: Post-Initialization ::
:::::::::::::::::::::::::

title GoAnimaker Updater

if not exist .git ( goto nogit )
:yesgit
echo GoAnimaker Updater
echo A project from the W:O team adapted by Kia
echo:
echo Enter 1 to update GoAnimaker
echo Enter 0 to close the updater
goto wrapperidle
:nogit
echo You have not downloaded GoAnimaker using the batch installer.
echo Please download install_wrapper_offline.zip and run the batch file inside.
pause & exit
:wrapperidle
echo:

:::::::::::::
:: Choices ::
:::::::::::::

set /p CHOICE=Choice:
if "!choice!"=="0" goto exit
if "!choice!"=="1" goto update
echo Time to choose. && goto wrapperidle

:update
cls
pushd "%~dp0"
echo Pulling repository from GitHub...
git pull
cls
echo GoAnimaker has been updated^^!
start "" "%~dp0"
pause & exit

:exit
pause & exit
