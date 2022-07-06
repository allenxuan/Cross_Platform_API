//
// Created by Xuanyi Huang on 2022/4/17.
//

#ifndef CROSS_PLATFORM_API_DATA_H
#define CROSS_PLATFORM_API_DATA_H

#include <string>
#include <internal_layer/macros.h>

namespace cross_platform_common {
    class Data {
    public:
        KEY_FUNCTION_DEC(Data)

        Data() = default;

        ~Data() = default;

        std::string a_data;
    };

    class DataChild : public Data {
    public:
        KEY_FUNCTION_OVERRIDE_DEC(DataChild)

        STATIC_DYNAMIC_CAST_DEC(DataChild)

        DataChild() = default;

        ~DataChild() = default;

        bool a_child_data = false;
    private:
        bool a_child_private_data_ = false;
    };


    class DataGrandChild : public DataChild {
    public:
        KEY_FUNCTION_OVERRIDE_DEC(DataGrandChild)

        STATIC_DYNAMIC_CAST_DEC(DataGrandChild)

        DataGrandChild() = default;

        ~DataGrandChild() = default;

        float a_grand_child_data = 0.5f;
    private:
        float a_grand_child_private_data_ = 0.7f;
    };
}
#endif //CROSS_PLATFORM_API_DATA_H
