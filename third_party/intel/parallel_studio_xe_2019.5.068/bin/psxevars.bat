@echo off
Rem
Rem Copyright 2009-2019 Intel Corporation.
Rem
Rem This software and the related documents are Intel copyrighted materials, and
Rem your use of them is governed by the express license under which they were
Rem provided to you (License). Unless the License provides otherwise, you may
Rem not use, modify, copy, publish, distribute, disclose or transmit this
Rem software or the related documents without Intel's prior written permission.
Rem
Rem This software and the related documents are provided as is, with no express
Rem or implied warranties, other than those that are expressly stated in the
Rem License.

:: Cache some environment variables.
set PSXE_2019=1
set BIN_ROOT=%~dp0
set SCRIPT_NAME=%~nx0

set PRODUCT_NAME=Intel Parallel Studio XE 2019
set PRODUCT_NAME_FULL=Intel(R) Parallel Studio XE 2019 Update 5
:: Set the default arguments
set TARGET_ARCH=
set QUIET=
set INTEL_PYTHON=3
set all_args=%*
if NOT EXIST "%BIN_ROOT%\..\..\intelpython%INTEL_PYTHON%\Scripts\activate.bat" set INTEL_PYTHON=2

:ParseArgs
:: Parse the incoming arguments
if /i "%1"==""        goto Build
if /i "%1"=="ia32"         (set TARGET_ARCH=ia32)          & shift & goto ParseArgs
if /i "%1"=="intel64"      (set TARGET_ARCH=intel64)       & shift & goto ParseArgs
if /i "%1"=="vs2013"       shift & goto ParseArgs
if /i "%1"=="vs2013shell"  shift & goto ParseArgs
if /i "%1"=="vs2015"       shift & goto ParseArgs
if /i "%1"=="vs2015shell"  shift & goto ParseArgs
if /i "%1"=="vs2017"       shift & goto ParseArgs
if /i "%1"=="vs2019"       shift & goto ParseArgs
if /i "%1"=="lp64"         shift & goto ParseArgs
if /i "%1"=="ilp64"        shift & goto ParseArgs
if /i "%1"=="quiet"        (set QUIET=quiet)               & shift & goto ParseArgs
if /i "%1"=="-arch"        shift & goto ParseArgs
if /i "%1"=="-platform"    shift & goto ParseArgs
if /i "%1"=="android"      shift & goto ParseArgs
if /i "%1"=="linux"        shift & goto ParseArgs
if /i "%1"=="-python"      shift & (set INTEL_PYTHON=%2) & shift & goto ParseArgs
goto Error

:Build

:: target achitecture is mandatory
if /i "%TARGET_ARCH%"=="" goto Syntax

if "%QUIET%"=="quiet" goto Call
echo %PRODUCT_NAME_FULL%
echo Copyright (C) 2009-2019 Intel Corporation. All rights reserved.
echo.

:: call product VARs scripts
:Call
if EXIST "%VTUNE_AMPLIFIER_2019_DIR%\amplxe-vars.bat" call "%VTUNE_AMPLIFIER_2019_DIR%\amplxe-vars.bat" quiet
if EXIST "%INSPECTOR_2019_DIR%\inspxe-vars.bat" call "%INSPECTOR_2019_DIR%\inspxe-vars.bat" quiet
if EXIST "%ADVISOR_2019_DIR%\advixe-vars.bat" call "%ADVISOR_2019_DIR%\advixe-vars.bat" quiet
if EXIST "%BIN_ROOT%..\..\itac_2019\bin\itacvars.bat" call "%BIN_ROOT%..\..\itac_2019\bin\itacvars.bat" quiet
if EXIST "%BIN_ROOT%..\..\intelpython%INTEL_PYTHON%\Scripts\activate.bat" call "%BIN_ROOT%..\..\intelpython%INTEL_PYTHON%\Scripts\activate.bat"
if NOT "%CONDA_PS1_BACKUP%" == "" set PROMPT=%CONDA_PS1_BACKUP%
if EXIST "%BIN_ROOT%..\compilers_and_libraries_2019\windows\bin\compilervars.bat" call "%BIN_ROOT%..\compilers_and_libraries_2019\windows\bin\compilervars.bat" %TARGET_ARCH% quiet

title %PRODUCT_NAME%

:: end
goto End

:Error
echo Invalid command line argument: %1
echo.
goto Syntax
exit /B 1

:Syntax
echo Syntax:
echo  %SCRIPT_NAME% ^<arch^> [^<vs^>] [-python 2^|3^|none]
echo.
echo    ^<arch^> must be one of the following
echo        ia32         : Setup for IA-32 target
echo        intel64      : Setup for Intel(R) 64 target
echo    If specified, ^<vs^> must be one of the following
echo        vs2013      : Set to use Microsoft Visual Studio* 2013
echo        vs2013shell : Set to use Microsoft Visual Studio* Shell 2013
echo        vs2015      : Set to use Microsoft Visual Studio* 2015
echo        vs2015shell : Set to use Microsoft Visual Studio* Shell 2015
echo        vs2017      : Set to use Microsoft Visual Studio* 2017
echo        vs2019      : Set to use Microsoft Visual Studio* 2019
echo    If ^<vs^> is not specified, the version of Visual Studio* detected at install
echo    time is used.
echo    If specified, -python parameter must be one of the following
echo        2 ^| 3^| none : Set python environment
echo.
exit /B 1

:End
exit /B 0
