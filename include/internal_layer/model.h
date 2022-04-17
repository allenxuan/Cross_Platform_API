//
// Created by Xuanyi Huang on 2022/4/7.
//

#ifndef CROSS_MOBILE_PLATFORM_API_MODEL_H
#define CROSS_MOBILE_PLATFORM_API_MODEL_H

#include <cstdint>
#include <string>
#include <vector>
#include <map>
#include <common_layer/data.h>

namespace cross_platform_internal {
    struct Model {
        int a_int = 1;
        float a_float = 2.2f;
        uint32_t a_uint32 = 3;
        uint64_t a_uint64 = 4;
        std::string a_string = "a_string";
        bool a_bool = false;
        int16_t a_int16 = 5;
        int8_t a_int8 = 6;
        long a_long = 7;
        long long a_long_long = 8;
        std::vector<std::string> a_string_vector;
        std::vector<cross_platform_common::Data> a_data_vector;
        std::vector<std::shared_ptr<cross_platform_common::Data>> a_data_share_ptr_vector;
        std::map<std::string, cross_platform_common::Data> a_data_map;
        std::map<std::string, std::shared_ptr<cross_platform_common::Data>> a_data_shared_ptr_map;
    };
}

#endif //CROSS_MOBILE_PLATFORM_API_MODEL_H
