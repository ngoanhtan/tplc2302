@echo on

REM if not exist "%~dp0setEnv.bat" (
	REM echo ERROR! you do not have "%~dp0setEnv.bat"!
	REM echo Create setEnv.bat with the content of setEnv.bat.template, and with your paths!
	REM goto :eof
REM )
set CUR_DIR=%~dp0

set CYGWIN_BIN=d:\DevTools\cygwin\bin
set NDK_BUILD=d:\DevTools\android-ndk-r9\ndk-build
REM set NDK_BUILD=d:\DevTools\ndk\ndk-build
set CYGWIN=nodosfilewarning

REM set NDK_CCACHE=android/ccache
REM set CCACHE_PREFIX=distcc

REM set CCACHE_DIR=%CUR_DIR%\android\CACHE\release
REM set CCACHE_NODIRECT=1

echo Start compiling ...



cd %CUR_DIR%android\src\lib1
call %NDK_BUILD%
cd %CUR_DIR%

cd %CUR_DIR%android\src\lib2
call %NDK_BUILD%
cd %CUR_DIR%

cd %CUR_DIR%android\src\jsoncpp
call %NDK_BUILD%
cd %CUR_DIR%

cd %CUR_DIR%android\src\
call %NDK_BUILD%
cd %CUR_DIR%

REM cd %CUR_DIR%android\src\
REM call %CYGWIN_BIN%\bash.exe -i %NDK_BUILD% -j4
REM cd %CUR_DIR%
pause
cd %SP%