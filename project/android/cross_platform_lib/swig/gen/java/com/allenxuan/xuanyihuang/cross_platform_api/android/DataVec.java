/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.1.0
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.allenxuan.xuanyihuang.cross_platform_api.android;

public class DataVec extends java.util.AbstractList<Data> implements java.util.RandomAccess {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected DataVec(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(DataVec obj) {
    return (obj == null) ? 0 : obj.swigCPtr;
  }

  @SuppressWarnings("deprecation")
  protected void finalize() {
    delete();
  }

  public synchronized void delete() {
    if (swigCPtr != 0) {
      if (swigCMemOwn) {
        swigCMemOwn = false;
        CrossPlatformApiJNI.delete_DataVec(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public DataVec(Data[] initialElements) {
    this();
    reserve(initialElements.length);

    for (Data element : initialElements) {
      add(element);
    }
  }

  public DataVec(Iterable<Data> initialElements) {
    this();
    for (Data element : initialElements) {
      add(element);
    }
  }

  public Data get(int index) {
    return doGet(index);
  }

  public Data set(int index, Data e) {
    return doSet(index, e);
  }

  public boolean add(Data e) {
    modCount++;
    doAdd(e);
    return true;
  }

  public void add(int index, Data e) {
    modCount++;
    doAdd(index, e);
  }

  public Data remove(int index) {
    modCount++;
    return doRemove(index);
  }

  protected void removeRange(int fromIndex, int toIndex) {
    modCount++;
    doRemoveRange(fromIndex, toIndex);
  }

  public int size() {
    return doSize();
  }

  public DataVec() {
    this(CrossPlatformApiJNI.new_DataVec__SWIG_0(), true);
  }

  public DataVec(DataVec other) {
    this(CrossPlatformApiJNI.new_DataVec__SWIG_1(DataVec.getCPtr(other), other), true);
  }

  public long capacity() {
    return CrossPlatformApiJNI.DataVec_capacity(swigCPtr, this);
  }

  public void reserve(long n) {
    CrossPlatformApiJNI.DataVec_reserve(swigCPtr, this, n);
  }

  public boolean isEmpty() {
    return CrossPlatformApiJNI.DataVec_isEmpty(swigCPtr, this);
  }

  public void clear() {
    CrossPlatformApiJNI.DataVec_clear(swigCPtr, this);
  }

  public DataVec(int count, Data value) {
    this(CrossPlatformApiJNI.new_DataVec__SWIG_2(count, Data.getCPtr(value), value), true);
  }

  private int doSize() {
    return CrossPlatformApiJNI.DataVec_doSize(swigCPtr, this);
  }

  private void doAdd(Data x) {
    CrossPlatformApiJNI.DataVec_doAdd__SWIG_0(swigCPtr, this, Data.getCPtr(x), x);
  }

  private void doAdd(int index, Data x) {
    CrossPlatformApiJNI.DataVec_doAdd__SWIG_1(swigCPtr, this, index, Data.getCPtr(x), x);
  }

  private Data doRemove(int index) {
    return new Data(CrossPlatformApiJNI.DataVec_doRemove(swigCPtr, this, index), true);
  }

  private Data doGet(int index) {
    return new Data(CrossPlatformApiJNI.DataVec_doGet(swigCPtr, this, index), true);
  }

  private Data doSet(int index, Data val) {
    return new Data(CrossPlatformApiJNI.DataVec_doSet(swigCPtr, this, index, Data.getCPtr(val), val), true);
  }

  private void doRemoveRange(int fromIndex, int toIndex) {
    CrossPlatformApiJNI.DataVec_doRemoveRange(swigCPtr, this, fromIndex, toIndex);
  }

}
