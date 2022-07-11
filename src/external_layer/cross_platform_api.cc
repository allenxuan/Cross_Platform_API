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
        return model_operator_->SumIntAndFloat();
    }

    void ApiCenter::setUint64(uint64_t a_uint64_t) {
        model_operator_->SetUint64(a_uint64_t);
        OnFieldChange();
    }

    uint64_t ApiCenter::getUnit64() {
        return model_operator_->GetUnit64();
    }

    float ApiCenter::getFloat() {
        return model_operator_->GetFloat();
    }

    void ApiCenter::setFloat(float a_float) {
        model_operator_->SetFloat(a_float);
        OnFieldChange();
    }

    bool ApiCenter::getBool() {
        return model_operator_->GetBool();
    }

    void ApiCenter::setBool(bool b) {
        model_operator_->SetBool(b);
        OnFieldChange();
    }

    std::string ApiCenter::getString() {
        return model_operator_->GetString();
    }

    void ApiCenter::setString(const std::string &string) {
        model_operator_->SetString(string);
        OnFieldChange();
    }

    void ApiCenter::setStringVector(const std::vector<std::string> &vector) {
        model_operator_->SetStringVector(vector);
        OnFieldChange();
    }

    std::vector<std::string> ApiCenter::getStringVector() {
        return model_operator_->GetStringVector();
    }

    void ApiCenter::setDataVector(const std::vector<cross_platform_common::Data> &data_vector) {
        model_operator_->SetDataVector(data_vector);
        OnFieldChange();
    }

    std::vector<cross_platform_common::Data> &ApiCenter::getDataVectorRef() {
        return model_operator_->GetDataVectorRef();
    }

    void ApiCenter::setDataSharedPtrVector(
            const std::vector<std::shared_ptr<cross_platform_common::Data>> &data_shared_ptr_vector) {
        model_operator_->SetDataSharedPtrVector(data_shared_ptr_vector);
        OnFieldChange();
    }

    std::vector<std::shared_ptr<cross_platform_common::Data>> ApiCenter::getDataSharedPtrVector() {
        return model_operator_->GetDataSharedPtrVector();
    }

    void ApiCenter::setDataMap(const std::map<std::string, cross_platform_common::Data> &data_map) {
        model_operator_->SetDataMap(data_map);
        OnFieldChange();
    }

    std::map<std::string, cross_platform_common::Data> &ApiCenter::getDataMapRef() {
        return model_operator_->GetDataMapRef();
    }

    void ApiCenter::setDataSharedPtrMap(
            const std::map<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_map) {
        model_operator_->SetDataSharedPtrMap(a_data_shared_ptr_map);
        OnFieldChange();
    }

    std::map<std::string, std::shared_ptr<cross_platform_common::Data>> ApiCenter::getDataSharedPtrMap() {
        return model_operator_->GetDataSharedPtrMap();
    }

    void ApiCenter::setDataSharedPtrUnorderedMap(
            const std::unordered_map<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_unordered_map) {
        model_operator_->SetDataSharedPtrUnorderedMap(a_data_shared_ptr_unordered_map);
        OnFieldChange();
    }

    std::unordered_map<std::string, std::shared_ptr<cross_platform_common::Data>>
    ApiCenter::getDataSharedPtrUnorderedMap() {
        return model_operator_->GetDataSharedPtrUnorderedMap();
    }

    void ApiCenter::setDataPair(const std::pair<std::string, cross_platform_common::Data> &a_data_pair) {
        model_operator_->SetDataPair(a_data_pair);
        OnFieldChange();
    }

    std::pair<std::string, cross_platform_common::Data> &ApiCenter::getDataPairRef() {
        return model_operator_->GetDataPairRef();
    }

    void ApiCenter::setDataSharedPtrPair(
            const std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_pair) {
        model_operator_->SetDataSharedPtrPair(a_data_shared_ptr_pair);
        OnFieldChange();
    }

    std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> ApiCenter::getDataSharedPtrPair() {
        return model_operator_->GetDataSharedPtrPair();
    }

    //copy data
    void ApiCenter::ModelSync() {
        model_external_ptr_.a_uint64 = model_operator_->GetModel()->a_uint64;
        model_external_ptr_.a_float = model_operator_->GetModel()->a_float;
        model_external_ptr_.a_string = model_operator_->GetModel()->a_string;
        model_external_ptr_.a_string_vector = model_operator_->GetModel()->a_string_vector;

        model_external_shared_ptr_->a_uint64 = model_operator_->GetModel()->a_uint64;
        model_external_shared_ptr_->a_float = model_operator_->GetModel()->a_float;
        model_external_shared_ptr_->a_string = model_operator_->GetModel()->a_string;
        model_external_shared_ptr_->a_string_vector = model_operator_->GetModel()->a_string_vector;
    }

    void ApiCenter::OnFieldChange() {
        ModelSync();
        if (callback_ != nullptr) {
            callback_->onModelChangedPtr(model_external_ptr_);
            callback_->onModelChangedSharedPtr(model_external_shared_ptr_);
        }
    }
}
