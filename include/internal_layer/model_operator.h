//
// Created by Xuanyi Huang on 2022/4/7.
//

#ifndef CROSS_MOBILE_PLATFORM_API_MODEL_OPERATOR_H
#define CROSS_MOBILE_PLATFORM_API_MODEL_OPERATOR_H

#include <internal_layer/model.h>

namespace cross_platform_internal {
    class ModelOperator {
    public:

        ModelOperator() = delete;

        ~ModelOperator() = default;

        explicit ModelOperator(std::unique_ptr<Model> model);

        const std::unique_ptr<Model> &GetModel();

        //### primitives start ###
        float SumIntAndFloat();

        float SumFloatAndUint32();

        uint64_t Uint32MinusUint64();

        void SetUint64(uint64_t a_uint64_t);

        uint64_t GetUnit64();

        void SetFloat(float a_float);

        float GetFloat();

        bool GetBool();

        void SetBool(bool b);
        //### primitives end ###

        //### string start ###
        std::string GetString();

        void SetString(const std::string &string);
        //### string end ###

        //### containers start ###
        void SetStringVector(const std::vector<std::string> &vector);

        std::vector<std::string> GetStringVector();

        void SetDataVector(const std::vector<cross_platform_common::Data> &data_vector);

        std::vector<cross_platform_common::Data> &GetDataVectorRef();

        void SetDataSharedPtrVector(const std::vector<std::shared_ptr<cross_platform_common::Data>> &data_shared_ptr_vector);

        std::vector<std::shared_ptr<cross_platform_common::Data>> GetDataSharedPtrVector();

        void SetDataMap(const std::map<std::string, cross_platform_common::Data> &data_map);

        std::map<std::string, cross_platform_common::Data> &GetDataMapRef();

        void SetDataSharedPtrMap(const std::map<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_map);

        std::map<std::string, std::shared_ptr<cross_platform_common::Data>> GetDataSharedPtrMap();

        void SetDataSharedPtrUnorderedMap(const std::unordered_map<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_map);

        std::unordered_map<std::string, std::shared_ptr<cross_platform_common::Data>> GetDataSharedPtrUnorderedMap();

        void SetDataPair(const std::pair<std::string, cross_platform_common::Data> &a_data_pair);

        std::pair<std::string, cross_platform_common::Data> &GetDataPairRef();

        void SetDataSharedPtrPair(const std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> &a_data_shared_ptr_pair);

        std::pair<std::string, std::shared_ptr<cross_platform_common::Data>> GetDataSharedPtrPair();
        //### containers end ###

    private:
        std::unique_ptr<Model> model_internal_ = nullptr;
    };
}
#endif //CROSS_MOBILE_PLATFORM_API_MODEL_OPERATOR_H
