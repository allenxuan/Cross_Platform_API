/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.1.0
 *
 * Do not make changes to this file unless you know what you are doing--modify
 * the SWIG interface file instead.
 * ----------------------------------------------------------------------------- */

package com.allenxuan.xuanyihuang.cross_platform_api.android;

public class DataMap extends java.util.AbstractMap<String, Data> {
  private transient long swigCPtr;
  protected transient boolean swigCMemOwn;

  protected DataMap(long cPtr, boolean cMemoryOwn) {
    swigCMemOwn = cMemoryOwn;
    swigCPtr = cPtr;
  }

  protected static long getCPtr(DataMap obj) {
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
        CrossPlatformApiJNI.delete_DataMap(swigCPtr);
      }
      swigCPtr = 0;
    }
  }


  public int size() {
    return sizeImpl();
  }

  public boolean containsKey(java.lang.Object key) {
    if (!(key instanceof String)) {
      return false;
    }

    return containsImpl((String)key);
  }

  public Data get(java.lang.Object key) {
    if (!(key instanceof String)) {
      return null;
    }

    Iterator itr = find((String) key);
    if (itr.isNot(end())) {
      return itr.getValue();
    }

    return null;
  }

  public Data put(String key, Data value) {
    Iterator itr = find((String) key);
    if (itr.isNot(end())) {
      Data oldValue = itr.getValue();
      itr.setValue(value);
      return oldValue;
    } else {
      putUnchecked(key, value);
      return null;
    }
  }

  public Data remove(java.lang.Object key) {
    if (!(key instanceof String)) {
      return null;
    }

    Iterator itr = find((String) key);
    if (itr.isNot(end())) {
      Data oldValue = itr.getValue();
      removeUnchecked(itr);
      return oldValue;
    } else {
      return null;
    }
  }

  public java.util.Set<Entry<String, Data>> entrySet() {
    java.util.Set<Entry<String, Data>> setToReturn =
        new java.util.HashSet<Entry<String, Data>>();

    Iterator itr = begin();
    final Iterator end = end();
    while (itr.isNot(end)) {
      setToReturn.add(new Entry<String, Data>() {
        private Iterator iterator;

        private Entry<String, Data> init(Iterator iterator) {
          this.iterator = iterator;
          return this;
        }

        public String getKey() {
          return iterator.getKey();
        }

        public Data getValue() {
          return iterator.getValue();
        }

        public Data setValue(Data newValue) {
          Data oldValue = iterator.getValue();
          iterator.setValue(newValue);
          return oldValue;
        }
      }.init(itr));
      itr = itr.getNextUnchecked();
    }

    return setToReturn;
  }

  public DataMap() {
    this(CrossPlatformApiJNI.new_DataMap__SWIG_0(), true);
  }

  public DataMap(DataMap other) {
    this(CrossPlatformApiJNI.new_DataMap__SWIG_1(DataMap.getCPtr(other), other), true);
  }

  static protected class Iterator {
    private transient long swigCPtr;
    protected transient boolean swigCMemOwn;
  
    protected Iterator(long cPtr, boolean cMemoryOwn) {
      swigCMemOwn = cMemoryOwn;
      swigCPtr = cPtr;
    }
  
    protected static long getCPtr(Iterator obj) {
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
          CrossPlatformApiJNI.delete_DataMap_Iterator(swigCPtr);
        }
        swigCPtr = 0;
      }
    }
  
    private DataMap.Iterator getNextUnchecked() {
      return new DataMap.Iterator(CrossPlatformApiJNI.DataMap_Iterator_getNextUnchecked(swigCPtr, this), true);
    }
  
    private boolean isNot(DataMap.Iterator other) {
      return CrossPlatformApiJNI.DataMap_Iterator_isNot(swigCPtr, this, DataMap.Iterator.getCPtr(other), other);
    }
  
    private String getKey() {
      return CrossPlatformApiJNI.DataMap_Iterator_getKey(swigCPtr, this);
    }
  
    private Data getValue() {
      return new Data(CrossPlatformApiJNI.DataMap_Iterator_getValue(swigCPtr, this), true);
    }
  
    private void setValue(Data newValue) {
      CrossPlatformApiJNI.DataMap_Iterator_setValue(swigCPtr, this, Data.getCPtr(newValue), newValue);
    }
  
  }

  public boolean isEmpty() {
    return CrossPlatformApiJNI.DataMap_isEmpty(swigCPtr, this);
  }

  public void clear() {
    CrossPlatformApiJNI.DataMap_clear(swigCPtr, this);
  }

  private DataMap.Iterator find(String key) {
    return new DataMap.Iterator(CrossPlatformApiJNI.DataMap_find(swigCPtr, this, key), true);
  }

  private DataMap.Iterator begin() {
    return new DataMap.Iterator(CrossPlatformApiJNI.DataMap_begin(swigCPtr, this), true);
  }

  private DataMap.Iterator end() {
    return new DataMap.Iterator(CrossPlatformApiJNI.DataMap_end(swigCPtr, this), true);
  }

  private int sizeImpl() {
    return CrossPlatformApiJNI.DataMap_sizeImpl(swigCPtr, this);
  }

  private boolean containsImpl(String key) {
    return CrossPlatformApiJNI.DataMap_containsImpl(swigCPtr, this, key);
  }

  private void putUnchecked(String key, Data value) {
    CrossPlatformApiJNI.DataMap_putUnchecked(swigCPtr, this, key, Data.getCPtr(value), value);
  }

  private void removeUnchecked(DataMap.Iterator itr) {
    CrossPlatformApiJNI.DataMap_removeUnchecked(swigCPtr, this, DataMap.Iterator.getCPtr(itr), itr);
  }

}
