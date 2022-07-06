# Docs:
# https://blog.xizhibei.me/2020/04/05/cmake-4-test-with-google-test/
# https://github.com/google/googletest/tree/main/googletest
# https://cmake.org/cmake/help/latest/command/add_test.html
# http://senlinzhan.github.io/2017/10/08/gtest/

# For Windows: Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)

add_subdirectory(${PROJECT_ROOT}/third_party/googletest gtest)

macro(link_gtest executable_target)
    target_link_libraries(${executable_target} PUBLIC
            GTest::gtest
            GTest::gtest_main
            GTest::gmock
            GTest::gmock_main)

    #add to CTest if necessary
    add_test(NAME ${executable_target}_CTest COMMAND ${executable_target} --arg1=test_arg1 --arg2=test_arg2)
endmacro()