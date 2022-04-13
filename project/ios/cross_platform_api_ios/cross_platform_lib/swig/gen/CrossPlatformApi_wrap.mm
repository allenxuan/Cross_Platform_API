/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 2.0.11
 *
 * This file is not intended to be easily readable and contains a number of
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG
 * interface file instead.
 * ----------------------------------------------------------------------------- */
#define SWIG_DIRECTORS

#ifdef __cplusplus
/* SwigValueWrapper is described in swig.swg */
template<typename T> class SwigValueWrapper {
  struct SwigMovePointer {
    T *ptr;
    SwigMovePointer(T *p) : ptr(p) { }
    ~SwigMovePointer() { delete ptr; }
    SwigMovePointer& operator=(SwigMovePointer& rhs) { T* oldptr = ptr; ptr = 0; delete oldptr; ptr = rhs.ptr; rhs.ptr = 0; return *this; }
  } pointer;
  SwigValueWrapper& operator=(const SwigValueWrapper<T>& rhs);
  SwigValueWrapper(const SwigValueWrapper<T>& rhs);
public:
  SwigValueWrapper() : pointer(0) { }
  SwigValueWrapper& operator=(const T& t) { SwigMovePointer tmp(new T(t)); pointer = tmp; return *this; }
  operator T&() const { return *pointer.ptr; }
  T *operator&() { return pointer.ptr; }
};

template <typename T> T SwigValueInit() {
  return T();
}
#endif

/* -----------------------------------------------------------------------------
 *  This section contains generic SWIG labels for method/variable
 *  declarations/attributes, and other compiler dependent labels.
 * ----------------------------------------------------------------------------- */

/* template workaround for compilers that cannot correctly implement the C++ standard */
#ifndef SWIGTEMPLATEDISAMBIGUATOR
# if defined(__SUNPRO_CC) && (__SUNPRO_CC <= 0x560)
#  define SWIGTEMPLATEDISAMBIGUATOR template
# elif defined(__HP_aCC)
/* Needed even with `aCC -AA' when `aCC -V' reports HP ANSI C++ B3910B A.03.55 */
/* If we find a maximum version that requires this, the test would be __HP_aCC <= 35500 for A.03.55 */
#  define SWIGTEMPLATEDISAMBIGUATOR template
# else
#  define SWIGTEMPLATEDISAMBIGUATOR
# endif
#endif

/* inline attribute */
#ifndef SWIGINLINE
# if defined(__cplusplus) || (defined(__GNUC__) && !defined(__STRICT_ANSI__))
#   define SWIGINLINE inline
# else
#   define SWIGINLINE
# endif
#endif

/* attribute recognised by some compilers to avoid 'unused' warnings */
#ifndef SWIGUNUSED
# if defined(__GNUC__)
#   if !(defined(__cplusplus)) || (__GNUC__ > 3 || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4))
#     define SWIGUNUSED __attribute__ ((__unused__))
#   else
#     define SWIGUNUSED
#   endif
# elif defined(__ICC)
#   define SWIGUNUSED __attribute__ ((__unused__))
# else
#   define SWIGUNUSED
# endif
#endif

#ifndef SWIG_MSC_UNSUPPRESS_4505
# if defined(_MSC_VER)
#   pragma warning(disable : 4505) /* unreferenced local function has been removed */
# endif
#endif

#ifndef SWIGUNUSEDPARM
# ifdef __cplusplus
#   define SWIGUNUSEDPARM(p)
# else
#   define SWIGUNUSEDPARM(p) p SWIGUNUSED
# endif
#endif

/* internal SWIG method */
#ifndef SWIGINTERN
# define SWIGINTERN static SWIGUNUSED
#endif

/* internal inline SWIG method */
#ifndef SWIGINTERNINLINE
# define SWIGINTERNINLINE SWIGINTERN SWIGINLINE
#endif

/* exporting methods */
#if (__GNUC__ >= 4) || (__GNUC__ == 3 && __GNUC_MINOR__ >= 4)
#  ifndef GCC_HASCLASSVISIBILITY
#    define GCC_HASCLASSVISIBILITY
#  endif
#endif

#ifndef SWIGEXPORT
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   if defined(STATIC_LINKED)
#     define SWIGEXPORT
#   else
#     define SWIGEXPORT __declspec(dllexport)
#   endif
# else
#   if defined(__GNUC__) && defined(GCC_HASCLASSVISIBILITY)
#     define SWIGEXPORT __attribute__ ((visibility("default")))
#   else
#     define SWIGEXPORT
#   endif
# endif
#endif

/* calling conventions for Windows */
#ifndef SWIGSTDCALL
# if defined(_WIN32) || defined(__WIN32__) || defined(__CYGWIN__)
#   define SWIGSTDCALL __stdcall
# else
#   define SWIGSTDCALL
# endif
#endif

/* Deal with Microsoft's attempt at deprecating C standard runtime functions */
#if !defined(SWIG_NO_CRT_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_CRT_SECURE_NO_DEPRECATE)
# define _CRT_SECURE_NO_DEPRECATE
#endif

/* Deal with Microsoft's attempt at deprecating methods in the standard C++ library */
#if !defined(SWIG_NO_SCL_SECURE_NO_DEPRECATE) && defined(_MSC_VER) && !defined(_SCL_SECURE_NO_DEPRECATE)
# define _SCL_SECURE_NO_DEPRECATE
#endif



#import <Foundation/Foundation.h>
#include <stdlib.h>
#include <string.h>


/* Contract support */

#define SWIG_contract_assert(nullreturn, expr, msg) if (!(expr)) { /*throw exception*/ return nullreturn; } else


/* Support for throwing Objc exceptions */
typedef enum {
  SWIG_ObjcOutOfMemoryError = 1, 
  SWIG_ObjcIOException, 
  SWIG_ObjcRuntimeException, 
  SWIG_ObjcIndexOutOfBoundsException,
  SWIG_ObjcArithmeticException,
  SWIG_ObjcIllegalArgumentException,
  SWIG_ObjcNullPointerException,
  SWIG_ObjcDirectorPureVirtual,
  SWIG_ObjcUnknownError
} SWIG_ObjcExceptionCodes;

typedef struct {
  SWIG_ObjcExceptionCodes code;
  const char *Objc_exception;
} SWIG_ObjcExceptions_t;


static void SWIGUNUSED SWIG_ObjcThrowException(SWIG_ObjcExceptionCodes code, const char *msg) {
  static const SWIG_ObjcExceptions_t Objc_exceptions[] = {
    { SWIG_ObjcOutOfMemoryError, "OutOfMemoryError" },
    { SWIG_ObjcIOException, "IOException" },
    { SWIG_ObjcRuntimeException, "RuntimeException" },
    { SWIG_ObjcIndexOutOfBoundsException, "IndexOutOfBoundsException" },
    { SWIG_ObjcArithmeticException, "ArithmeticException" },
    { SWIG_ObjcIllegalArgumentException, "IllegalArgumentException" },
    { SWIG_ObjcNullPointerException, "NullPointerException" },
    { SWIG_ObjcDirectorPureVirtual, "RuntimeException" },
    { SWIG_ObjcUnknownError,  "UnknownError" },
    { (SWIG_ObjcExceptionCodes)0,  "UnknownError" }
  };
  const SWIG_ObjcExceptions_t *except_ptr = Objc_exceptions;
  while (except_ptr->code != code && except_ptr->code)
   except_ptr++;
  
  NSString* except_name = [NSString stringWithUTF8String:except_ptr->Objc_exception];
  NSString* except_reason = [NSString stringWithUTF8String:msg];
  [[[NSException alloc] initWithName:except_name reason:except_reason userInfo:nil] raise];
}

/*  Errors in SWIG */
#define  SWIG_UnknownError    	   -1
#define  SWIG_IOError        	   -2
#define  SWIG_RuntimeError   	   -3
#define  SWIG_IndexError     	   -4
#define  SWIG_TypeError      	   -5
#define  SWIG_DivisionByZero 	   -6
#define  SWIG_OverflowError  	   -7
#define  SWIG_SyntaxError    	   -8
#define  SWIG_ValueError     	   -9
#define  SWIG_SystemError    	   -10
#define  SWIG_AttributeError 	   -11
#define  SWIG_MemoryError    	   -12
#define  SWIG_NullReferenceError   -13



/* -----------------------------------------------------------------------------
 * director.swg
 *
 * This file contains support for director classes that proxy
 * method calls from C++ to ObjC extensions.
 * ----------------------------------------------------------------------------- */

#ifdef __cplusplus

#if defined(DEBUG_DIRECTOR_OWNED)
#include <iostream>
#endif

namespace Swig {

  /* director base class */
  class Director {
  protected:
    __weak id swig_weak_ptr_;
    id swig_strong_ptr_;

  public:
    Director() : swig_weak_ptr_(nil), swig_strong_ptr_(nil) {
    }

    virtual ~Director() {
    }

    // Swig methods

    void swig_set_self(id obj) {
      if (swig_strong_ptr_) {
        swig_strong_ptr_ = obj;
      }
      swig_weak_ptr_ = obj;
    }

    id swig_get_self() const {
      return swig_weak_ptr_;
    }

    void swig_objc_change_ownership(id obj, bool take_or_release) {
      swig_strong_ptr_ = take_or_release ? nil : obj;
    }

  };
}

#endif /* __cplusplus */

#include <external_layer/cross_platform_api.h>
#include <external_layer/model_external.h>
#include <common_layer/callback.h>


#include "CrossPlatformApi_proxy.h"


#include <stdint.h>		// Use the C99 official header


#include <string>


#include <stdexcept>


SWIGINTERN void SWIG_ObjcException(int code, const char *msg) {
  SWIG_ObjcExceptionCodes exception_code = SWIG_ObjcUnknownError;
  switch(code) {
  case SWIG_MemoryError:
    exception_code = SWIG_ObjcOutOfMemoryError;
    break;
  case SWIG_IOError:
    exception_code = SWIG_ObjcIOException;
    break;
  case SWIG_SystemError:
  case SWIG_RuntimeError:
    exception_code = SWIG_ObjcRuntimeException;
    break;
  case SWIG_OverflowError:
  case SWIG_IndexError:
    exception_code = SWIG_ObjcIndexOutOfBoundsException;
    break;
  case SWIG_DivisionByZero:
    exception_code = SWIG_ObjcArithmeticException;
    break;
  case SWIG_SyntaxError:
  case SWIG_ValueError:
  case SWIG_TypeError:
    exception_code = SWIG_ObjcIllegalArgumentException;
    break;
  case SWIG_UnknownError:
  default:
    exception_code = SWIG_ObjcUnknownError;
    break;
  }
  SWIG_ObjcThrowException(exception_code, msg);
}


#include <stdexcept>


#include <utility>


#include <vector>
#include <stdexcept>

SWIGINTERN std::vector< std::string >::const_reference std_vector_Sl_std_string_Sg__get(std::vector< std::string > *self,int i){
                int size = int(self->size());
                if (i>=0 && i<size)
                    return (*self)[i];
                else
                    throw std::out_of_range("vector index out of range");
            }
SWIGINTERN void std_vector_Sl_std_string_Sg__set(std::vector< std::string > *self,int i,std::vector< std::string >::value_type const &val){
                int size = int(self->size());
                if (i>=0 && i<size)
                    (*self)[i] = val;
                else
                    throw std::out_of_range("vector index out of range");
            }

struct SWIG_null_deleter {
  void operator() (void const *) const {
  }
};
#define SWIG_NO_NULL_DELETER_0 , SWIG_null_deleter()
#define SWIG_NO_NULL_DELETER_1
#define SWIG_NO_NULL_DELETER_SWIG_POINTER_NEW
#define SWIG_NO_NULL_DELETER_SWIG_POINTER_OWN



/* ---------------------------------------------------
 * C++ director class methods
 * --------------------------------------------------- */

#include <objc/runtime.h>
#include "CrossPlatformApi_wrap.h"

SwigDirector_ModelCallback::SwigDirector_ModelCallback() : cross_platform_common::ModelCallback(), Swig::Director() {
}

SwigDirector_ModelCallback::~SwigDirector_ModelCallback() {
  
}

void SwigDirector_ModelCallback::onModelChangedPtr(cross_platform_external::Model &model_ptr) {
  void * jmodel_ptr = 0 ;
  
  ::id swigjobj = swig_get_self();
  BOOL swigmethodoverridden = NO;
  if (swigjobj) {
    swigmethodoverridden = [swigjobj methodForSelector:@selector(onModelChangedPtr:)] != [ModelCallback_OC instanceMethodForSelector:@selector(onModelChangedPtr:)];
  }
  if (!swigmethodoverridden) {
    SWIG_ObjcThrowException(SWIG_ObjcDirectorPureVirtual, "Attempted to invoke pure virtual method cross_platform_common::ModelCallback::onModelChangedPtr.");
    return;
  }
  if (swigjobj) {
    jmodel_ptr = (cross_platform_external::Model *) &model_ptr; 
    [swigjobj onModelChangedPtr: [[Model_OC alloc] initWithCptr:jmodel_ptr swigOwnCObject:NO]];
  } else {
    SWIG_ObjcThrowException(SWIG_ObjcRuntimeException, "null upcall object");
  }
}

void SwigDirector_ModelCallback::onModelChangedSharedPtr(std::shared_ptr< cross_platform_external::Model > model_shared_ptr) {
  void* jmodel_shared_ptr  ;
  
  ::id swigjobj = swig_get_self();
  BOOL swigmethodoverridden = NO;
  if (swigjobj) {
    swigmethodoverridden = [swigjobj methodForSelector:@selector(onModelChangedSharedPtr:)] != [ModelCallback_OC instanceMethodForSelector:@selector(onModelChangedSharedPtr:)];
  }
  if (!swigmethodoverridden) {
    SWIG_ObjcThrowException(SWIG_ObjcDirectorPureVirtual, "Attempted to invoke pure virtual method cross_platform_common::ModelCallback::onModelChangedSharedPtr.");
    return;
  }
  if (swigjobj) {
    jmodel_shared_ptr = new std::shared_ptr< cross_platform_external::Model >(model_shared_ptr); 
    [swigjobj onModelChangedSharedPtr: [[Model_OC alloc] initWithCptr:jmodel_shared_ptr swigOwnCObject:YES]];
  } else {
    SWIG_ObjcThrowException(SWIG_ObjcRuntimeException, "null upcall object");
  }
}

void SwigDirector_ModelCallback::swig_connect_director(id objcdirector) {
  swig_set_self(objcdirector);
}


void SwigDirector_ModelCallback::swig_disconnect_director() {
  swig_set_self(nil);
}



#ifdef __cplusplus
extern "C" {
#endif

void * Objc_CrossPlatformApi_new_StrVec()
{
  void * imresult = 0 ;
  std::vector< std::string > *result = 0 ;
  
  result = (std::vector< std::string > *)new std::vector< std::string >();
  imresult = (void *)result; 
  return imresult;
}

unsigned long Objc_CrossPlatformApi_StrVec_size(void * imarg1)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  unsigned long imresult = 0 ;
  std::vector< std::string >::size_type result;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  result = ((std::vector< std::string > const *)arg1)->size();
  imresult = (unsigned long)result; 
  return imresult;
}

unsigned long Objc_CrossPlatformApi_StrVec_capacity(void * imarg1)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  unsigned long imresult = 0 ;
  std::vector< std::string >::size_type result;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  result = ((std::vector< std::string > const *)arg1)->capacity();
  imresult = (unsigned long)result; 
  return imresult;
}

void Objc_CrossPlatformApi_StrVec_reserve(void * imarg1, unsigned long imarg2)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  std::vector< std::string >::size_type arg2 ;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  arg2 = (std::vector< std::string >::size_type)imarg2; 
  (arg1)->reserve(arg2);
}

BOOL Objc_CrossPlatformApi_StrVec_isEmpty(void * imarg1)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  BOOL imresult = 0 ;
  bool result;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  result = (bool)((std::vector< std::string > const *)arg1)->empty();
  imresult = (result) ? YES : NO; 
  return imresult;
}

void Objc_CrossPlatformApi_StrVec_clear(void * imarg1)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  (arg1)->clear();
}

void Objc_CrossPlatformApi_StrVec_add(void * imarg1, NSString* imarg2)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  std::vector< std::string >::value_type *arg2 = 0 ;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  
  std::string arg2_str;
  if(!imarg2) {
    SWIG_ObjcThrowException(SWIG_ObjcNullPointerException, "null string reference");
  } else {
    arg2_str.assign([imarg2 UTF8String]);
    arg2 = &arg2_str;
  }
  
  (arg1)->push_back((std::vector< std::string >::value_type const &)*arg2);
}

NSString* Objc_CrossPlatformApi_StrVec_get(void * imarg1, int imarg2)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  int arg2 ;
  NSString* imresult = 0 ;
  std::vector< std::string >::value_type *result = 0 ;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  arg2 = (int)imarg2; 
  try {
    result = (std::vector< std::string >::value_type *) &std_vector_Sl_std_string_Sg__get(arg1,arg2);
  }
  catch(std::out_of_range &_e) {
    SWIG_ObjcThrowException(SWIG_ObjcIndexOutOfBoundsException, (&_e)->what());
    return 0;
  }
  
  imresult = [NSString stringWithUTF8String: result->c_str()]; 
  return imresult;
}

void Objc_CrossPlatformApi_StrVec_set(void * imarg1, int imarg2, NSString* imarg3)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  int arg2 ;
  std::vector< std::string >::value_type *arg3 = 0 ;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  arg2 = (int)imarg2; 
  
  std::string arg3_str;
  if(!imarg3) {
    SWIG_ObjcThrowException(SWIG_ObjcNullPointerException, "null string reference");
  } else {
    arg3_str.assign([imarg3 UTF8String]);
    arg3 = &arg3_str;
  }
  
  try {
    std_vector_Sl_std_string_Sg__set(arg1,arg2,(std::string const &)*arg3);
  }
  catch(std::out_of_range &_e) {
    SWIG_ObjcThrowException(SWIG_ObjcIndexOutOfBoundsException, (&_e)->what());
    return ;
  }
  
}

void Objc_CrossPlatformApi_delete_StrVec(void * imarg1)
{
  std::vector< std::string > *arg1 = (std::vector< std::string > *) 0 ;
  
  arg1 = (std::vector< std::string > *)imarg1; 
  delete arg1;
}

void Objc_CrossPlatformApi_Model_a_uint64_set(void * imarg1, unsigned long long imarg2)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  uint64_t arg2 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  arg2 = (uint64_t)imarg2; 
  if (arg1) (arg1)->a_uint64 = arg2;
}

unsigned long long Objc_CrossPlatformApi_Model_a_uint64_get(void * imarg1)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  unsigned long long imresult = 0 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  uint64_t result;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  result = (uint64_t) ((arg1)->a_uint64);
  imresult = (unsigned long long)result; 
  return imresult;
}

void Objc_CrossPlatformApi_Model_a_float_set(void * imarg1, float imarg2)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  float arg2 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  arg2 = (float)imarg2; 
  if (arg1) (arg1)->a_float = arg2;
}

float Objc_CrossPlatformApi_Model_a_float_get(void * imarg1)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  float imresult = 0 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  float result;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  result = (float) ((arg1)->a_float);
  imresult = (float)result; 
  return imresult;
}

void Objc_CrossPlatformApi_Model_a_string_set(void * imarg1, NSString* imarg2)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  std::string *arg2 = 0 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  
  std::string arg2_str;
  if(!imarg2) {
    SWIG_ObjcThrowException(SWIG_ObjcNullPointerException, "null string reference");
  } else {
    arg2_str.assign([imarg2 UTF8String]);
    arg2 = &arg2_str;
  }
  
  if (arg1) (arg1)->a_string = *arg2;
}

NSString* Objc_CrossPlatformApi_Model_a_string_get(void * imarg1)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  NSString* imresult = 0 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  std::string *result = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  result = (std::string *) & ((arg1)->a_string);
  imresult = [NSString stringWithUTF8String: result->c_str()]; 
  return imresult;
}

void Objc_CrossPlatformApi_Model_a_vector_set(void * imarg1, void * imarg2)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  std::vector< std::string > *arg2 = (std::vector< std::string > *) 0 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  arg2 = (std::vector< std::string > *)imarg2; 
  if (arg1) (arg1)->a_vector = *arg2;
}

void * Objc_CrossPlatformApi_Model_a_vector_get(void * imarg1)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  void * imresult = 0 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  std::vector< std::string > *result = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  result = (std::vector< std::string > *)& ((arg1)->a_vector);
  imresult = (void *)result; 
  return imresult;
}

void * Objc_CrossPlatformApi_new_Model()
{
  void * imresult = 0 ;
  cross_platform_external::Model *result = 0 ;
  
  result = (cross_platform_external::Model *)new cross_platform_external::Model();
  
  imresult = result ? new std::shared_ptr<  cross_platform_external::Model >(result SWIG_NO_NULL_DELETER_1) : 0;
  
  return imresult;
}

void Objc_CrossPlatformApi_delete_Model(void * imarg1)
{
  cross_platform_external::Model *arg1 = (cross_platform_external::Model *) 0 ;
  std::shared_ptr< cross_platform_external::Model > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_external::Model > *)imarg1;
  arg1 = (cross_platform_external::Model *)(smartarg1 ? smartarg1->get() : 0); 
  (void)arg1; delete smartarg1;
}

void * Objc_CrossPlatformApi_new_ModelCallback()
{
  void * imresult = 0 ;
  cross_platform_common::ModelCallback *result = 0 ;
  
  result = (cross_platform_common::ModelCallback *)new SwigDirector_ModelCallback();
  
  imresult = result ? new std::shared_ptr<  cross_platform_common::ModelCallback >(result SWIG_NO_NULL_DELETER_1) : 0;
  
  return imresult;
}

void Objc_CrossPlatformApi_delete_ModelCallback(void * imarg1)
{
  cross_platform_common::ModelCallback *arg1 = (cross_platform_common::ModelCallback *) 0 ;
  std::shared_ptr< cross_platform_common::ModelCallback > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_common::ModelCallback > *)imarg1;
  arg1 = (cross_platform_common::ModelCallback *)(smartarg1 ? smartarg1->get() : 0); 
  (void)arg1; delete smartarg1;
}

void Objc_CrossPlatformApi_ModelCallback_onModelChangedPtr(void * imarg1, void * imarg2)
{
  cross_platform_common::ModelCallback *arg1 = (cross_platform_common::ModelCallback *) 0 ;
  cross_platform_external::Model *arg2 = 0 ;
  std::shared_ptr< cross_platform_common::ModelCallback > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_common::ModelCallback > *)imarg1;
  arg1 = (cross_platform_common::ModelCallback *)(smartarg1 ? smartarg1->get() : 0); 
  
  arg2 = (cross_platform_external::Model *)(((std::shared_ptr<  cross_platform_external::Model > *)imarg2) ? ((std::shared_ptr<  cross_platform_external::Model > *)imarg2)->get() : 0);
  if (!arg2) {
    SWIG_ObjcThrowException(SWIG_ObjcNullPointerException, "cross_platform_external::Model & reference is null");
    return ;
  } 
  (arg1)->onModelChangedPtr(*arg2);
}

void Objc_CrossPlatformApi_ModelCallback_onModelChangedSharedPtr(void * imarg1, void* imarg2)
{
  cross_platform_common::ModelCallback *arg1 = (cross_platform_common::ModelCallback *) 0 ;
  std::shared_ptr< cross_platform_external::Model > arg2 ;
  std::shared_ptr< cross_platform_common::ModelCallback > *smartarg1 = 0 ;
  
  
  smartarg1 = (std::shared_ptr<  cross_platform_common::ModelCallback > *)imarg1;
  arg1 = (cross_platform_common::ModelCallback *)(smartarg1 ? smartarg1->get() : 0); 
  if (imarg2) arg2 = *(std::shared_ptr< cross_platform_external::Model > *)imarg2; 
  (arg1)->onModelChangedSharedPtr(arg2);
}

void Objc_CrossPlatformApi_swigDirectorConnect(void* objarg, id objcdirector) {
  std::shared_ptr< cross_platform_common::ModelCallback > *obj = (std::shared_ptr< cross_platform_common::ModelCallback > *)objarg;
  // Keep a local instance of the smart pointer around while we are using the raw pointer
  // Avoids using smart pointer specific API.
  SwigDirector_ModelCallback *director = dynamic_cast<SwigDirector_ModelCallback *>(obj->operator->());
  if (director) {
    director->swig_connect_director(objcdirector);
  }
}

void Objc_CrossPlatformApi_swigDirectorDisconnect(void* objarg) {
  std::shared_ptr< cross_platform_common::ModelCallback > *obj = (std::shared_ptr< cross_platform_common::ModelCallback > *)objarg;
  // Keep a local instance of the smart pointer around while we are using the raw pointer
  // Avoids using smart pointer specific API.
  SwigDirector_ModelCallback *director = dynamic_cast<SwigDirector_ModelCallback *>(obj->operator->());
  if (director) {
    director->swig_disconnect_director();
  }
}

void * Objc_CrossPlatformApi_new_ApiCenter()
{
  void * imresult = 0 ;
  cross_platform_external::ApiCenter *result = 0 ;
  
  result = (cross_platform_external::ApiCenter *)new cross_platform_external::ApiCenter();
  imresult = (void *)result; 
  return imresult;
}

void Objc_CrossPlatformApi_delete_ApiCenter(void * imarg1)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  delete arg1;
}

void Objc_CrossPlatformApi_ApiCenter_registerModelCallback(void * imarg1, void* imarg2)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  std::shared_ptr< cross_platform_common::ModelCallback > *arg2 = 0 ;
  std::shared_ptr< cross_platform_common::ModelCallback > tempnull2 ;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  arg2 = imarg2 ? (std::shared_ptr< cross_platform_common::ModelCallback > *)imarg2 : &tempnull2; 
  (arg1)->registerModelCallback((std::shared_ptr< cross_platform_common::ModelCallback > const &)*arg2);
}

void Objc_CrossPlatformApi_ApiCenter_unRegisterModelCallback(void * imarg1, void* imarg2)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  std::shared_ptr< cross_platform_common::ModelCallback > *arg2 = 0 ;
  std::shared_ptr< cross_platform_common::ModelCallback > tempnull2 ;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  arg2 = imarg2 ? (std::shared_ptr< cross_platform_common::ModelCallback > *)imarg2 : &tempnull2; 
  (arg1)->unRegisterModelCallback((std::shared_ptr< cross_platform_common::ModelCallback > const &)*arg2);
}

void * Objc_CrossPlatformApi_ApiCenter_getModelPtr(void * imarg1)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  void * imresult = 0 ;
  cross_platform_external::Model *result = 0 ;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  result = (cross_platform_external::Model *) &(arg1)->getModelPtr();
  imresult = new std::shared_ptr<  cross_platform_external::Model >(result SWIG_NO_NULL_DELETER_0); 
  return imresult;
}

void* Objc_CrossPlatformApi_ApiCenter_getModelSharedPtr(void * imarg1)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  void* imresult = 0 ;
  std::shared_ptr< cross_platform_external::Model > result;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  result = (arg1)->getModelSharedPtr();
  imresult = result ? new std::shared_ptr< cross_platform_external::Model >(result) : 0; 
  return imresult;
}

float Objc_CrossPlatformApi_ApiCenter_sumIntAndFloat(void * imarg1)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  float imresult = 0 ;
  float result;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  result = (float)(arg1)->sumIntAndFloat();
  imresult = (float)result; 
  return imresult;
}

NSString* Objc_CrossPlatformApi_ApiCenter_getString(void * imarg1)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  NSString* imresult = 0 ;
  std::string result;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  result = (arg1)->getString();
  imresult = [NSString stringWithUTF8String: (&result)->c_str()]; 
  return imresult;
}

void Objc_CrossPlatformApi_ApiCenter_setString(void * imarg1, NSString* imarg2)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  std::string *arg2 = 0 ;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  
  std::string arg2_str;
  if(!imarg2) {
    SWIG_ObjcThrowException(SWIG_ObjcNullPointerException, "null string reference");
  } else {
    arg2_str.assign([imarg2 UTF8String]);
    arg2 = &arg2_str;
  }
  
  (arg1)->setString((std::string const &)*arg2);
}

void Objc_CrossPlatformApi_ApiCenter_setVector(void * imarg1, void * imarg2)
{
  cross_platform_external::ApiCenter *arg1 = (cross_platform_external::ApiCenter *) 0 ;
  std::vector< std::string > *arg2 = 0 ;
  
  arg1 = (cross_platform_external::ApiCenter *)imarg1; 
  arg2 = (std::vector< std::string > *)imarg2;
  if (!arg2) {
    SWIG_ObjcThrowException(SWIG_ObjcNullPointerException, "std::vector< std::string > const & reference is null");
    return ;
  } 
  (arg1)->setVector((std::vector< std::string > const &)*arg2);
}



#ifdef __cplusplus
}
#endif