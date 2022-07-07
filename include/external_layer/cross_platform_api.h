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
#include <common_layer/data.h>

namespace cross_platform_external {
    class ApiCenter {
    public:
        ApiCenter();

        ~ApiCenter() = default;

        void registerModelCallback(const std::shared_ptr<cross_platform_common::ModelCallback> &callback);

        void unRegisterModelCallback(const std::shared_ptr<cross_platform_common::ModelCallback> &callback);

        /**
         * @return plain reference
         */
        cross_platform_external::Model &getModelPtr();

        /**
         * @return shared_ptr by value
         */
        std::shared_ptr<cross_platform_external::Model> getModelSharedPtr();

        //### primitives start ###
        float sumIntAndFloat();

        void setUint64(uint64_t a_uint64_t);

        uint64_t getUnit64();

        void setFloat(float a_float);

        float getFloat();

        bool getBool();

        void setBool(bool b);
        //### primitives end ###

        //### string start ###
        std::string getString();

        void setString(const std::string &string);
        //### string end ###

        //### containers start ###
        void setStringVector(const std::vector<std::string> &vector);

        std::vector<std::string> getStringVector();

        void setDataVector(const std::vector<cross_platform_common::Data> &data_vector);

        std::vector<cross_platform_common::Data> &getDataVectorRef();

        void setDataSharedPtrVector(const std::vector<std::shared_ptr<cross_platform_common::Data>> &data_shared_ptr_vector);

        std::vector<std::shared_ptr<cross_platform_common::Data>> getDataSharedPtrVector();

        void setDataMap(const std::map<std::string, cross_platform_common::Data> &data_map);

        std::map<std::string, cross_platform_common::Data> &getDataMapRef();

        void setDataSharedPtrMap(const std::map<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_map);

        std::map<std::string, std::shared_ptr<cross_platform_common::Data>> getDataSharedPtrMap();

        void setDataPair(const std::pair<std::string, cross_platform_common::Data> &a_data_pair);

        std::pair<std::string, cross_platform_common::Data> &getDataPairRef();

        void setDataSharedPtrPair(const std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_pair);

        std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> getDataSharedPtrPair();
        //### containers end ###

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
