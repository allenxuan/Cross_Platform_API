%module(directors="1") CrossPlatformApi

%{
#include <external_layer/cross_platform_api.h>
#include <external_layer/model_external.h>
#include <common_layer/callback.h>


#include "CrossPlatformApi_proxy.h"
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
//%include <std_unique_ptr.i>
%include <std_vector.i>
%include <cpointer.i>
//%include <std_wstring.i>
//%include <std_unordered_map.i>
//%include <swiginterface.i>
%include <typemaps.i>
//%include <arrays_java.i>

// shared_ptr support.
%shared_ptr(cross_platform_external::Model)
%shared_ptr(cross_platform_common::ModelCallback)

// container template.
%template(StrVec) std::vector<std::string>;

//director(callback) support.
%feature("director") cross_platform_common::ModelCallback;

//ignore classes, methods, fields.
//%ignore cross_platform_common::ModelCallback
//%ignore nleimage_api::NLEImage::replaceEmbeddedResources(const std::vector<std::pair<std::string, nleimage::Resource>> &replaceInfo);

//api headers.
%include "external_layer/model_external.h"
%include "common_layer/callback.h"
%include "external_layer/cross_platform_api.h"