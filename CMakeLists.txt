cmake_minimum_required(VERSION 3.6)
project(Cross_Platform_API)

message(STATUS "CMAKE_COMMAND: ${CMAKE_COMMAND}")
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

set(PROJECT_ROOT ${CMAKE_CURRENT_SOURCE_DIR})
message(STATUS "PROJECT_ROOT: ${PROJECT_ROOT}")

include(cmake/CmakeTools.cmake)
if (NOT DEFINED BUILD_PLATFORM)
    set_build_platform(LINUX)
endif()

add_subdirectory(src)

add_option_force(TEST ON)
if (OPTION_TEST)
    message(STATUS "include unit test")
    add_subdirectory(test)
endif ()
