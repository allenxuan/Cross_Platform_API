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
        Data() = default;

        //non-inline non-pure virtual destructor as key function.
        VIRTUAL_DESTRUCTOR_DEC(Data)

        std::string a_data;

//    protected:
//        KEY_FUNCTION_DEC(Data)
    };

    class DataChild : public Data {
    public:
        DataChild() = default;

        VIRTUAL_DESTRUCTOR_OVERRIDE_DEC(DataChild)

        STATIC_DYNAMIC_CAST_DEC(DataChild)

        bool a_child_data = false;

//    protected:
//        KEY_FUNCTION_OVERRIDE_DEC(DataChild)

    private:
        bool a_child_private_data_ = false;
    };


    class DataGrandChild : public DataChild {
    public:
        DataGrandChild() = default;

        VIRTUAL_DESTRUCTOR_OVERRIDE_DEC(DataGrandChild)

        STATIC_DYNAMIC_CAST_DEC(DataGrandChild)

        float a_grand_child_data = 0.5f;

//    protected:
//        KEY_FUNCTION_OVERRIDE_DEC(DataGrandChild)

    private:
        float a_grand_child_private_data_ = 0.7f;
    };
}
#endif //CROSS_PLATFORM_API_DATA_H
