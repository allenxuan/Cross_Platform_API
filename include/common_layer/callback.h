//
// Created by Xuanyi Huang on 2022/4/7.
//

#ifndef CROSS_MOBILE_PLATFORM_API_CALLBACK_H
#define CROSS_MOBILE_PLATFORM_API_CALLBACK_H

#include <external_layer/model_external.h>

namespace cross_platform_common {
    class ModelCallback {
    public:
        ModelCallback() = default;

        virtual ~ModelCallback() = default;

        virtual void onModelChangedPtr(cross_platform_external::Model &model_ptr) = 0;

        virtual void onModelChangedSharedPtr(std::shared_ptr<cross_platform_external::Model> model_shared_ptr) = 0;
    };
}
#endif //CROSS_MOBILE_PLATFORM_API_CALLBACK_H
