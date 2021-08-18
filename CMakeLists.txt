cmake_minimum_required(VERSION 3.4)
cmake_policy(SET CMP0111 OLD)

project(ORB_SLAM3 VERSION 0.4)

# Default build type
IF(NOT CMAKE_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE Release)
ENDIF()

MESSAGE("Build type: " ${CMAKE_BUILD_TYPE})

if (WIN32)
  set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} /MT /bigobj")
  set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /MT /bigobj")
  # Debug build needs /bigobj flag to prevent C1128 error
  set(CMAKE_C_FLAGS_DEBUG "${CMAKE_C_FLAGS_RELEASE} /MTd /bigobj")
  set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_RELEASE} /MTd /bigobj")
else ()
  set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}  -Wall   -O3")
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall   -O3")
  set(CMAKE_C_FLAGS_RELEASE "${CMAKE_C_FLAGS_RELEASE} -march=native")
  set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -march=native")
endif ()

# Check C++11 or C++0x support
include(CheckCXXCompilerFlag)
CHECK_CXX_COMPILER_FLAG("-std=c++11" COMPILER_SUPPORTS_CXX11)
CHECK_CXX_COMPILER_FLAG("-std=c++0x" COMPILER_SUPPORTS_CXX0X)
if(COMPILER_SUPPORTS_CXX11)
   set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")
   add_definitions(-DCOMPILEDWITHC11)
   message(STATUS "Using flag -std=c++11.")
elseif(COMPILER_SUPPORTS_CXX0X)
   set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")
   add_definitions(-DCOMPILEDWITHC0X)
   message(STATUS "Using flag -std=c++0x.")
else()
   message(STATUS "Setting CMAKE_CXX_STANDARD to C++11")
   set(CMAKE_CXX_STANDARD 11)
endif()

LIST(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules)

set(OpenCV_STATIC ON)
find_package(OpenCV 4.0)
if(NOT OpenCV_FOUND)
  find_package(OpenCV 3.0)
  if(NOT OpenCV_FOUND)
    message(FATAL_ERROR "OpenCV > 3.0 not found.")
  endif()
endif()

MESSAGE("OPENCV VERSION:")
MESSAGE(${OpenCV_VERSION})

# Static Boost
set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_STATIC_RUNTIME ON)

find_package(Boost REQUIRED COMPONENTS serialization)
find_package(Eigen3 3.1.0 REQUIRED)
find_package(Pangolin REQUIRED)
find_package(realsense2)

include_directories(
${PROJECT_SOURCE_DIR}
${PROJECT_SOURCE_DIR}/include
${PROJECT_SOURCE_DIR}/include/CameraModels
${Boost_INCLUDE_DIRS}
${EIGEN3_INCLUDE_DIR}
${Pangolin_INCLUDE_DIRS}
)

# Set output dir
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)
set(CMAKE_PDB_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/lib)

add_library(${PROJECT_NAME} STATIC
$<TARGET_OBJECTS:DBoW2>
$<TARGET_OBJECTS:g2o>
src/System.cc
src/Tracking.cc
src/LocalMapping.cc
src/LoopClosing.cc
src/ORBextractor.cc
src/ORBmatcher.cc
src/FrameDrawer.cc
src/Converter.cc
src/MapPoint.cc
src/KeyFrame.cc
src/Atlas.cc
src/Map.cc
src/MapDrawer.cc
src/Optimizer.cc
src/Frame.cc
src/KeyFrameDatabase.cc
src/Sim3Solver.cc
src/Initializer.cc
src/Viewer.cc
src/ImuTypes.cc
src/G2oTypes.cc
src/CameraModels/Pinhole.cpp
src/CameraModels/KannalaBrandt8.cpp
src/OptimizableTypes.cpp
src/MLPnPsolver.cpp
src/TwoViewReconstruction.cc
include/System.h
include/Tracking.h
include/LocalMapping.h
include/LoopClosing.h
include/ORBextractor.h
include/ORBmatcher.h
include/FrameDrawer.h
include/Converter.h
include/MapPoint.h
include/KeyFrame.h
include/Atlas.h
include/Map.h
include/MapDrawer.h
include/Optimizer.h
include/Frame.h
include/KeyFrameDatabase.h
include/Sim3Solver.h
include/Initializer.h
include/Viewer.h
include/ImuTypes.h
include/G2oTypes.h
include/CameraModels/GeometricCamera.h
include/CameraModels/Pinhole.h
include/CameraModels/KannalaBrandt8.h
include/OptimizableTypes.h
include/MLPnPsolver.h
include/TwoViewReconstruction.h
include/Config.h
)

# Add DBoW2 and g2o
add_subdirectory(Thirdparty/DBoW2)
add_subdirectory(Thirdparty/g2o)
add_dependencies(${PROJECT_NAME} DBoW2 g2o)

# Link against dependencies
target_link_libraries(${PROJECT_NAME}
${OpenCV_LIBS}
${EIGEN3_LIBS}
${Pangolin_LIBRARIES}
${Boost_LIBRARIES}
)

# Add examples
#add_subdirectory(Examples)

# Stereo-Inertial examples
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/Examples/Stereo-Inertial)

add_executable(stereo_inertial_euroc
Examples/Stereo-Inertial/stereo_inertial_euroc.cc)
target_link_libraries(stereo_inertial_euroc ${PROJECT_NAME})
add_dependencies(stereo_inertial_euroc ${PROJECT_NAME})
