//
// Created by Xuanyi Huang on 2022/4/7.
//

#ifndef CROSS_MOBILE_PLATFORM_API_CROSS_PLATFORM_API_H
#define CROSS_MOBILE_PLATFORM_API_CROSS_PLATFORM_API_H

#include <memory>
#include <internal_layer/model.h>
#include <internal_layer/model_operator.h>
#include <external_layer/model_external.h>
#include <common_layer/callback.h>

namespace cross_platform_external {
    class ApiCenter {
    public:
        ApiCenter();

        ~ApiCenter() {};

        void registerModelCallback(const std::shared_ptr<cross_platform_common::ModelCallback> &callback);

        void unRegisterModelCallback(const std::shared_ptr<cross_platform_common::ModelCallback> &callback);

        cross_platform_external::Model &getModelPtr();

        std::shared_ptr<cross_platform_external::Model> getModelSharedPtr();

        float sumIntAndFloat();

        std::string getString();

        void setString(const std::string &string);

        void setVector(const std::vector<std::string> &vector);

    private:
        std::unique_ptr<cross_platform_internal::ModelOperator> model_operator_ = nullptr;
        cross_platform_external::Model model_external_ptr_;
        std::shared_ptr<cross_platform_external::Model> model_external_shared_ptr_ = nullptr;
        std::shared_ptr<cross_platform_common::ModelCallback> callback_ = nullptr;

        void ModelSync();

        void OnFieldChange();
    };
}
#endif //CROSS_MOBILE_PLATFORM_API_CROSS_PLATFORM_API_H
