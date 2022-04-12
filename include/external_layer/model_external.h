//
// Created by Xuanyi Huang on 2022/4/7.
//

#ifndef CROSS_MOBILE_PLATFORM_API_MODEL_EXTERNAL_H
#define CROSS_MOBILE_PLATFORM_API_MODEL_EXTERNAL_H

#include <cstdint>
#include <string>
#include <vector>

namespace cross_platform_external {
    struct Model {
        uint64_t a_uint64 = 4;
        float a_float = 2.2f;
        std::string a_string = "a_string";
        std::vector<std::string> a_vector;
    };
}
#endif //CROSS_MOBILE_PLATFORM_API_MODEL_EXTERNAL_H
