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

        float SumIntAndFloat();

        float SumFloatAndUint32();

        uint64_t Uint32MinusUint64();

        std::string GetString();

        void SetString(const std::string &string);

        bool GetBool();

        void SetBool(bool b);

        void SetVector(const std::vector<std::string> &vector);

    private:
        std::unique_ptr<Model> model_internal_ = nullptr;
    };
}
#endif //CROSS_MOBILE_PLATFORM_API_MODEL_OPERATOR_H
