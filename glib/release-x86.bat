:: run this from a command prompt
@echo off

SET PACKAGE_NAME=glib-2.34.0

set GLIB_SRC=%cd%
set GLIB_DEST=%cd%-rel
echo.Press return when ready to install!
pause

mkdir %GLIB_DEST%\share
mkdir %GLIB_DEST%\share\doc
mkdir %GLIB_DEST%\share\doc\glib
copy COPYING %GLIB_DEST%\share\doc\glib

cd %GLIB_DEST%
set PATH=%PATH%;%ProgramFiles%\7-zip
del ..\%PACKAGE_NAME%-x86.7z
7z a ..\%PACKAGE_NAME%-x86.7z *
cd %GLIB_SRC%
rmdir /q /s %GLIB_DEST%

echo.Finished!
pause
