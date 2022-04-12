//
// Created by Xuanyi Huang on 2022/4/7.
//
#include <internal_layer/model.h>
#include <internal_layer/model_operator.h>
#include <common_layer/callback.h>

namespace cross_platform_internal {
    ModelOperator::ModelOperator(std::unique_ptr<Model> model) {
        model_internal_ = std::move(model);
    }

    const std::unique_ptr<Model> &ModelOperator::GetModel() {
        return model_internal_;
    }

    float ModelOperator::SumIntAndFloat() {
        return model_internal_->a_int + model_internal_->a_float;
    }

    float ModelOperator::SumFloatAndUint32() {
        return model_internal_->a_float + model_internal_->a_uint32;
    }

    uint64_t ModelOperator::Uint32MinusUint64() {
        return model_internal_->a_uint32 - model_internal_->a_uint64;
    }

    std::string ModelOperator::GetString() {
        return model_internal_->a_string;
    }

    void ModelOperator::SetString(const std::string &string) {
        model_internal_->a_string = string;
    }

    bool ModelOperator::GetBool() {
        return model_internal_->a_bool;
    }

    void ModelOperator::SetBool(bool b) {
        model_internal_->a_bool = b;
    }

    void ModelOperator::SetVector(const std::vector<std::string> &vector) {
        model_internal_->a_vector = vector;
    }
}

