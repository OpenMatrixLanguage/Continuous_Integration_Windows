@echo off
rem ============================================================================
rem Copyright 2003-2019 Intel Corporation.
rem
rem This software  and the related  documents  are Intel  copyrighted materials,
rem and your use  of them is  governed by the express  license under  which they
rem were provided to you (License).  Unless the License provides otherwise,  you
rem may not use,  modify,  copy, publish,  distribute, disclose or transmit this
rem software or the related documents without Intel's prior written permission.
rem
rem This software and the related documents are provided as is,  with no express
rem or implied warranties,  other  than those that  are expressly  stated in the
rem License.
rem ============================================================================

setlocal

:: Cache some environment variables.
set CPRO_PATH=%~dp0
call :GetFullPath "%CPRO_PATH%\..\.." CPRO_PATH
set MKLROOT=%CPRO_PATH%\mkl
set REDIST=%CPRO_PATH%\redist

set SCRIPT_NAME=%~nx0
set MOD_NAME=mod

:: Set the default arguments
set MKL_TARGET_ARCH=
set MKL_TARGET_ARCH_PATH=
set MKL_LP64_ILP64=lp64
set MKL_MOD=

:ParseArgs
:: Parse the incoming arguments
if /i "%1"==""        goto Build
if /i "%1"=="ia32"       (set MKL_TARGET_ARCH=ia32)    & (set MKL_TARGET_ARCH_PATH=ia32_win)    & shift & goto ParseArgs
if /i "%1"=="intel64"    (set MKL_TARGET_ARCH=intel64) & (set MKL_TARGET_ARCH_PATH=intel64_win) & shift & goto ParseArgs
if /i "%1"=="none"                                       shift & goto ParseArgs
if /i "%1"=="vs2013"                                     shift & goto ParseArgs
if /i "%1"=="vs2015"                                     shift & goto ParseArgs
if /i "%1"=="vs2017"                                     shift & goto ParseArgs
if /i "%1"=="vs2019"                                     shift & goto ParseArgs
if /i "%1"=="lp64"       (set MKL_LP64_ILP64=lp64)     & shift & goto ParseArgs
if /i "%1"=="ilp64"      (set MKL_LP64_ILP64=ilp64)    & shift & goto ParseArgs
if /i "%1"=="%MOD_NAME%" (set MKL_MOD=%MOD_NAME%)      & shift & goto ParseArgs
call :Error %SCRIPT_NAME% %MOD_NAME% %1& goto Abort

:Build

:: target achitecture is mandatory
if /i "%MKL_TARGET_ARCH%"=="" call :Syntax %SCRIPT_NAME% %MOD_NAME% & goto Abort

:: main actions
set "LIB=%MKLROOT%\lib\%MKL_TARGET_ARCH_PATH%;%CPRO_PATH%\compiler\lib\%MKL_TARGET_ARCH_PATH%;%LIB%"

if exist "%REDIST%\%MKL_TARGET_ARCH_PATH%\compiler" (
    set "PATH=%REDIST%\%MKL_TARGET_ARCH_PATH%\compiler;%PATH%"
)

if exist "%REDIST%\%MKL_TARGET_ARCH_PATH%" (
    set "PATH=%REDIST%\%MKL_TARGET_ARCH_PATH%\mkl;%PATH%"
)

if /i "%MKL_MOD%"=="%MOD_NAME%" (
    if /i "%MKL_TARGET_ARCH%"=="intel64" (
        set "INCLUDE=%MKLROOT%\include\%MKL_TARGET_ARCH%\%MKL_LP64_ILP64%;%INCLUDE%"
    ) else (
        set "INCLUDE=%MKLROOT%\include\%MKL_TARGET_ARCH%;%INCLUDE%"
    )
)
set "INCLUDE=%MKLROOT%\include;%INCLUDE%"
set "CPATH=%MKLROOT%\include;%CPATH%"
set "PKG_CONFIG_PATH=%MKLROOT%\bin\pkgconfig;%PKG_CONFIG_PATH%"

set "TBBLIBROOT=%CPRO_PATH%\tbb\lib"
if not defined TBBROOT (
    if exist "%TBBLIBROOT%" (
        set "LIB=%TBBLIBROOT%\%MKL_TARGET_ARCH_PATH%\vc_mt;%LIB%"
        if exist "%REDIST%\%MKL_TARGET_ARCH_PATH%\tbb" (
            set "PATH=%REDIST%\%MKL_TARGET_ARCH_PATH%\tbb\vc_mt;%PATH%"
        )
    )

)
:EndTBBPath

:: pattern
::
:: setlocal
:: set LOCAL_VAR=val
:: set VAR=%LOCAL_VAR%
:: endlocal& ^
:: set VAR=%VAR%
::
:: allows to set value of VAR=val as global and do spoil LOCAL_VAR outside the pattern (if any such variable exists)
endlocal& ^
set MKLROOT=%MKLROOT%& ^
set PATH=%PATH%& ^
set LIB=%LIB%& ^
set INCLUDE=%INCLUDE%& ^
set CPATH=%CPATH%& ^
set PKG_CONFIG_PATH=%PKG_CONFIG_PATH%& ^
if /i "%MKL_TARGET_ARCH%"=="intel64" set LD_LIBRARY_PATH=%LD_LIBRARY_PATH%

goto End

:Error
echo.
echo Invalid command line argument: %3

:Syntax
echo.
echo Syntax:
echo    %1 ^<arch^> ^[MKL_interface^] ^[Visual_Studio^] ^[%2^]
echo.
echo    ^<arch^> must be one of the following
echo        ia32         : Setup for IA-32 architecture
echo        intel64      : Setup for Intel(R) 64 architecture
echo.
echo    %2% (optional) - set path to Intel(R) MKL F95 modules
echo.
echo    MKL_interface (optional) - Intel(R) MKL programming interface for intel64
echo.                              Not applicable without %MOD_NAME%
echo        lp64         : 4 bytes integer (default)
echo        ilp64        : 8 bytes integer
echo.
echo    Visual_Studio (optional) - argument passed from compilersvars.
echo.                              Does Not affect this script.
echo        none  
echo        vs2013
echo        vs2015
echo        vs2017
echo        vs2019
exit /B 1

:GetFullPath
set %2=%~f1
goto End

:End
exit /B 0

:Abort
exit /B 1
