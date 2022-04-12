//
// Created by Xuanyi Huang on 2022/4/7.
//
#include <external_layer/cross_platform_api.h>

namespace cross_platform_external {
    ApiCenter::ApiCenter() :
            model_operator_(std::make_unique<cross_platform_internal::ModelOperator>(
                    std::make_unique<cross_platform_internal::Model>())),
            model_external_ptr_(cross_platform_external::Model()),
            model_external_shared_ptr_(std::make_shared<cross_platform_external::Model>()) {
    }

    void ApiCenter::registerModelCallback(const std::shared_ptr<cross_platform_common::ModelCallback> &callback) {
        callback_ = callback;
    }

    void ApiCenter::unRegisterModelCallback(const std::shared_ptr<cross_platform_common::ModelCallback> &callback) {
        if (callback_ == callback) {
            callback_ = nullptr;
        }
    }

    cross_platform_external::Model &ApiCenter::getModelPtr() {
        return model_external_ptr_;
    }

    std::shared_ptr<cross_platform_external::Model> ApiCenter::getModelSharedPtr() {
        return model_external_shared_ptr_;
    }

    float ApiCenter::sumIntAndFloat() {
        return model_operator_->SumFloatAndUint32();
    }

    std::string ApiCenter::getString() {
        return model_operator_->GetString();
    }

    void ApiCenter::setString(const std::string &string) {
        model_operator_->SetString(string);
        OnFieldChange();
    }

    void ApiCenter::setVector(const std::vector<std::string> &vector) {
        model_operator_->SetVector(vector);
        OnFieldChange();
    }

    //copy data
    void ApiCenter::ModelSync() {
        model_external_ptr_.a_uint64 = model_operator_->GetModel()->a_uint64;
        model_external_ptr_.a_string = model_operator_->GetModel()->a_string;

        model_external_shared_ptr_->a_uint64 = model_operator_->GetModel()->a_uint64;
        model_external_shared_ptr_->a_string = model_operator_->GetModel()->a_string;
    }

    void ApiCenter::OnFieldChange() {
        ModelSync();
        if (callback_ != nullptr) {
            callback_->onModelChangedPtr(model_external_ptr_);
            callback_->onModelChangedSharedPtr(model_external_shared_ptr_);
        }
    }
}
