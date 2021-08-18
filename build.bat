@ECHO off

cd %~dp0
cd Vocabulary
7z >nul 2>&1 && (
  ECHO Uncompressing vocabulary using 7zip...
  7z e ORBvoc.txt.7z -y || goto :echeck
  ECHO Extraction complete.
) || (
    ECHO Did not uncompress Vocabulary - please extract manually in /Vocabulary directory!
)
cd %~dp0
ECHO Invoking CMake...
IF NOT EXIST build/ (
  mkdir build || goto :echeck
)
cd build || goto :echeck
cmake -DCMAKE_BUILD_TYPE=Release %1 .. || goto :echeck
ECHO Building ORB_SLAM3
cmake --build . --config Release || goto :echeck
ECHO Done building ORB_SLAM3_WIN
cd %~dp0
goto :EOF

:echeck
cd %~dp0
ECHO An error occurred in build.bat
exit /b %ERRORLEVEL%
