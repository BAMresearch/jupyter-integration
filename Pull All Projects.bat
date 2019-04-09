@rem Pull All Projects.bat
@rem
@rem Copyright (c) 2019 Bundesanstalt für Materialforschung und -prüfung (BAM).
@rem Subject to the MIT license.
@rem
@rem This file is part of 'Jupyter Git Scripts' ( <url> ).
@rem Recursively updates the current GIT repository and all submodules within.

@echo off
setlocal DisableDelayedExpansion EnableExtensions

set scriptpath=%~dp0
set scriptpath=%scriptpath:~0,-1%
pushd "%scriptpath%"
rem Go to parent dir if we are in subdir 'helpers'
for %%F in ("%cd%") do if "%%~nxF"=="helpers" cd ..

:: Check for Git being installed, first check expected location
:: test some candidate directories, faster than searching ...
for /d %%I in ("C:\Program Files" ^
               "%LOCALAPPDATA%\Programs" ^
    ) do if exist %%~I\Git (
        set gitcmd=%%~I\Git\bin\git.exe
    )
if not exist "%gitcmd%" (
    echo [de]
    echo   Git wurde nicht gefunden! Bitte zunaechst 'Git und TortoiseGit' aus
    echo   dem Software Portal installieren und dieses Skript erneut ausfuehren.
    echo [en]
    echo   Git was not found, please install 'Git and TortoiseGit' from the
    echo   Software Portal first and run this script again.
    goto :end
)

echo '%CD%':
echo [de] Aktualisiere alle Projekte ...
echo [en] Updating all projects ...

"%gitcmd%" pull origin master
"%gitcmd%" submodule update --remote --recursive --init
"%gitcmd%" submodule foreach --recursive git checkout master
"%gitcmd%" submodule foreach --recursive git pull origin master

:: hide most git files
for %%I in (.git .gitattributes .gitignore .gitmodules
    ) do if exist %%~I (
        attrib +h %%~I
)

:end
popd
echo done.
timeout 10
