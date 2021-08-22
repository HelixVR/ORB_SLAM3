@ECHO off

REM Example, it is necesary to change it by the dataset path
SET pathDatasetEuroc="C:/Datasets/EuRoC


REM Monocular Examples
ECHO Launching MH01 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/MH01 Monocular/EuRoC_TimeStamps/MH01.txt dataset-MH01_mono

ECHO Launching MH02 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/MH02 Monocular/EuRoC_TimeStamps/MH02.txt dataset-MH02_mono

ECHO Launching MH03 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/MH03 Monocular/EuRoC_TimeStamps/MH03.txt dataset-MH03_mono

ECHO Launching MH04 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/MH04 Monocular/EuRoC_TimeStamps/MH04.txt dataset-MH04_mono

ECHO Launching MH05 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/MH05 Monocular/EuRoC_TimeStamps/MH05.txt dataset-MH05_mono

ECHO Launching V101 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V101 Monocular/EuRoC_TimeStamps/V101.txt dataset-V101_mono

ECHO Launching V102 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V102 Monocular/EuRoC_TimeStamps/V102.txt dataset-V102_mono

ECHO Launching V103 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V103 Monocular/EuRoC_TimeStamps/V103.txt dataset-V103_mono

ECHO Launching V201 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V201 Monocular/EuRoC_TimeStamps/V201.txt dataset-V201_mono

ECHO Launching V202 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V202 Monocular/EuRoC_TimeStamps/V202.txt dataset-V202_mono

ECHO Launching V203 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V203 Monocular/EuRoC_TimeStamps/V203.txt dataset-V203_mono


REM MultiSession Monocular Examples
ECHO Launching Machine Hall with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/MH01 Monocular/EuRoC_TimeStamps/MH01.txt %pathDatasetEuroc%/MH02 Monocular/EuRoC_TimeStamps/MH02.txt %pathDatasetEuroc%/MH03 Monocular/EuRoC_TimeStamps/MH03.txt %pathDatasetEuroc%/MH04 Monocular/EuRoC_TimeStamps/MH04.txt %pathDatasetEuroc%/MH05 Monocular/EuRoC_TimeStamps/MH05.txt dataset-MH01_to_MH05_mono

ECHO Launching Vicon Room 1 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V101 Monocular/EuRoC_TimeStamps/V101.txt %pathDatasetEuroc%/V102 Monocular/EuRoC_TimeStamps/V102.txt %pathDatasetEuroc%/V103 Monocular/EuRoC_TimeStamps/V103.txt dataset-V101_to_V103_mono

ECHO Launching Vicon Room 2 with Monocular sensor
Monocular/mono_euroc.exe ../Vocabulary/ORBvoc.txt Monocular/EuRoC.yaml %pathDatasetEuroc%/V201 Monocular/EuRoC_TimeStamps/V201.txt %pathDatasetEuroc%/V202 Monocular/EuRoC_TimeStamps/V202.txt %pathDatasetEuroc%/V203 Monocular/EuRoC_TimeStamps/V203.txt dataset-V201_to_V203_mono


REM Stereo Examples
ECHO Launching MH01 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH01 Stereo/EuRoC_TimeStamps/MH01.txt dataset-MH01_stereo

ECHO Launching MH02 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH02 Stereo/EuRoC_TimeStamps/MH02.txt dataset-MH02_stereo

ECHO Launching MH03 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH03 Stereo/EuRoC_TimeStamps/MH03.txt dataset-MH03_stereo

ECHO Launching MH04 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH04 Stereo/EuRoC_TimeStamps/MH04.txt dataset-MH04_stereo

ECHO Launching MH05 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH05 Stereo/EuRoC_TimeStamps/MH05.txt dataset-MH05_stereo

ECHO Launching V101 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V101 Stereo/EuRoC_TimeStamps/V101.txt dataset-V101_stereo

ECHO Launching V102 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V102 Stereo/EuRoC_TimeStamps/V102.txt dataset-V102_stereo

ECHO Launching V103 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V103 Stereo/EuRoC_TimeStamps/V103.txt dataset-V103_stereo

ECHO Launching V201 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V201 Stereo/EuRoC_TimeStamps/V201.txt dataset-V201_stereo

ECHO Launching V202 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V202 Stereo/EuRoC_TimeStamps/V202.txt dataset-V202_stereo

ECHO Launching V203 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V203 Stereo/EuRoC_TimeStamps/V203.txt dataset-V203_stereo

REM MultiSession Stereo Examples
ECHO Launching Machine Hall with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH01 Stereo/EuRoC_TimeStamps/MH01.txt %pathDatasetEuroc%/MH02 Stereo/EuRoC_TimeStamps/MH02.txt %pathDatasetEuroc%/MH03 Stereo/EuRoC_TimeStamps/MH03.txt %pathDatasetEuroc%/MH04 Stereo/EuRoC_TimeStamps/MH04.txt %pathDatasetEuroc%/MH05 Stereo/EuRoC_TimeStamps/MH05.txt dataset-MH01_to_MH05_stereo

ECHO Launching Vicon Room 1 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V101 Stereo/EuRoC_TimeStamps/V101.txt %pathDatasetEuroc%/V102 Stereo/EuRoC_TimeStamps/V102.txt %pathDatasetEuroc%/V103 Stereo/EuRoC_TimeStamps/V103.txt dataset-V101_to_V103_stereo

ECHO Launching Vicon Room 2 with Stereo sensor
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/V201 Stereo/EuRoC_TimeStamps/V201.txt %pathDatasetEuroc%/V202 Stereo/EuRoC_TimeStamps/V202.txt %pathDatasetEuroc%/V203 Stereo/EuRoC_TimeStamps/V203.txt dataset-V201_to_V203_stereo


REM Monocular-Inertial Examples
ECHO Launching MH01 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH01 Monocular-Inertial/EuRoC_TimeStamps/MH01.txt dataset-MH01_monoi

ECHO Launching MH02 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH02 Monocular-Inertial/EuRoC_TimeStamps/MH02.txt dataset-MH02_monoi

ECHO Launching MH03 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH03 Monocular-Inertial/EuRoC_TimeStamps/MH03.txt dataset-MH03_monoi

ECHO Launching MH04 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH04 Monocular-Inertial/EuRoC_TimeStamps/MH04.txt dataset-MH04_monoi

ECHO Launching MH05 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH05 Monocular-Inertial/EuRoC_TimeStamps/MH05.txt dataset-MH05_monoi

ECHO Launching V101 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V101 Monocular-Inertial/EuRoC_TimeStamps/V101.txt dataset-V101_monoi

ECHO Launching V102 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V102 Monocular-Inertial/EuRoC_TimeStamps/V102.txt dataset-V102_monoi

ECHO Launching V103 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V103 Monocular-Inertial/EuRoC_TimeStamps/V103.txt dataset-V103_monoi

ECHO Launching V201 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V201 Monocular-Inertial/EuRoC_TimeStamps/V201.txt dataset-V201_monoi

ECHO Launching V202 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V202 Monocular-Inertial/EuRoC_TimeStamps/V202.txt dataset-V202_monoi

ECHO Launching V203 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V203 Monocular-Inertial/EuRoC_TimeStamps/V203.txt dataset-V203_monoi

REM MultiSession Monocular Examples
ECHO Launching Machine Hall with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH01 Monocular-Inertial/EuRoC_TimeStamps/MH01.txt %pathDatasetEuroc%/MH02 Monocular-Inertial/EuRoC_TimeStamps/MH02.txt %pathDatasetEuroc%/MH03 Monocular-Inertial/EuRoC_TimeStamps/MH03.txt %pathDatasetEuroc%/MH04 Monocular-Inertial/EuRoC_TimeStamps/MH04.txt %pathDatasetEuroc%/MH05 Monocular-Inertial/EuRoC_TimeStamps/MH05.txt dataset-MH01_to_MH05_monoi

ECHO Launching Vicon Room 1 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V101 Monocular-Inertial/EuRoC_TimeStamps/V101.txt %pathDatasetEuroc%/V102 Monocular-Inertial/EuRoC_TimeStamps/V102.txt %pathDatasetEuroc%/V103 Monocular-Inertial/EuRoC_TimeStamps/V103.txt dataset-V101_to_V103_monoi

ECHO Launching Vicon Room 2 with Monocular-Inertial sensor
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V201 Monocular-Inertial/EuRoC_TimeStamps/V201.txt %pathDatasetEuroc%/V202 Monocular-Inertial/EuRoC_TimeStamps/V202.txt %pathDatasetEuroc%/V203 Monocular-Inertial/EuRoC_TimeStamps/V203.txt dataset-V201_to_V203_monoi


REM Stereo-Inertial Examples
ECHO Launching MH01 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH01 Stereo-Inertial/EuRoC_TimeStamps/MH01.txt dataset-MH01_stereoi

ECHO Launching MH02 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH02 Stereo-Inertial/EuRoC_TimeStamps/MH02.txt dataset-MH02_stereoi

ECHO Launching MH03 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH03 Stereo-Inertial/EuRoC_TimeStamps/MH03.txt dataset-MH03_stereoi

ECHO Launching MH04 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH04 Stereo-Inertial/EuRoC_TimeStamps/MH04.txt dataset-MH04_stereoi

ECHO Launching MH05 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH05 Stereo-Inertial/EuRoC_TimeStamps/MH05.txt dataset-MH05_stereoi

ECHO Launching V101 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V101 Stereo-Inertial/EuRoC_TimeStamps/V101.txt dataset-V101_stereoi

ECHO Launching V102 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V102 Stereo-Inertial/EuRoC_TimeStamps/V102.txt dataset-V102_stereoi

ECHO Launching V103 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V103 Stereo-Inertial/EuRoC_TimeStamps/V103.txt dataset-V103_stereoi

ECHO Launching V201 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V201 Stereo-Inertial/EuRoC_TimeStamps/V201.txt dataset-V201_stereoi

ECHO Launching V202 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V202 Stereo-Inertial/EuRoC_TimeStamps/V202.txt dataset-V202_stereoi

ECHO Launching V203 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V203 Stereo-Inertial/EuRoC_TimeStamps/V203.txt dataset-V203_stereoi

REM MultiSession Stereo-Inertial Examples
ECHO Launching Machine Hall with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/MH01 Stereo-Inertial/EuRoC_TimeStamps/MH01.txt %pathDatasetEuroc%/MH02 Stereo-Inertial/EuRoC_TimeStamps/MH02.txt %pathDatasetEuroc%/MH03 Stereo-Inertial/EuRoC_TimeStamps/MH03.txt %pathDatasetEuroc%/MH04 Stereo-Inertial/EuRoC_TimeStamps/MH04.txt %pathDatasetEuroc%/MH05 Stereo-Inertial/EuRoC_TimeStamps/MH05.txt dataset-MH01_to_MH05_stereoi

ECHO Launching Vicon Room 1 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V101 Stereo-Inertial/EuRoC_TimeStamps/V101.txt %pathDatasetEuroc%/V102 Stereo-Inertial/EuRoC_TimeStamps/V102.txt %pathDatasetEuroc%/V103 Stereo-Inertial/EuRoC_TimeStamps/V103.txt dataset-V101_to_V103_stereoi

ECHO Launching Vicon Room 2 with Stereo-Inertial sensor
Stereo-Inertial/stereo_inertial_euroc.exe  ../Vocabulary/ORBvoc.txt Stereo-Inertial/EuRoC.yaml %pathDatasetEuroc%/V201 Stereo-Inertial/EuRoC_TimeStamps/V201.txt %pathDatasetEuroc%/V202 Stereo-Inertial/EuRoC_TimeStamps/V202.txt %pathDatasetEuroc%/V203 Stereo-Inertial/EuRoC_TimeStamps/V203.txt dataset-V201_to_V203_stereoi
