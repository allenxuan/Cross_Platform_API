//
// Created by Xuanyi Huang on 2022/7/5.
//
#include <common_layer/data.h>

namespace cross_platform_common {
    VIRTUAL_DESTRUCTOR_EMPTY_IMP(Data)

//    KEY_FUNCTION_IMP(Data)

    VIRTUAL_DESTRUCTOR_EMPTY_IMP(DataChild)

//    KEY_FUNCTION_IMP(DataChild)

    STATIC_DYNAMIC_CAST_IMP(DataChild)

    VIRTUAL_DESTRUCTOR_EMPTY_IMP(DataGrandChild)

//    KEY_FUNCTION_IMP(DataGrandChild)

    STATIC_DYNAMIC_CAST_IMP(DataGrandChild)
}
