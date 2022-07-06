cmake_minimum_required(VERSION 3.6)
project(Cross_Platform_API_UnitTest)

set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

include(../cmake/GTest.cmake)

add_executable(test_main_executable "")
add_sources(test_main_executable
        test_main.cc)
target_link_libraries(test_main_executable
        PRIVATE cross_platform_lib)
link_gtest(test_main_executable)