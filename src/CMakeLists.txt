add_library(cross_platform_lib STATIC)
target_include_directories(cross_platform_lib
        PUBLIC ../include
        )
add_sources(cross_platform_lib
        external_layer/cross_platform_api.cc
        internal_layer/model_operator.cc)