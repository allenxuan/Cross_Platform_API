/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.1.0
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.allenxuan.xuanyihuang.cross_platform_api.android;

public class CrossPlatformApiJNI {
  public final static native long new_StrVec__SWIG_0();
  public final static native long new_StrVec__SWIG_1(long jarg1, StrVec jarg1_);
  public final static native long StrVec_capacity(long jarg1, StrVec jarg1_);
  public final static native void StrVec_reserve(long jarg1, StrVec jarg1_, long jarg2);
  public final static native boolean StrVec_isEmpty(long jarg1, StrVec jarg1_);
  public final static native void StrVec_clear(long jarg1, StrVec jarg1_);
  public final static native long new_StrVec__SWIG_2(int jarg1, String jarg2);
  public final static native int StrVec_doSize(long jarg1, StrVec jarg1_);
  public final static native void StrVec_doAdd__SWIG_0(long jarg1, StrVec jarg1_, String jarg2);
  public final static native void StrVec_doAdd__SWIG_1(long jarg1, StrVec jarg1_, int jarg2, String jarg3);
  public final static native String StrVec_doRemove(long jarg1, StrVec jarg1_, int jarg2);
  public final static native String StrVec_doGet(long jarg1, StrVec jarg1_, int jarg2);
  public final static native String StrVec_doSet(long jarg1, StrVec jarg1_, int jarg2, String jarg3);
  public final static native void StrVec_doRemoveRange(long jarg1, StrVec jarg1_, int jarg2, int jarg3);
  public final static native void delete_StrVec(long jarg1);
  public final static native long new_DataVec__SWIG_0();
  public final static native long new_DataVec__SWIG_1(long jarg1, DataVec jarg1_);
  public final static native long DataVec_capacity(long jarg1, DataVec jarg1_);
  public final static native void DataVec_reserve(long jarg1, DataVec jarg1_, long jarg2);
  public final static native boolean DataVec_isEmpty(long jarg1, DataVec jarg1_);
  public final static native void DataVec_clear(long jarg1, DataVec jarg1_);
  public final static native long new_DataVec__SWIG_2(int jarg1, long jarg2, Data jarg2_);
  public final static native int DataVec_doSize(long jarg1, DataVec jarg1_);
  public final static native void DataVec_doAdd__SWIG_0(long jarg1, DataVec jarg1_, long jarg2, Data jarg2_);
  public final static native void DataVec_doAdd__SWIG_1(long jarg1, DataVec jarg1_, int jarg2, long jarg3, Data jarg3_);
  public final static native long DataVec_doRemove(long jarg1, DataVec jarg1_, int jarg2);
  public final static native long DataVec_doGet(long jarg1, DataVec jarg1_, int jarg2);
  public final static native long DataVec_doSet(long jarg1, DataVec jarg1_, int jarg2, long jarg3, Data jarg3_);
  public final static native void DataVec_doRemoveRange(long jarg1, DataVec jarg1_, int jarg2, int jarg3);
  public final static native void delete_DataVec(long jarg1);
  public final static native long new_DataSharePtrVec__SWIG_0();
  public final static native long new_DataSharePtrVec__SWIG_1(long jarg1, DataSharePtrVec jarg1_);
  public final static native long DataSharePtrVec_capacity(long jarg1, DataSharePtrVec jarg1_);
  public final static native void DataSharePtrVec_reserve(long jarg1, DataSharePtrVec jarg1_, long jarg2);
  public final static native boolean DataSharePtrVec_isEmpty(long jarg1, DataSharePtrVec jarg1_);
  public final static native void DataSharePtrVec_clear(long jarg1, DataSharePtrVec jarg1_);
  public final static native long new_DataSharePtrVec__SWIG_2(int jarg1, long jarg2, Data jarg2_);
  public final static native int DataSharePtrVec_doSize(long jarg1, DataSharePtrVec jarg1_);
  public final static native void DataSharePtrVec_doAdd__SWIG_0(long jarg1, DataSharePtrVec jarg1_, long jarg2, Data jarg2_);
  public final static native void DataSharePtrVec_doAdd__SWIG_1(long jarg1, DataSharePtrVec jarg1_, int jarg2, long jarg3, Data jarg3_);
  public final static native long DataSharePtrVec_doRemove(long jarg1, DataSharePtrVec jarg1_, int jarg2);
  public final static native long DataSharePtrVec_doGet(long jarg1, DataSharePtrVec jarg1_, int jarg2);
  public final static native long DataSharePtrVec_doSet(long jarg1, DataSharePtrVec jarg1_, int jarg2, long jarg3, Data jarg3_);
  public final static native void DataSharePtrVec_doRemoveRange(long jarg1, DataSharePtrVec jarg1_, int jarg2, int jarg3);
  public final static native void delete_DataSharePtrVec(long jarg1);
  public final static native long new_DataMap__SWIG_0();
  public final static native long new_DataMap__SWIG_1(long jarg1, DataMap jarg1_);
  public final static native long DataMap_Iterator_getNextUnchecked(long jarg1, DataMap.Iterator jarg1_);
  public final static native boolean DataMap_Iterator_isNot(long jarg1, DataMap.Iterator jarg1_, long jarg2, DataMap.Iterator jarg2_);
  public final static native String DataMap_Iterator_getKey(long jarg1, DataMap.Iterator jarg1_);
  public final static native long DataMap_Iterator_getValue(long jarg1, DataMap.Iterator jarg1_);
  public final static native void DataMap_Iterator_setValue(long jarg1, DataMap.Iterator jarg1_, long jarg2, Data jarg2_);
  public final static native void delete_DataMap_Iterator(long jarg1);
  public final static native boolean DataMap_isEmpty(long jarg1, DataMap jarg1_);
  public final static native void DataMap_clear(long jarg1, DataMap jarg1_);
  public final static native long DataMap_find(long jarg1, DataMap jarg1_, String jarg2);
  public final static native long DataMap_begin(long jarg1, DataMap jarg1_);
  public final static native long DataMap_end(long jarg1, DataMap jarg1_);
  public final static native int DataMap_sizeImpl(long jarg1, DataMap jarg1_);
  public final static native boolean DataMap_containsImpl(long jarg1, DataMap jarg1_, String jarg2);
  public final static native void DataMap_putUnchecked(long jarg1, DataMap jarg1_, String jarg2, long jarg3, Data jarg3_);
  public final static native void DataMap_removeUnchecked(long jarg1, DataMap jarg1_, long jarg2, DataMap.Iterator jarg2_);
  public final static native void delete_DataMap(long jarg1);
  public final static native long new_DataSharePtrMap__SWIG_0();
  public final static native long new_DataSharePtrMap__SWIG_1(long jarg1, DataSharePtrMap jarg1_);
  public final static native long DataSharePtrMap_Iterator_getNextUnchecked(long jarg1, DataSharePtrMap.Iterator jarg1_);
  public final static native boolean DataSharePtrMap_Iterator_isNot(long jarg1, DataSharePtrMap.Iterator jarg1_, long jarg2, DataSharePtrMap.Iterator jarg2_);
  public final static native String DataSharePtrMap_Iterator_getKey(long jarg1, DataSharePtrMap.Iterator jarg1_);
  public final static native long DataSharePtrMap_Iterator_getValue(long jarg1, DataSharePtrMap.Iterator jarg1_);
  public final static native void DataSharePtrMap_Iterator_setValue(long jarg1, DataSharePtrMap.Iterator jarg1_, long jarg2, Data jarg2_);
  public final static native void delete_DataSharePtrMap_Iterator(long jarg1);
  public final static native boolean DataSharePtrMap_isEmpty(long jarg1, DataSharePtrMap jarg1_);
  public final static native void DataSharePtrMap_clear(long jarg1, DataSharePtrMap jarg1_);
  public final static native long DataSharePtrMap_find(long jarg1, DataSharePtrMap jarg1_, String jarg2);
  public final static native long DataSharePtrMap_begin(long jarg1, DataSharePtrMap jarg1_);
  public final static native long DataSharePtrMap_end(long jarg1, DataSharePtrMap jarg1_);
  public final static native int DataSharePtrMap_sizeImpl(long jarg1, DataSharePtrMap jarg1_);
  public final static native boolean DataSharePtrMap_containsImpl(long jarg1, DataSharePtrMap jarg1_, String jarg2);
  public final static native void DataSharePtrMap_putUnchecked(long jarg1, DataSharePtrMap jarg1_, String jarg2, long jarg3, Data jarg3_);
  public final static native void DataSharePtrMap_removeUnchecked(long jarg1, DataSharePtrMap jarg1_, long jarg2, DataSharePtrMap.Iterator jarg2_);
  public final static native void delete_DataSharePtrMap(long jarg1);
  public final static native long new_DataSharePtrUnorderedMap__SWIG_0();
  public final static native long new_DataSharePtrUnorderedMap__SWIG_1(long jarg1, DataSharePtrUnorderedMap jarg1_);
  public final static native long DataSharePtrUnorderedMap_Iterator_getNextUnchecked(long jarg1, DataSharePtrUnorderedMap.Iterator jarg1_);
  public final static native boolean DataSharePtrUnorderedMap_Iterator_isNot(long jarg1, DataSharePtrUnorderedMap.Iterator jarg1_, long jarg2, DataSharePtrUnorderedMap.Iterator jarg2_);
  public final static native String DataSharePtrUnorderedMap_Iterator_getKey(long jarg1, DataSharePtrUnorderedMap.Iterator jarg1_);
  public final static native long DataSharePtrUnorderedMap_Iterator_getValue(long jarg1, DataSharePtrUnorderedMap.Iterator jarg1_);
  public final static native void DataSharePtrUnorderedMap_Iterator_setValue(long jarg1, DataSharePtrUnorderedMap.Iterator jarg1_, long jarg2, Data jarg2_);
  public final static native void delete_DataSharePtrUnorderedMap_Iterator(long jarg1);
  public final static native boolean DataSharePtrUnorderedMap_isEmpty(long jarg1, DataSharePtrUnorderedMap jarg1_);
  public final static native void DataSharePtrUnorderedMap_clear(long jarg1, DataSharePtrUnorderedMap jarg1_);
  public final static native long DataSharePtrUnorderedMap_find(long jarg1, DataSharePtrUnorderedMap jarg1_, String jarg2);
  public final static native long DataSharePtrUnorderedMap_begin(long jarg1, DataSharePtrUnorderedMap jarg1_);
  public final static native long DataSharePtrUnorderedMap_end(long jarg1, DataSharePtrUnorderedMap jarg1_);
  public final static native int DataSharePtrUnorderedMap_sizeImpl(long jarg1, DataSharePtrUnorderedMap jarg1_);
  public final static native boolean DataSharePtrUnorderedMap_containsImpl(long jarg1, DataSharePtrUnorderedMap jarg1_, String jarg2);
  public final static native void DataSharePtrUnorderedMap_putUnchecked(long jarg1, DataSharePtrUnorderedMap jarg1_, String jarg2, long jarg3, Data jarg3_);
  public final static native void DataSharePtrUnorderedMap_removeUnchecked(long jarg1, DataSharePtrUnorderedMap jarg1_, long jarg2, DataSharePtrUnorderedMap.Iterator jarg2_);
  public final static native void delete_DataSharePtrUnorderedMap(long jarg1);
  public final static native long new_DataPair__SWIG_0();
  public final static native long new_DataPair__SWIG_1(String jarg1, long jarg2, Data jarg2_);
  public final static native long new_DataPair__SWIG_2(long jarg1, DataPair jarg1_);
  public final static native void DataPair_first_set(long jarg1, DataPair jarg1_, String jarg2);
  public final static native String DataPair_first_get(long jarg1, DataPair jarg1_);
  public final static native void DataPair_second_set(long jarg1, DataPair jarg1_, long jarg2, Data jarg2_);
  public final static native long DataPair_second_get(long jarg1, DataPair jarg1_);
  public final static native void delete_DataPair(long jarg1);
  public final static native long new_DataSharedPtrPair__SWIG_0();
  public final static native long new_DataSharedPtrPair__SWIG_1(String jarg1, long jarg2, Data jarg2_);
  public final static native long new_DataSharedPtrPair__SWIG_2(long jarg1, DataSharedPtrPair jarg1_);
  public final static native void DataSharedPtrPair_first_set(long jarg1, DataSharedPtrPair jarg1_, String jarg2);
  public final static native String DataSharedPtrPair_first_get(long jarg1, DataSharedPtrPair jarg1_);
  public final static native void DataSharedPtrPair_second_set(long jarg1, DataSharedPtrPair jarg1_, long jarg2, Data jarg2_);
  public final static native long DataSharedPtrPair_second_get(long jarg1, DataSharedPtrPair jarg1_);
  public final static native void delete_DataSharedPtrPair(long jarg1);
  public final static native long new_Data();
  public final static native void delete_Data(long jarg1);
  public final static native void Data_type_set(long jarg1, Data jarg1_, int jarg2);
  public final static native int Data_type_get(long jarg1, Data jarg1_);
  public final static native void Data_a_data_set(long jarg1, Data jarg1_, String jarg2);
  public final static native String Data_a_data_get(long jarg1, Data jarg1_);
  public final static native long new_DataChild();
  public final static native void delete_DataChild(long jarg1);
  public final static native long DataChild_DynamicCast(long jarg1, Data jarg1_);
  public final static native void DataChild_a_child_data_set(long jarg1, DataChild jarg1_, boolean jarg2);
  public final static native boolean DataChild_a_child_data_get(long jarg1, DataChild jarg1_);
  public final static native long new_DataGrandChild();
  public final static native void delete_DataGrandChild(long jarg1);
  public final static native long DataGrandChild_DynamicCast(long jarg1, Data jarg1_);
  public final static native void DataGrandChild_a_grand_child_data_set(long jarg1, DataGrandChild jarg1_, float jarg2);
  public final static native float DataGrandChild_a_grand_child_data_get(long jarg1, DataGrandChild jarg1_);
  public final static native void Model_a_uint64_set(long jarg1, Model jarg1_, java.math.BigInteger jarg2);
  public final static native java.math.BigInteger Model_a_uint64_get(long jarg1, Model jarg1_);
  public final static native void Model_a_float_set(long jarg1, Model jarg1_, float jarg2);
  public final static native float Model_a_float_get(long jarg1, Model jarg1_);
  public final static native void Model_a_string_set(long jarg1, Model jarg1_, String jarg2);
  public final static native String Model_a_string_get(long jarg1, Model jarg1_);
  public final static native void Model_a_string_vector_set(long jarg1, Model jarg1_, long jarg2, StrVec jarg2_);
  public final static native long Model_a_string_vector_get(long jarg1, Model jarg1_);
  public final static native long new_Model();
  public final static native void delete_Model(long jarg1);
  public final static native long new_ModelCallback();
  public final static native void delete_ModelCallback(long jarg1);
  public final static native void ModelCallback_onModelChangedPtr(long jarg1, ModelCallback jarg1_, long jarg2, Model jarg2_);
  public final static native void ModelCallback_onModelChangedSharedPtr(long jarg1, ModelCallback jarg1_, long jarg2, Model jarg2_);
  public final static native void ModelCallback_director_connect(ModelCallback obj, long cptr, boolean mem_own, boolean weak_global);
  public final static native void ModelCallback_change_ownership(ModelCallback obj, long cptr, boolean take_or_release);
  public final static native long new_ApiCenter();
  public final static native void delete_ApiCenter(long jarg1);
  public final static native void ApiCenter_registerModelCallback(long jarg1, ApiCenter jarg1_, long jarg2, ModelCallback jarg2_);
  public final static native void ApiCenter_unRegisterModelCallback(long jarg1, ApiCenter jarg1_, long jarg2, ModelCallback jarg2_);
  public final static native long ApiCenter_getModelPtr(long jarg1, ApiCenter jarg1_);
  public final static native long ApiCenter_getModelSharedPtr(long jarg1, ApiCenter jarg1_);
  public final static native float ApiCenter_sumIntAndFloat(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setUint64(long jarg1, ApiCenter jarg1_, java.math.BigInteger jarg2);
  public final static native java.math.BigInteger ApiCenter_getUnit64(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setFloat(long jarg1, ApiCenter jarg1_, float jarg2);
  public final static native float ApiCenter_getFloat(long jarg1, ApiCenter jarg1_);
  public final static native boolean ApiCenter_getBool(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setBool(long jarg1, ApiCenter jarg1_, boolean jarg2);
  public final static native String ApiCenter_getString(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setString(long jarg1, ApiCenter jarg1_, String jarg2);
  public final static native void ApiCenter_setStringVector(long jarg1, ApiCenter jarg1_, long jarg2, StrVec jarg2_);
  public final static native long ApiCenter_getStringVector(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setDataVector(long jarg1, ApiCenter jarg1_, long jarg2, DataVec jarg2_);
  public final static native long ApiCenter_getDataVectorRef(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setDataSharedPtrVector(long jarg1, ApiCenter jarg1_, long jarg2, DataSharePtrVec jarg2_);
  public final static native long ApiCenter_getDataSharedPtrVector(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setDataMap(long jarg1, ApiCenter jarg1_, long jarg2, DataMap jarg2_);
  public final static native long ApiCenter_getDataMapRef(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setDataSharedPtrMap(long jarg1, ApiCenter jarg1_, long jarg2, DataSharePtrMap jarg2_);
  public final static native long ApiCenter_getDataSharedPtrMap(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setDataSharedPtrUnorderedMap(long jarg1, ApiCenter jarg1_, long jarg2, DataSharePtrUnorderedMap jarg2_);
  public final static native long ApiCenter_getDataSharedPtrUnorderedMap(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setDataPair(long jarg1, ApiCenter jarg1_, long jarg2, DataPair jarg2_);
  public final static native long ApiCenter_getDataPairRef(long jarg1, ApiCenter jarg1_);
  public final static native void ApiCenter_setDataSharedPtrPair(long jarg1, ApiCenter jarg1_, long jarg2, DataSharedPtrPair jarg2_);
  public final static native long ApiCenter_getDataSharedPtrPair(long jarg1, ApiCenter jarg1_);
  public final static native long DataChild_SWIGSmartPtrUpcast(long jarg1);
  public final static native long DataGrandChild_SWIGSmartPtrUpcast(long jarg1);

  public static void SwigDirector_ModelCallback_onModelChangedPtr(ModelCallback jself, long model_ptr) {
    jself.onModelChangedPtr((model_ptr == 0) ? null : new Model(model_ptr, true));
  }
  public static void SwigDirector_ModelCallback_onModelChangedSharedPtr(ModelCallback jself, long model_shared_ptr) {
    jself.onModelChangedSharedPtr((model_shared_ptr == 0) ? null : new Model(model_shared_ptr, true));
  }

  private final static native void swig_module_init();
  static {
    swig_module_init();
  }
}
