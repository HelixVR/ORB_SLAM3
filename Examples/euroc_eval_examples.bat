@ECHO off

REM Example, it is necesary to change it by the dataset path
SET pathDatasetEuroc="/Datasets/EuRoC 

REM Single Session Example (Pure visual)
ECHO Launching MH01 with Stereo sensor 
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH01 Stereo/EuRoC_TimeStamps/MH01.txt dataset-MH01_stereo
ECHO ------------------------------------ 
ECHO Evaluation of MH01 trajectory with Stereo sensor 
python ../evaluation/evaluate_ate_scale.py ../evaluation/Ground_truth/EuRoC_left_cam/MH01_GT.txt f_dataset-MH01_stereo.txt --plot MH01_stereo.pdf



REM MultiSession Example (Pure visual)
ECHO Launching Machine Hall with Stereo sensor 
Stereo/stereo_euroc.exe ../Vocabulary/ORBvoc.txt Stereo/EuRoC.yaml %pathDatasetEuroc%/MH01 Stereo/EuRoC_TimeStamps/MH01.txt %pathDatasetEuroc%/MH02 Stereo/EuRoC_TimeStamps/MH02.txt %pathDatasetEuroc%/MH03 Stereo/EuRoC_TimeStamps/MH03.txt %pathDatasetEuroc%/MH04 Stereo/EuRoC_TimeStamps/MH04.txt %pathDatasetEuroc%/MH05 Stereo/EuRoC_TimeStamps/MH05.txt dataset-MH01_to_MH05_stereo
ECHO ------------------------------------ 
ECHO Evaluation of MAchine Hall trajectory with Stereo sensor 
python ../evaluation/evaluate_ate_scale.py ../evaluation/Ground_truth/EuRoC_left_cam/MH_GT.txt f_dataset-MH01_to_MH05_stereo.txt --plot MH01_to_MH05_stereo.pdf


REM Single Session Example (Visual-Inertial)
ECHO Launching V102 with Monocular-Inertial sensor 
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V102 Monocular-Inertial/EuRoC_TimeStamps/V102.txt dataset-V102_monoi
ECHO ------------------------------------ 
ECHO Evaluation of V102 trajectory with Monocular-Inertial sensor 
python ../evaluation/evaluate_ate_scale.py %pathDatasetEuroc%/V102/mav0/state_groundtruth_estimate0/data.csv f_dataset-V102_monoi.txt --plot V102_monoi.pdf


REM MultiSession Monocular Examples
ECHO Launching Vicon Room 2 with Monocular-Inertial sensor 
Monocular-Inertial/mono_inertial_euroc.exe ../Vocabulary/ORBvoc.txt Monocular-Inertial/EuRoC.yaml %pathDatasetEuroc%/V201 Monocular-Inertial/EuRoC_TimeStamps/V201.txt %pathDatasetEuroc%/V202 Monocular-Inertial/EuRoC_TimeStamps/V202.txt %pathDatasetEuroc%/V203 Monocular-Inertial/EuRoC_TimeStamps/V203.txt dataset-V201_to_V203_monoi
ECHO ------------------------------------ 
ECHO Evaluation of Vicon Room 2 trajectory with Stereo sensor 
python ../evaluation/evaluate_ate_scale.py ../evaluation/Ground_truth/EuRoC_imu/V2_GT.txt f_dataset-V201_to_V203_monoi.txt --plot V201_to_V203_monoi.pdf