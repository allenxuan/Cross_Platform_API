/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.1.0
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.allenxuan.xuanyihuang.cross_platform_api.android;

public class StrVec extends java.util.AbstractList<String> implements java.util.RandomAccess {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected StrVec(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(StrVec obj) {
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
        CrossPlatformApiJNI.delete_StrVec(swigCPtr);
      }
      swigCPtr = 0;
    }
  }

  public StrVec(String[] initialElements) {
    this();
    reserve(initialElements.length);

    for (String element : initialElements) {
      add(element);
    }
  }

  public StrVec(Iterable<String> initialElements) {
    this();
    for (String element : initialElements) {
      add(element);
    }
  }

  public String get(int index) {
    return doGet(index);
  }

  public String set(int index, String e) {
    return doSet(index, e);
  }

  public boolean add(String e) {
    modCount++;
    doAdd(e);
    return true;
  }

  public void add(int index, String e) {
    modCount++;
    doAdd(index, e);
  }

  public String remove(int index) {
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

  public StrVec() {
    this(CrossPlatformApiJNI.new_StrVec__SWIG_0(), true);
  }

  public StrVec(StrVec other) {
    this(CrossPlatformApiJNI.new_StrVec__SWIG_1(StrVec.getCPtr(other), other), true);
  }

  public long capacity() {
    return CrossPlatformApiJNI.StrVec_capacity(swigCPtr, this);
  }

  public void reserve(long n) {
    CrossPlatformApiJNI.StrVec_reserve(swigCPtr, this, n);
  }

  public boolean isEmpty() {
    return CrossPlatformApiJNI.StrVec_isEmpty(swigCPtr, this);
  }

  public void clear() {
    CrossPlatformApiJNI.StrVec_clear(swigCPtr, this);
  }

  public StrVec(int count, String value) {
    this(CrossPlatformApiJNI.new_StrVec__SWIG_2(count, value), true);
  }

  private int doSize() {
    return CrossPlatformApiJNI.StrVec_doSize(swigCPtr, this);
  }

  private void doAdd(String x) {
    CrossPlatformApiJNI.StrVec_doAdd__SWIG_0(swigCPtr, this, x);
  }

  private void doAdd(int index, String x) {
    CrossPlatformApiJNI.StrVec_doAdd__SWIG_1(swigCPtr, this, index, x);
  }

  private String doRemove(int index) {
    return CrossPlatformApiJNI.StrVec_doRemove(swigCPtr, this, index);
  }

  private String doGet(int index) {
    return CrossPlatformApiJNI.StrVec_doGet(swigCPtr, this, index);
  }

  private String doSet(int index, String val) {
    return CrossPlatformApiJNI.StrVec_doSet(swigCPtr, this, index, val);
  }

  private void doRemoveRange(int fromIndex, int toIndex) {
    CrossPlatformApiJNI.StrVec_doRemoveRange(swigCPtr, this, fromIndex, toIndex);
  }

}
