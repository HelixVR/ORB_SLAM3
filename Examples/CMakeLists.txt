cmake_minimum_required(VERSION 3.19)
project(ORB_SLAM3_WIN_Examples)

LIST(APPEND CMAKE_MODULE_PATH ${PROJECT_SOURCE_DIR}/cmake_modules)

### Compiler flags should carry over - no need to set stuff again here.

### Build examples

# RGB-D examples
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/RGB-D)
foreach(OUTPUTCONFIG ${CMAKE_CONFIGURATION_TYPES})
    string(TOUPPER ${OUTPUTCONFIG} OUTPUTCONFIG)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${PROJECT_SOURCE_DIR}/RGB-D)
endforeach(OUTPUTCONFIG CMAKE_CONFIGURATION_TYPES)

add_executable(rgbd_tum
RGB-D/rgbd_tum.cc)
target_link_libraries(rgbd_tum ${MAINLIB})
add_dependencies(rgbd_tum ${MAINLIB})


# Stereo examples
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/Stereo)
foreach(OUTPUTCONFIG ${CMAKE_CONFIGURATION_TYPES})
    string(TOUPPER ${OUTPUTCONFIG} OUTPUTCONFIG)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${PROJECT_SOURCE_DIR}/Stereo)
endforeach(OUTPUTCONFIG CMAKE_CONFIGURATION_TYPES)

add_executable(stereo_kitti
Stereo/stereo_kitti.cc)
target_link_libraries(stereo_kitti ${MAINLIB})
add_dependencies(stereo_kitti ${MAINLIB})

add_executable(stereo_euroc
Stereo/stereo_euroc.cc)
target_link_libraries(stereo_euroc ${MAINLIB})
add_dependencies(stereo_euroc ${MAINLIB})

add_executable(stereo_tum_vi
Stereo/stereo_tum_vi.cc)
target_link_libraries(stereo_tum_vi ${MAINLIB})
add_dependencies(stereo_tum_vi ${MAINLIB})

# Monocular examples
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${MAINLIB}/Monocular)
foreach(OUTPUTCONFIG ${CMAKE_CONFIGURATION_TYPES})
    string(TOUPPER ${OUTPUTCONFIG} OUTPUTCONFIG)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${PROJECT_SOURCE_DIR}/Monocular)
endforeach(OUTPUTCONFIG CMAKE_CONFIGURATION_TYPES)

add_executable(mono_tum
Monocular/mono_tum.cc)
target_link_libraries(mono_tum ${MAINLIB})
add_dependencies(mono_tum ${MAINLIB})

add_executable(mono_kitti
Monocular/mono_kitti.cc)
target_link_libraries(mono_kitti ${MAINLIB})
add_dependencies(mono_kitti ${MAINLIB})

add_executable(mono_euroc
Monocular/mono_euroc.cc)
target_link_libraries(mono_euroc ${MAINLIB})
add_dependencies(mono_euroc ${MAINLIB})

add_executable(mono_tum_vi
Monocular/mono_tum_vi.cc)
target_link_libraries(mono_tum_vi ${MAINLIB})
add_dependencies(mono_tum_vi ${MAINLIB})

# Monocular-Inertial examples
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/Monocular-Inertial)
foreach(OUTPUTCONFIG ${CMAKE_CONFIGURATION_TYPES})
    string(TOUPPER ${OUTPUTCONFIG} OUTPUTCONFIG)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${PROJECT_SOURCE_DIR}/Monocular-Inertial)
endforeach(OUTPUTCONFIG CMAKE_CONFIGURATION_TYPES)

add_executable(mono_inertial_euroc
Monocular-Inertial/mono_inertial_euroc.cc)
target_link_libraries(mono_inertial_euroc ${MAINLIB})
add_dependencies(mono_inertial_euroc ${MAINLIB})

add_executable(mono_inertial_tum_vi
Monocular-Inertial/mono_inertial_tum_vi.cc)
target_link_libraries(mono_inertial_tum_vi ${MAINLIB})
add_dependencies(mono_inertial_tum_vi ${MAINLIB})

# Stereo-Inertial examples
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_SOURCE_DIR}/Stereo-Inertial)
foreach(OUTPUTCONFIG ${CMAKE_CONFIGURATION_TYPES})
    string(TOUPPER ${OUTPUTCONFIG} OUTPUTCONFIG)
    set(CMAKE_RUNTIME_OUTPUT_DIRECTORY_${OUTPUTCONFIG} ${PROJECT_SOURCE_DIR}/Stereo-Inertial)
endforeach(OUTPUTCONFIG CMAKE_CONFIGURATION_TYPES)

add_executable(stereo_inertial_euroc
Stereo-Inertial/stereo_inertial_euroc.cc)
target_link_libraries(stereo_inertial_euroc ${MAINLIB})
add_dependencies(stereo_inertial_euroc ${MAINLIB})

add_executable(stereo_inertial_tum_vi
Stereo-Inertial/stereo_inertial_tum_vi.cc)
target_link_libraries(stereo_inertial_tum_vi ${MAINLIB})
add_dependencies(stereo_inertial_tum_vi ${MAINLIB})
