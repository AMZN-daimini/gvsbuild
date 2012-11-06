:: run this from a VS x86 command prompt
@echo off

SET PACKAGE_NAME=libpng-1.5.12

set LIBPNG_SRC=%cd%
set LIBPNG_DEST=%cd%-x86
echo.Press return when ready to install!
pause

rmdir /q /s %LIBPNG_DEST%
mkdir %LIBPNG_DEST%
mkdir %LIBPNG_DEST%\bin
mkdir %LIBPNG_DEST%\include
mkdir %LIBPNG_DEST%\lib
mkdir %LIBPNG_DEST%\share
mkdir %LIBPNG_DEST%\share\doc
mkdir %LIBPNG_DEST%\share\doc\libpng
copy png.h %LIBPNG_DEST%\include
copy pngconf.h %LIBPNG_DEST%\include
copy pnglibconf.h %LIBPNG_DEST%\include
copy pngpriv.h %LIBPNG_DEST%\include
copy projects\vstudio\Release\libpng15.lib %LIBPNG_DEST%\lib
copy projects\vstudio\Release\libpng15.dll %LIBPNG_DEST%\bin
copy projects\vstudio\Release\pngtest.exe %LIBPNG_DEST%\bin
copy projects\vstudio\Release\pngvalid.exe %LIBPNG_DEST%\bin
copy LICENSE %LIBPNG_DEST%\share\doc\libpng\COPYING

cd %LIBPNG_DEST%
set PATH=%PATH%;%ProgramFiles%\7-zip
del ..\%PACKAGE_NAME%-x86.7z
7z a ..\%PACKAGE_NAME%-x86.7z *
cd %LIBPNG_SRC%
rmdir /q /s %LIBPNG_DEST%

echo.Finished!
pause
