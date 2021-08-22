@ECHO off

cd %~dp0
call build.bat "-DBUILD_EXAMPLES=OFF" || goto :echeck
goto :EOF

:echeck
cd %~dp0
ECHO An error occurred in build.bat
exit /b %ERRORLEVEL%
