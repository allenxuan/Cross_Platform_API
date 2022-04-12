//
//  test_model.hpp
//  cross_platform_api_ios
//
//  Created by bytedance on 2022/4/11.
//

#ifndef test_model_h
#define test_model_h

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

#endif /* test_model_h */
