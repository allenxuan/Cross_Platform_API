/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.1.0
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.allenxuan.xuanyihuang.cross_platform_api.android;

public class DataChild extends Data {
  private transient long swigCPtr;
  private transient boolean swigCMemOwnDerived;

  protected DataChild(long cPtr, boolean cMemoryOwn) {
    super(CrossPlatformApiJNI.DataChild_SWIGSmartPtrUpcast(cPtr), true);
    swigCMemOwnDerived = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(DataChild obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  protected void swigSetCMemOwn(boolean own) {
    swigCMemOwnDerived = own;
    super.swigSetCMemOwn(own);
  }

  @SuppressWarnings("deprecation")
  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwnDerived) {
        swigCMemOwnDerived = false;
        CrossPlatformApiJNI.delete_DataChild(swigCPtr);
      }
      swigCPtr = 0;
    }
    super.delete();
  }

  public DataChild() {
    this(CrossPlatformApiJNI.new_DataChild(), true);
  }

  public static DataChild DynamicCast(Data data) {
    long cPtr = CrossPlatformApiJNI.DataChild_DynamicCast(Data.getCPtr(data), data);
    return (cPtr == 0) ? null : new DataChild(cPtr, true);
  }

  public void setA_child_data(boolean value) {
    CrossPlatformApiJNI.DataChild_a_child_data_set(swigCPtr, this, value);
  }

  public boolean getA_child_data() {
    return CrossPlatformApiJNI.DataChild_a_child_data_get(swigCPtr, this);
  }

}
