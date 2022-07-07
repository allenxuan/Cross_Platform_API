%module(directors="1") CrossPlatformApi

%{
#include <external_layer/cross_platform_api.h>
#include <external_layer/model_external.h>
#include <common_layer/data.h>
#include <common_layer/callback.h>
%}

// Java specific constants and enums support.
#ifdef SWIGJAVA
%include <enums.swg>
%javaconst(1);
%rename (jniWait) wait;
#endif

// doxygen-related function triggers.
%feature("doxygen:ignore:beginCppOnly", range="end:endCppOnly");
//%feature("doxygen:ignore:beginJavaOnly", range="end:endJavaOnly", contents="parse");

%include <stdint.i>
%include <std_string.i>
%include <std_pair.i>
%include <std_shared_ptr.i>
// %include <std_unique_ptr.i>
%include <std_vector.i>
%include <cpointer.i>
%include <std_wstring.i>
%include <std_map.i>
%include <std_unordered_map.i>
//%include <swiginterface.i>
%include <typemaps.i>
//%include <arrays_java.i>

// shared_ptr support.
%shared_ptr(cross_platform_common::Data)
%shared_ptr(cross_platform_common::DataChild)
%shared_ptr(cross_platform_common::DataGrandChild)
%shared_ptr(cross_platform_external::Model)
%shared_ptr(cross_platform_common::ModelCallback)

// container template.
%template(StrVec) std::vector<std::string>;
%template(DataVec) std::vector<cross_platform_common::Data>;
%template(DataSharePtrVec) std::vector<std::shared_ptr<cross_platform_common::Data>>;
%template(DataMap) std::map<std::string, cross_platform_common::Data>;
%template(DataSharePtrMap) std::map<std::string, std::shared_ptr<cross_platform_common::Data>>;
%template(DataPair) std::pair<std::string, cross_platform_common::Data>;
%template(DataSharedPtrPair) std::pair<std::string, std::shared_ptr<cross_platform_common::Data>>;

//director(callback) support.
%feature("director") cross_platform_common::ModelCallback;

//api headers.
%include "internal_layer/macros.h"
%include "common_layer/data.h"
%include "external_layer/model_external.h"
%include "common_layer/callback.h"
%include "external_layer/cross_platform_api.h"