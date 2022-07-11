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

    void ModelOperator::SetUint64(uint64_t a_uint64_t) {
        model_internal_->a_uint64 = a_uint64_t;
    }

    uint64_t ModelOperator::GetUnit64() {
        return model_internal_->a_uint64;
    }

    void ModelOperator::SetFloat(float a_float) {
        model_internal_->a_float = a_float;
    }

    float ModelOperator::GetFloat() {
        return model_internal_->a_float;
    }

    bool ModelOperator::GetBool() {
        return model_internal_->a_bool;
    }

    void ModelOperator::SetBool(bool b) {
        model_internal_->a_bool = b;
    }

    std::string ModelOperator::GetString() {
        return model_internal_->a_string;
    }

    void ModelOperator::SetString(const std::string &string) {
        model_internal_->a_string = string;
    }

    void ModelOperator::SetStringVector(const std::vector<std::string> &vector) {
        model_internal_->a_string_vector = vector;
    }

    std::vector<std::string> ModelOperator::GetStringVector() {
        return model_internal_->a_string_vector;
    }

    void ModelOperator::SetDataVector(const std::vector<cross_platform_common::Data> &data_vector) {
        model_internal_->a_data_vector = data_vector;
    }

    std::vector<cross_platform_common::Data> &ModelOperator::GetDataVectorRef() {
        return model_internal_->a_data_vector;
    }

    void ModelOperator::SetDataSharedPtrVector(
            const std::vector<std::shared_ptr<cross_platform_common::Data>> &data_shared_ptr_vector) {
        model_internal_->a_data_share_ptr_vector = data_shared_ptr_vector;
    }

    std::vector<std::shared_ptr<cross_platform_common::Data>> ModelOperator::GetDataSharedPtrVector() {
        return model_internal_->a_data_share_ptr_vector;
    }

    void ModelOperator::SetDataMap(const std::map<std::string, cross_platform_common::Data> &data_map) {
        model_internal_->a_data_map = data_map;
    }

    std::map<std::string, cross_platform_common::Data> &ModelOperator::GetDataMapRef() {
        return model_internal_->a_data_map;
    }

    void ModelOperator::SetDataSharedPtrMap(
            const std::map<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_map) {
        model_internal_->a_data_shared_ptr_map = a_data_shared_ptr_map;
    }

    std::map<std::string, std::shared_ptr<cross_platform_common::Data>> ModelOperator::GetDataSharedPtrMap() {
        return model_internal_->a_data_shared_ptr_map;
    }

    void ModelOperator::SetDataSharedPtrUnorderedMap(
            const std::unordered_map<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_map) {
        model_internal_->a_data_shared_ptr_unordered_map = a_data_shared_ptr_map;
    }

    std::unordered_map<std::string, std::shared_ptr<cross_platform_common::Data>>
    ModelOperator::GetDataSharedPtrUnorderedMap() {
        return model_internal_->a_data_shared_ptr_unordered_map;
    }

    void ModelOperator::SetDataPair(const std::pair<std::string, cross_platform_common::Data> &a_data_pair) {
        model_internal_->a_data_pair = a_data_pair;
    }

    std::pair<std::string, cross_platform_common::Data> &ModelOperator::GetDataPairRef() {
        return model_internal_->a_data_pair;
    }

    void ModelOperator::SetDataSharedPtrPair(
            const std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_pair) {
        model_internal_->a_data_shared_ptr_pair = a_data_shared_ptr_pair;
    }

    std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> ModelOperator::GetDataSharedPtrPair() {
        return model_internal_->a_data_shared_ptr_pair;
    }
}

