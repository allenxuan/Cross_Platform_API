# Find Python 3
find_package(Python3 REQUIRED COMPONENTS Interpreter Development)
message(STATUS "Python3_INCLUDE_DIRS=${Python3_INCLUDE_DIRS}")
message(STATUS "Python3_LIBRARIES=${Python3_LIBRARIES}")