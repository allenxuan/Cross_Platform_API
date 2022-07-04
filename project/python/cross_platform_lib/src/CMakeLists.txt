cmake_minimum_required(VERSION 3.6)
project(Cross_Platform_API_Python)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

set(PROJECT_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../../../../)
message(STATUS "PROJECT_ROOT_FROM_ANDROID: ${PROJECT_ROOT}")
set(SWIG_ROOT ${CMAKE_CURRENT_SOURCE_DIR}/../swig/gen/cpp)
message(STATUS "SWIG_ROOT_FROM_ANDROID: ${SWIG_ROOT}")

include(${PROJECT_ROOT}/cmake/CmakeTools.cmake)
set_build_platform(PYTHON)

include(${PROJECT_ROOT}/cmake/Python.cmake)

add_library(_CrossPlatformApi SHARED)
set_target_properties(_CrossPlatformApi PROPERTIES PREFIX "")
set_target_properties(_CrossPlatformApi PROPERTIES SUFFIX ".so")
target_include_directories(_CrossPlatformApi
        PRIVATE ./
        PRIVATE ${SWIG_ROOT}
        PRIVATE ${Python3_INCLUDE_DIRS}
        )
add_sources(_CrossPlatformApi
        ${SWIG_ROOT}/cross_platform_api_python.cpp)

add_subdirectory(${PROJECT_ROOT} cross_platform_lib)
target_link_libraries(_CrossPlatformApi
        PRIVATE ${Python3_LIBRARIES}
        PRIVATE cross_platform_lib)