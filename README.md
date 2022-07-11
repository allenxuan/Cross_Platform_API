This is a demonstration of cross-platform sdk project whose core logic consists of C++ code and platform interfaces is generated using SWIG (https://swig.org/).

# Project Structure
```
ProjectRoot
 ├── cmake(common Cmake scripts)
 ├── include(SDK C++ headers)
 │   |── common_layer
 │   |── external_layer
 │   └── internal_layer
 ├── project(SDK multi-platform projects and corresponding application demos)
 │   |── android
 │   |── ios
 │   |── linux (missing implementaion, use C++ api is enough)
 |   |── mac (missing implementation, like ios project, use OC api is enough)
 │   └── python
 ├── src(SDK C++ Source Files)
 │   |── common_layer
 │   |── external_layer
 |   └── internal_layer
 ├── test(unit test)
 └── third_party
```

## SDK Layers
**internal_layer**:  
Include core SDK logic, platform layers (Android/iOS/Linux/Mac/Python) cannot access it directly.  

**external_layer**:  
Include interfaces meant to be exposed to platform layers (Android/iOS/Linux/Mac/Python). Use SWIG (https://swig.org/) to generate Java APIs, OC APIs, Python APIs, etc., on top of the C++ header files.  

**common_layer**:  
Include both core SDK logic and interfaces meant to be exposed to platform layers.

# Run application demos
## Android Demo
### Ensure an official version of SWIG is installed.
```shell
brew install swig
```
### Run the pre-written SWIG script to generate Java APIs and related C++ binding code.
Suppose you are in the project top root directory.
```shell
bash project/android/cross_platform_lib/swig/swig_gen_android.sh
```
### Directly run the Android demo project (project/android) in AndroidStudio.

## iOS Demo
### Install a customized version of SWIG from source code. (OC is not officially supported by SWIG)
#### step1: Uninstall the official SWIG.
```shell
brew uninstall swig
```
#### step2: Git clone the source code of a customized version of SWIG.
> github website:  
> https://github.com/allenxuan/swig/tree/p/allenxuan/v4.1.0_oc  
> 
> branch:  
> p/allenxuan/v4.1.0_oc
#### step3: Install automake.
```shell
brew install automake
```
#### step4: Install pcre2.
```shell
brew install pcre2
```
#### step5: Enter SWIG project root directory.
```shell
cd /Users/allenxuan/Desktop/ClionProject/swig (change the path to suit your condition)
```
#### step6:
```shell
./autogen.sh
```
#### step7: Specify the build path of SWIG. The SWIG executable will be generated under this path, and it's also copied to the root directory of SWIG source code project.
```shell
./configure --prefix=/Users/allenxuan/Desktop/ClionProject/swig_build (change the path to suit your condition)
```
#### step8:
```shell
make
```
#### step9:
```shell
make install
```
#### step10: Add SWIG executable path to the system environment variables, e.g.,
```shell
export PATH=~/Users/allenxuan/Desktop/ClionProject/swig/:$PATH (change the path to suit your condition)
```
#### step11: Restart your terminal.
### Run the pre-written SWIG script to generate OC APIs and related C++ binding code.
Suppose you are in the project top root directory.
```shell
bash project/ios/cross_platform_lib/swig/swig_gen_ios.sh
```
### Directly run the iOS demo project (project/ios) in Xcode.

## Python Demo
### Ensure an official version of SWIG is installed.
```shell
brew install swig
```
### Run the pre-written SWIG script to generate Python APIs and related C++ binding code.
Suppose you are in the project top root directory.
```shell
bash project/python/cross_platform_lib/swig/swig_gen_python.sh
```
### Build C++ dynamic library.
#### step1: Enter python demo root directory.
```shell
cd project/python
```
#### step2: Create a cmake build directory.
```shell
mkdir cmake_build
```
#### step3: Enter cmake build directory.
```shell
cd cmake_build
```
#### step4:
```shell
cmake ../
```
#### step5:
```shell
make
```
#### step6: Copy _NLEEditorPython.so, which is generated under cmake_build directory, into project/python/cross_platform_lib/swig/gen/python/
### Directly run the Python demo project (project/python/app/PythonDemo.py).

# Platform API snippets
## C++ API snippets
```c++
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

namespace cross_platform_common {
    enum DataType {
        kType1 = 1,
        kType2 = 2,
        kType3 = 3
    };

    class Data {
    public:
        Data() = default;

        //non-inline non-pure virtual destructor as key function.
        VIRTUAL_DESTRUCTOR_DEC(Data)

        DataType type = DataType::kType1;

        std::string a_data;

//    protected:
//        KEY_FUNCTION_DEC(Data)
    };

    class DataChild : public Data {
    public:
        DataChild() = default;

        VIRTUAL_DESTRUCTOR_OVERRIDE_DEC(DataChild)

        STATIC_DYNAMIC_CAST_DEC(DataChild)

        bool a_child_data = false;

//    protected:
//        KEY_FUNCTION_OVERRIDE_DEC(DataChild)

    private:
        bool a_child_private_data_ = false;
    };


    class DataGrandChild : public DataChild {
    public:
        DataGrandChild() = default;

        VIRTUAL_DESTRUCTOR_OVERRIDE_DEC(DataGrandChild)

        STATIC_DYNAMIC_CAST_DEC(DataGrandChild)

        float a_grand_child_data = 0.5f;

//    protected:
//        KEY_FUNCTION_OVERRIDE_DEC(DataGrandChild)

    private:
        float a_grand_child_private_data_ = 0.7f;
    };
}
```
## Java API snippets
```java
public enum DataType {
  kType1(1),
  kType2(2),
  kType3(3);
  
  ...
}
public class Data {
  ...
  
  public Data() {
    this(CrossPlatformApiJNI.new_Data(), true);
  }

  public void setType(DataType value) {
    CrossPlatformApiJNI.Data_type_set(swigCPtr, this, value.swigValue());
  }

  public DataType getType() {
    return DataType.swigToEnum(CrossPlatformApiJNI.Data_type_get(swigCPtr, this));
  }

  public void setA_data(String value) {
    CrossPlatformApiJNI.Data_a_data_set(swigCPtr, this, value);
  }

  public String getA_data() {
    return CrossPlatformApiJNI.Data_a_data_get(swigCPtr, this);
  }
}
public class DataChild extends Data {
  ...
  
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
public class DataGrandChild extends DataChild {
  ...
  
  public DataGrandChild() {
    this(CrossPlatformApiJNI.new_DataGrandChild(), true);
  }

  public static DataGrandChild DynamicCast(Data data) {
    long cPtr = CrossPlatformApiJNI.DataGrandChild_DynamicCast(Data.getCPtr(data), data);
    return (cPtr == 0) ? null : new DataGrandChild(cPtr, true);
  }

  public void setA_grand_child_data(float value) {
    CrossPlatformApiJNI.DataGrandChild_a_grand_child_data_set(swigCPtr, this, value);
  }

  public float getA_grand_child_data() {
    return CrossPlatformApiJNI.DataGrandChild_a_grand_child_data_get(swigCPtr, this);
  }

}
```
## OC API snippets
```objective-c++
typedef NS_ENUM(NSInteger, DataType_OC) {
  kType1 = 1,
  kType2 = 2,
  kType3 = 3
};

__attribute__ ((visibility("default"))) @interface Data_OC : NSObject
{
    void *swigCPtr;
    BOOL swigCMemOwn;
}
-(void*)getCptr;
-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject;
-(id)init;
-(void)setType: (enum DataType_OC)value;
-(enum DataType_OC)getType;
-(void)setA_data: (NSString*)value;
-(NSString*)getA_data;

-(void)dealloc;

@end

__attribute__ ((visibility("default"))) @interface DataChild_OC : Data_OC
-(void*)getCptr;
-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject;
-(id)init;
+(DataChild_OC*)DynamicCast: (Data_OC*)data;
-(void)setA_child_data: (BOOL)value;
-(BOOL)getA_child_data;

-(void)dealloc;

@end

__attribute__ ((visibility("default"))) @interface DataGrandChild_OC : DataChild_OC
-(void*)getCptr;
-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject;
-(id)init;
+(DataGrandChild_OC*)DynamicCast: (Data_OC*)data;
-(void)setA_grand_child_data: (float)value;
-(float)getA_grand_child_data;

-(void)dealloc;

@end
```
## Python API snippets
```python
kType1 = _CrossPlatformApi.kType1
kType2 = _CrossPlatformApi.kType2
kType3 = _CrossPlatformApi.kType3
class Data(object):
    thisown = property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc="The membership flag")
    __repr__ = _swig_repr

    def __init__(self):
        _CrossPlatformApi.Data_swiginit(self, _CrossPlatformApi.new_Data())
    __swig_destroy__ = _CrossPlatformApi.delete_Data
    type = property(_CrossPlatformApi.Data_type_get, _CrossPlatformApi.Data_type_set)
    a_data = property(_CrossPlatformApi.Data_a_data_get, _CrossPlatformApi.Data_a_data_set)

# Register Data in _CrossPlatformApi:
_CrossPlatformApi.Data_swigregister(Data)

class DataChild(Data):
    thisown = property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc="The membership flag")
    __repr__ = _swig_repr

    def __init__(self):
        _CrossPlatformApi.DataChild_swiginit(self, _CrossPlatformApi.new_DataChild())
    __swig_destroy__ = _CrossPlatformApi.delete_DataChild

    @staticmethod
    def DynamicCast(data: "std::shared_ptr< cross_platform_common::Data > const &") -> "std::shared_ptr< cross_platform_common::DataChild >":
        return _CrossPlatformApi.DataChild_DynamicCast(data)
    a_child_data = property(_CrossPlatformApi.DataChild_a_child_data_get, _CrossPlatformApi.DataChild_a_child_data_set)

# Register DataChild in _CrossPlatformApi:
_CrossPlatformApi.DataChild_swigregister(DataChild)

def DataChild_DynamicCast(data: "std::shared_ptr< cross_platform_common::Data > const &") -> "std::shared_ptr< cross_platform_common::DataChild >":
    return _CrossPlatformApi.DataChild_DynamicCast(data)

class DataGrandChild(DataChild):
    thisown = property(lambda x: x.this.own(), lambda x, v: x.this.own(v), doc="The membership flag")
    __repr__ = _swig_repr

    def __init__(self):
        _CrossPlatformApi.DataGrandChild_swiginit(self, _CrossPlatformApi.new_DataGrandChild())
    __swig_destroy__ = _CrossPlatformApi.delete_DataGrandChild

    @staticmethod
    def DynamicCast(data: "std::shared_ptr< cross_platform_common::Data > const &") -> "std::shared_ptr< cross_platform_common::DataGrandChild >":
        return _CrossPlatformApi.DataGrandChild_DynamicCast(data)
    a_grand_child_data = property(_CrossPlatformApi.DataGrandChild_a_grand_child_data_get, _CrossPlatformApi.DataGrandChild_a_grand_child_data_set)

# Register DataGrandChild in _CrossPlatformApi:
_CrossPlatformApi.DataGrandChild_swigregister(DataGrandChild)

def DataGrandChild_DynamicCast(data: "std::shared_ptr< cross_platform_common::Data > const &") -> "std::shared_ptr< cross_platform_common::DataGrandChild >":
    return _CrossPlatformApi.DataGrandChild_DynamicCast(data)
```

