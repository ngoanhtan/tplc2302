@echo off
if "%SETENV_DONE%"=="1" goto :end
rem ********************************************
rem Environment
rem ********************************************
subst Z: d:\DevTools
set JAVA_HOME=Z:\jdk1.6.0
set ANDROID_HOME=Z:\android-sdk-windows
set CYGWIN_BIN=Z:\cygwin\bin
set APACHE_ANT=Z:\apache-ant-1.8.2\bin
set PYTHON_HOME=Z:\Python27
set ANDROID_NDK_HOME=Z:\android-ndk-r8b
set PYTHON=%PYTHON_HOME%\python.exe

rem ********************************************
rem 	auto-configurated paths
rem ********************************************
set CYGWIN_BASH=%CYGWIN_BIN%\bash.exe
rem suppress dos warning path on CYGWIN
set CYGWIN=nodosfilewarning
rem add CYGWIN to PATH
set PATH=%CYGWIN_BIN%;%PATH%
set /A JOBS=%NUMBER_OF_PROCESSORS%
set GAME_SPECIFIC=%~dp0
set MAKEFILE_XML=%GAME_SPECIFIC%sln2gcc.xml
set ANDROID_PORT_TEMPLATE=%~dp0..\AndroidPort
set ROOT_DIR=%ANDROID_PORT_TEMPLATE%\Package
set ANDROID_PACKAGE_DIR=%ROOT_DIR%
set PATH=%CYGWIN_BIN%;%ANDROID_PORT_TEMPLATE%\tools\GNU2MSDEV\;%PATH%
set ANDROID_PORT_TEMPLATE_TOOLS=%ANDROID_PORT_TEMPLATE%\tools
set SLN2MK=%ANDROID_PORT_TEMPLATE_TOOLS%\sln2mk\sln2mk.exe
set SLN2ANDROID=%ANDROID_PORT_TEMPLATE_TOOLS%\sln2gcc\bin\sln2gcc.exe

rem ndk-build bash
set NDK_BUILD=%ANDROID_NDK_HOME%/ndk-build

set COMPILE_CPUS=%NUMBER_OF_PROCESSORS%
REM set COMPILE_NATIVE=1
set TYPE_ARMEABI=armeabi-v7a
rem set TYPE_ARMEABI=armeabi

set SETENV_DONE=1

rem tu.phan added
set OBJCOPY="%ANDROID_NDK_HOME%\toolchains\arm-linux-androideabi-4.4.3\prebuilt\windows\bin\arm-linux-androideabi-objcopy.exe"
set STRIP="%ANDROID_NDK_HOME%\toolchains\arm-linux-androideabi-4.4.3\prebuilt\windows\bin\arm-linux-androideabi-strip.exe" 
set ENABLE_DSYM=0

:end
