//
// Created by Xuanyi Huang on 2022/7/5.
//

#ifndef CROSS_PLATFORM_API_MACROS_H
#define CROSS_PLATFORM_API_MACROS_H

#ifndef KEY_FUNCTION_DEC
#define KEY_FUNCTION_DEC(CLASS) \
virtual void __key_function_() const;
#endif

#ifndef KEY_FUNCTION_OVERRIDE_DEC
#define KEY_FUNCTION_OVERRIDE_DEC(CLASS) \
void __key_function_() const override;
#endif

#ifndef KEY_FUNCTION_IMP
#define KEY_FUNCTION_IMP(CLASS) \
void CLASS::__key_function_() const {}
#endif

#ifndef VIRTUAL_DESTRUCTOR_DEC
#define VIRTUAL_DESTRUCTOR_DEC(CLASS) \
virtual ~CLASS();
#endif

#ifndef VIRTUAL_DESTRUCTOR_OVERRIDE_DEC
#define VIRTUAL_DESTRUCTOR_OVERRIDE_DEC(CLASS) \
~CLASS() override;
#endif

#ifndef VIRTUAL_DESTRUCTOR_EMPTY_IMP
#define VIRTUAL_DESTRUCTOR_EMPTY_IMP(CLASS) \
CLASS::~CLASS() {}
#endif

#ifndef STATIC_DYNAMIC_CAST_DEC
#define STATIC_DYNAMIC_CAST_DEC(CLASS) \
static std::shared_ptr<cross_platform_common::CLASS> DynamicCast(const std::shared_ptr<cross_platform_common::Data> &data);
#endif

#ifndef STATIC_DYNAMIC_CAST_IMP
#define STATIC_DYNAMIC_CAST_IMP(CLASS) \
std::shared_ptr<cross_platform_common::CLASS> CLASS::DynamicCast(const std::shared_ptr<cross_platform_common::Data> &data) { \
    return std::dynamic_pointer_cast<cross_platform_common::CLASS>(data);                                                    \
}
#endif

#endif //CROSS_PLATFORM_API_MACROS_H
