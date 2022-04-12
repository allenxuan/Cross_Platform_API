cmake_minimum_required(VERSION 3.6)
project(Cross_Platform_API_ANDROID)

set(PROJECT_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../../../../../../)
message(STATUS "PROJECT_ROOT_FROM_ANDROID: ${PROJECT_ROOT}")
set(SWIG_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../../../swig/gen/cpp)
message(STATUS "SWIG_ROOT_FROM_ANDROID: ${SWIG_ROOT}")

include(${PROJECT_ROOT}/cmake/CmakeTools.cmake)
set_build_platform(ANDROID)

add_library(cross_platform_lib_android SHARED)
target_include_directories(cross_platform_lib_android
        PRIVATE ./
        PRIVATE ${SWIG_ROOT})
add_sources(cross_platform_lib_android
        main.cc
        ${SWIG_ROOT}/cross_platform_api_android.cpp)

add_subdirectory(${PROJECT_ROOT} cross_platform_lib)
target_link_libraries(cross_platform_lib_android
        PRIVATE cross_platform_lib)