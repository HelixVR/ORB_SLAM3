cmake_minimum_required(VERSION 3.4)

project(DBoW2)

set(HDRS_DBOW2
  DBoW2/BowVector.h
  DBoW2/FORB.h 
  DBoW2/FClass.h       
  DBoW2/FeatureVector.h
  DBoW2/ScoringObject.h   
  DBoW2/TemplatedVocabulary.h)
set(SRCS_DBOW2
  DBoW2/BowVector.cpp
  DBoW2/FORB.cpp      
  DBoW2/FeatureVector.cpp
  DBoW2/ScoringObject.cpp)

set(HDRS_DUTILS
  DUtils/Random.h
  DUtils/Timestamp.h)
set(SRCS_DUTILS
  DUtils/Random.cpp
  DUtils/Timestamp.cpp)

find_package(OpenCV 4.0 QUIET)
if(NOT OpenCV_FOUND)
  message(STATUS "OpenCV 4 not found, resorting to OpenCV 3.")
  find_package(OpenCV 3.0 REQUIRED)
endif()

find_package(Boost REQUIRED)

set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_PDB_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

include_directories(${OpenCV_INCLUDE_DIRS} ${Boost_INCLUDE_DIRS})

add_library(DBoW2 OBJECT
${SRCS_DBOW2}
${SRCS_DUTILS}
)
