# platform should be one of the following (it doesn't matter if the letters are uppercase or lowercase):
# 1. android, ANDROID, "android", "ANDROID", etc.
# 2. ios, IOS, "ios", "IOS", etc.
# 3. linux, LINUX, "linux", "LINUX", etc.
macro(set_build_platform platform)
    string(TOUPPER ${platform} PLATFORM_UPPERCASE)
    message(STATUS "set_build_platform: ${PLATFORM_UPPERCASE}")
    if (DEFINED BUILD_PLATFORM)
        set(BUILD_PLATFORM_${BUILD_PLATFORM} NO)
        message(STATUS "BUILD_PLATFORM_${BUILD_PLATFORM} defined before, make BUILD_PLATFORM_${BUILD_PLATFORM} = ${BUILD_PLATFORM_${BUILD_PLATFORM}}")
    else ()
        message(STATUS "BUILD_PLATFORM not defined before")
    endif ()
    set(BUILD_PLATFORM_${PLATFORM_UPPERCASE} YES)
    message(STATUS "BUILD_PLATFORM_${PLATFORM_UPPERCASE} = ${BUILD_PLATFORM_${PLATFORM_UPPERCASE}}")
    set(BUILD_PLATFORM ${PLATFORM_UPPERCASE})
    message(STATUS "BUILD_PLATFORM = ${BUILD_PLATFORM}")
endmacro()

# source file specific for android: abc_android.cc, etc.
# source file specific for ios: abc_ios.mm, etc.
# source file specific for linux: abc_linux.cc, etc.
function(add_sources target)
    message(STATUS "******add sources for ${target} start******")
    string(TOLOWER ${BUILD_PLATFORM} PLATFORM_LOWERCASE)
    message(STATUS "PLATFORM_LOWERCASE: ${PLATFORM_LOWERCASE}")
    foreach (src ${ARGN})
        if (NOT src MATCHES "(_(android|ios|linux|python)\\.(cc|cpp|h|hpp|mm))$")
            message(STATUS "add source: ${src}")
            target_sources(${target} PRIVATE ${src})
        elseif (src MATCHES "(_${PLATFORM_LOWERCASE}\\.(cc|cpp|h|hpp|mm))$")
            message(STATUS "add source [${BUILD_PLATFORM}]: ${src}")
            target_sources(${target} PRIVATE ${src})
        else ()
            message(STATUS "skip adding source : ${src}")
        endif ()
    endforeach ()
    message(STATUS "******add sources for ${target} end******")
endfunction()

macro(add_option_force name value)
    set(OPTION_${name} ${value})
    message(STATUS "OPTION_${name}: ${OPTION_${name}}")
    if (OPTION_${name})
        add_definitions(-DOPTION_${name})
    endif ()
endmacro()



