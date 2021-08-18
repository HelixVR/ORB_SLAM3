@ECHO off

REM Example, it is necesary to change it by the dataset path
SET pathDatasetTUM_VI="/Datasets/TUM_VI 


REM Single Session Example

ECHO Launching Magistrale 1 with Stereo-Inertial sensor 
Stereo-Inertial/stereo_inertial_tum_vi.exe ../Vocabulary/ORBvoc.txt Stereo-Inertial/TUM_512.yaml %pathDatasetTUM_VI%/dataset-magistrale1_512_16/mav0/cam0/data %pathDatasetTUM_VI%/dataset-magistrale1_512_16/mav0/cam1/data Stereo-Inertial/TUM_TimeStamps/dataset-magistrale1_512.txt Stereo-Inertial/TUM_IMU/dataset-magistrale1_512.txt dataset-magistrale1_512_stereoi
ECHO ------------------------------------ 
ECHO Evaluation of Magistrale 1 trajectory with Stereo-Inertial sensor 
python ../evaluation/evaluate_ate_scale.py %pathDatasetTUM_VI%/magistrale1_512_16/mav0/mocap0/data.csv f_dataset-magistrale1_512_stereoi.txt --plot magistrale1_512_stereoi.pdf