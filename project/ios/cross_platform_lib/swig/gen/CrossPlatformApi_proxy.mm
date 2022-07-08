/* ----------------------------------------------------------------------------
 * This file was automatically generated by SWIG (http://www.swig.org).
 * Version 4.1.0
 *
 * This file is not intended to be easily readable and contains a number of
 * coding conventions designed to improve portability and efficiency. Do not make
 * changes to this file unless you know what you are doing--modify the SWIG
 * interface file instead.
 * ----------------------------------------------------------------------------- */
#include "CrossPlatformApi_proxy.h"
#include "CrossPlatformApi_wrap.mm"


@implementation StrVec_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_StrVec() swigOwnCObject:YES]; 
	;
	return self;

}

-(unsigned long)size
{
    return Objc_CrossPlatformApi_StrVec_size([self getCptr]); 
}

-(unsigned long)capacity
{
    return Objc_CrossPlatformApi_StrVec_capacity([self getCptr]); 
}

-(void)reserve: (unsigned long)n
{
    Objc_CrossPlatformApi_StrVec_reserve([self getCptr], n);
}

-(BOOL)isEmpty
{
    return Objc_CrossPlatformApi_StrVec_isEmpty([self getCptr]); 
}

-(void)clear
{
    Objc_CrossPlatformApi_StrVec_clear([self getCptr]);
}

-(void)add: (NSString*)x
{
    Objc_CrossPlatformApi_StrVec_add([self getCptr], x);
}

-(NSString*)get: (int)i
{
    return Objc_CrossPlatformApi_StrVec_get([self getCptr], i); 
}

-(void)set: (int)i val: (NSString*)val
{
    Objc_CrossPlatformApi_StrVec_set([self getCptr], i, val);
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_StrVec((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataVec_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataVec() swigOwnCObject:YES]; 
	;
	return self;

}

-(unsigned long)size
{
    return Objc_CrossPlatformApi_DataVec_size([self getCptr]); 
}

-(unsigned long)capacity
{
    return Objc_CrossPlatformApi_DataVec_capacity([self getCptr]); 
}

-(void)reserve: (unsigned long)n
{
    Objc_CrossPlatformApi_DataVec_reserve([self getCptr], n);
}

-(BOOL)isEmpty
{
    return Objc_CrossPlatformApi_DataVec_isEmpty([self getCptr]); 
}

-(void)clear
{
    Objc_CrossPlatformApi_DataVec_clear([self getCptr]);
}

-(void)add: (Data_OC*)x
{
    Objc_CrossPlatformApi_DataVec_add([self getCptr], [x getCptr]);
}

-(Data_OC*)get: (int)i
{
    void* cPtr = Objc_CrossPlatformApi_DataVec_get([self getCptr], i);
    Data_OC* ret = nil;
    if(cPtr) {
        ret = [[Data_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
    }
    return ret; 
}

-(void)set: (int)i val: (Data_OC*)val
{
    Objc_CrossPlatformApi_DataVec_set([self getCptr], i, [val getCptr]);
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_DataVec((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataSharedPtrVec_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataSharedPtrVec() swigOwnCObject:YES]; 
	;
	return self;

}

-(unsigned long)size
{
    return Objc_CrossPlatformApi_DataSharedPtrVec_size([self getCptr]); 
}

-(unsigned long)capacity
{
    return Objc_CrossPlatformApi_DataSharedPtrVec_capacity([self getCptr]); 
}

-(void)reserve: (unsigned long)n
{
    Objc_CrossPlatformApi_DataSharedPtrVec_reserve([self getCptr], n);
}

-(BOOL)isEmpty
{
    return Objc_CrossPlatformApi_DataSharedPtrVec_isEmpty([self getCptr]); 
}

-(void)clear
{
    Objc_CrossPlatformApi_DataSharedPtrVec_clear([self getCptr]);
}

-(void)add: (Data_OC*)x
{
    Objc_CrossPlatformApi_DataSharedPtrVec_add([self getCptr], [x getCptr]);
}

-(Data_OC*)get: (int)i
{
    void* cPtr = Objc_CrossPlatformApi_DataSharedPtrVec_get([self getCptr], i);
	Data_OC* ret = nil;
	if(cPtr) {
		ret = [[Data_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(void)set: (int)i val: (Data_OC*)val
{
    Objc_CrossPlatformApi_DataSharedPtrVec_set([self getCptr], i, [val getCptr]);
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_DataSharedPtrVec((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataMap_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataMap__SWIG_0() swigOwnCObject:YES]; 
	;
	return self;

}

-(id)initWithArg0: (DataMap_OC*)arg0
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataMap__SWIG_1([arg0 getCptr]) swigOwnCObject:YES]; 
	;
	return self;

}

-(unsigned int)size
{
    return Objc_CrossPlatformApi_DataMap_size([self getCptr]); 
}

-(BOOL)empty
{
    return Objc_CrossPlatformApi_DataMap_empty([self getCptr]); 
}

-(void)clear
{
    Objc_CrossPlatformApi_DataMap_clear([self getCptr]);
}

-(Data_OC*)get: (NSString*)key
{
    void* cPtr = Objc_CrossPlatformApi_DataMap_get([self getCptr], key);
    Data_OC* ret = nil;
    if(cPtr) {
        ret = [[Data_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
    }
    return ret; 
}

-(void)set: (NSString*)key x: (Data_OC*)x
{
    Objc_CrossPlatformApi_DataMap_set([self getCptr], key, [x getCptr]);
}

-(void)del: (NSString*)key
{
    Objc_CrossPlatformApi_DataMap_del([self getCptr], key);
}

-(BOOL)has_key: (NSString*)key
{
    return Objc_CrossPlatformApi_DataMap_has_key([self getCptr], key); 
}

-(NSString*)get_key: (unsigned int)idx
{
    return Objc_CrossPlatformApi_DataMap_get_key([self getCptr], idx); 
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_DataMap((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataSharedPtrMap_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataSharedPtrMap__SWIG_0() swigOwnCObject:YES]; 
	;
	return self;

}

-(id)initWithArg0: (DataSharedPtrMap_OC*)arg0
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataSharedPtrMap__SWIG_1([arg0 getCptr]) swigOwnCObject:YES]; 
	;
	return self;

}

-(unsigned int)size
{
    return Objc_CrossPlatformApi_DataSharedPtrMap_size([self getCptr]); 
}

-(BOOL)empty
{
    return Objc_CrossPlatformApi_DataSharedPtrMap_empty([self getCptr]); 
}

-(void)clear
{
    Objc_CrossPlatformApi_DataSharedPtrMap_clear([self getCptr]);
}

-(Data_OC*)get: (NSString*)key
{
    void* cPtr = Objc_CrossPlatformApi_DataSharedPtrMap_get([self getCptr], key);
	Data_OC* ret = nil;
	if(cPtr) {
		ret = [[Data_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(void)set: (NSString*)key x: (Data_OC*)x
{
    Objc_CrossPlatformApi_DataSharedPtrMap_set([self getCptr], key, [x getCptr]);
}

-(void)del: (NSString*)key
{
    Objc_CrossPlatformApi_DataSharedPtrMap_del([self getCptr], key);
}

-(BOOL)has_key: (NSString*)key
{
    return Objc_CrossPlatformApi_DataSharedPtrMap_has_key([self getCptr], key); 
}

-(NSString*)get_key: (unsigned int)idx
{
    return Objc_CrossPlatformApi_DataSharedPtrMap_get_key([self getCptr], idx); 
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_DataSharedPtrMap((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataPair_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataPair__SWIG_0() swigOwnCObject:YES]; 
	;
	return self;

}

-(id)initWithFirst: (NSString*)first second: (Data_OC*)second
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataPair__SWIG_1(first, [second getCptr]) swigOwnCObject:YES]; 
	;
	return self;

}

-(id)initWithP: (DataPair_OC*)p
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataPair__SWIG_2([p getCptr]) swigOwnCObject:YES]; 
	;
	return self;

}

-(void)setFirst: (NSString*)value
{
    Objc_CrossPlatformApi_DataPair_first_set([self getCptr], value);
}

-(NSString*)getFirst
{
    return Objc_CrossPlatformApi_DataPair_first_get([self getCptr]); 
}

-(void)setSecond: (Data_OC*)value
{
    Objc_CrossPlatformApi_DataPair_second_set([self getCptr], [value getCptr]);
}

-(Data_OC*)getSecond
{
    void* cPtr = Objc_CrossPlatformApi_DataPair_second_get([self getCptr]);
    Data_OC* ret = nil;
    if(cPtr) {
        ret = [[Data_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
    }
    return ret; 
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_DataPair((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataSharedPtrPair_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataSharedPtrPair__SWIG_0() swigOwnCObject:YES]; 
	;
	return self;

}

-(id)initWithFirst: (NSString*)first second: (Data_OC*)second
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataSharedPtrPair__SWIG_1(first, [second getCptr]) swigOwnCObject:YES]; 
	;
	return self;

}

-(id)initWithP: (DataSharedPtrPair_OC*)p
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataSharedPtrPair__SWIG_2([p getCptr]) swigOwnCObject:YES]; 
	;
	return self;

}

-(void)setFirst: (NSString*)value
{
    Objc_CrossPlatformApi_DataSharedPtrPair_first_set([self getCptr], value);
}

-(NSString*)getFirst
{
    return Objc_CrossPlatformApi_DataSharedPtrPair_first_get([self getCptr]); 
}

-(void)setSecond: (Data_OC*)value
{
    Objc_CrossPlatformApi_DataSharedPtrPair_second_set([self getCptr], [value getCptr]);
}

-(Data_OC*)getSecond
{
    void* cPtr = Objc_CrossPlatformApi_DataSharedPtrPair_second_get([self getCptr]);
	Data_OC* ret = nil;
	if(cPtr) {
		ret = [[Data_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_DataSharedPtrPair((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation Data_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_Data() swigOwnCObject:YES]; 
	;
	return self;

}

-(void)setType: (enum DataType_OC)value
{
    Objc_CrossPlatformApi_Data_type_set([self getCptr], (int)value);
}

-(enum DataType_OC)getType
{
  return (enum DataType_OC)Objc_CrossPlatformApi_Data_type_get([self getCptr]); 
}

-(void)setA_data: (NSString*)value
{
    Objc_CrossPlatformApi_Data_a_data_set([self getCptr], value);
}

-(NSString*)getA_data
{
    return Objc_CrossPlatformApi_Data_a_data_get([self getCptr]); 
}


-(void)dealloc{
   if (swigCPtr != NULL) {
		;

		if (swigCMemOwn) {
			Objc_CrossPlatformApi_delete_Data((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataChild_OC
- (void*)getCptr 
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	self = [super initWithCptr:cptr swigOwnCObject:ownCObject];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataChild() swigOwnCObject:YES]; 
	;
	return self;

}

+(DataChild_OC*)DynamicCast: (Data_OC*)data
{
    void* cPtr = Objc_CrossPlatformApi_DataChild_DynamicCast([data getCptr]);
	DataChild_OC* ret = nil;
	if(cPtr) {
		ret = [[DataChild_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(void)setA_child_data: (BOOL)value
{
    Objc_CrossPlatformApi_DataChild_a_child_data_set([self getCptr], value);
}

-(BOOL)getA_child_data
{
    return Objc_CrossPlatformApi_DataChild_a_child_data_get([self getCptr]); 
}


-(void)dealloc{
   if (swigCPtr != NULL) {
		;

		if (swigCMemOwn) {
			Objc_CrossPlatformApi_delete_DataChild((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation DataGrandChild_OC
- (void*)getCptr 
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	self = [super initWithCptr:cptr swigOwnCObject:ownCObject];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_DataGrandChild() swigOwnCObject:YES]; 
	;
	return self;

}

+(DataGrandChild_OC*)DynamicCast: (Data_OC*)data
{
    void* cPtr = Objc_CrossPlatformApi_DataGrandChild_DynamicCast([data getCptr]);
	DataGrandChild_OC* ret = nil;
	if(cPtr) {
		ret = [[DataGrandChild_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(void)setA_grand_child_data: (float)value
{
    Objc_CrossPlatformApi_DataGrandChild_a_grand_child_data_set([self getCptr], value);
}

-(float)getA_grand_child_data
{
    return Objc_CrossPlatformApi_DataGrandChild_a_grand_child_data_get([self getCptr]); 
}


-(void)dealloc{
   if (swigCPtr != NULL) {
		;

		if (swigCMemOwn) {
			Objc_CrossPlatformApi_delete_DataGrandChild((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation Model_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(void)setA_uint64: (unsigned long long)value
{
    Objc_CrossPlatformApi_Model_a_uint64_set([self getCptr], value);
}

-(unsigned long long)getA_uint64
{
    return Objc_CrossPlatformApi_Model_a_uint64_get([self getCptr]); 
}

-(void)setA_float: (float)value
{
    Objc_CrossPlatformApi_Model_a_float_set([self getCptr], value);
}

-(float)getA_float
{
    return Objc_CrossPlatformApi_Model_a_float_get([self getCptr]); 
}

-(void)setA_string: (NSString*)value
{
    Objc_CrossPlatformApi_Model_a_string_set([self getCptr], value);
}

-(NSString*)getA_string
{
    return Objc_CrossPlatformApi_Model_a_string_get([self getCptr]); 
}

-(void)setA_string_vector: (StrVec_OC*)value
{
    Objc_CrossPlatformApi_Model_a_string_vector_set([self getCptr], [value getCptr]);
}

-(StrVec_OC*)getA_string_vector
{
    void* cPtr = Objc_CrossPlatformApi_Model_a_string_vector_get([self getCptr]);
	StrVec_OC* ret = nil;
	if(cPtr) {
	ret = [[StrVec_OC alloc] initWithCptr:cPtr swigOwnCObject:NO];
	}
	return ret; 
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_Model() swigOwnCObject:YES]; 
	;
	return self;

}


-(void)dealloc{
   if (swigCPtr != NULL) {
		;

		if (swigCMemOwn) {
			Objc_CrossPlatformApi_delete_Model((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation ModelCallback_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_ModelCallback() swigOwnCObject:YES]; 
	if (self) Objc_CrossPlatformApi_swigDirectorConnect((void *)swigCPtr, self); ;
	return self;

}

-(void)onModelChangedPtr: (Model_OC*)model_ptr
{
    Objc_CrossPlatformApi_ModelCallback_onModelChangedPtr([self getCptr], [model_ptr getCptr]);
}

-(void)onModelChangedSharedPtr: (Model_OC*)model_shared_ptr
{
    Objc_CrossPlatformApi_ModelCallback_onModelChangedSharedPtr([self getCptr], [model_shared_ptr getCptr]);
}


-(void)dealloc{
   if (swigCPtr != NULL) {
		Objc_CrossPlatformApi_swigDirectorDisconnect((void *)swigCPtr);;

		if (swigCMemOwn) {
			Objc_CrossPlatformApi_delete_ModelCallback((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end


@implementation ApiCenter_OC
-(void*)getCptr
{
	return swigCPtr;
}

-(id)initWithCptr: (void*)cptr swigOwnCObject: (BOOL)ownCObject 
{
	swigCPtr = cptr;
	swigCMemOwn = ownCObject;
	self = [super init];
	return self;
}

-(id)init
{
 	self = [self initWithCptr:Objc_CrossPlatformApi_new_ApiCenter() swigOwnCObject:YES]; 
	;
	return self;

}

-(void)registerModelCallback: (ModelCallback_OC*)callback
{
    Objc_CrossPlatformApi_ApiCenter_registerModelCallback([self getCptr], [callback getCptr]);
}

-(void)unRegisterModelCallback: (ModelCallback_OC*)callback
{
    Objc_CrossPlatformApi_ApiCenter_unRegisterModelCallback([self getCptr], [callback getCptr]);
}

-(Model_OC*)getModelPtr
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getModelPtr([self getCptr]);
    Model_OC* ret = nil;
    if(cPtr) {
        ret = [[Model_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
    }
    return ret; 
}

-(Model_OC*)getModelSharedPtr
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getModelSharedPtr([self getCptr]);
	Model_OC* ret = nil;
	if(cPtr) {
		ret = [[Model_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(float)sumIntAndFloat
{
    return Objc_CrossPlatformApi_ApiCenter_sumIntAndFloat([self getCptr]); 
}

-(void)setUint64: (unsigned long long)a_uint64_t
{
    Objc_CrossPlatformApi_ApiCenter_setUint64([self getCptr], a_uint64_t);
}

-(unsigned long long)getUnit64
{
    return Objc_CrossPlatformApi_ApiCenter_getUnit64([self getCptr]); 
}

-(void)setFloat: (float)a_float
{
    Objc_CrossPlatformApi_ApiCenter_setFloat([self getCptr], a_float);
}

-(float)getFloat
{
    return Objc_CrossPlatformApi_ApiCenter_getFloat([self getCptr]); 
}

-(BOOL)getBool
{
    return Objc_CrossPlatformApi_ApiCenter_getBool([self getCptr]); 
}

-(void)setBool: (BOOL)b
{
    Objc_CrossPlatformApi_ApiCenter_setBool([self getCptr], b);
}

-(NSString*)getString
{
    return Objc_CrossPlatformApi_ApiCenter_getString([self getCptr]); 
}

-(void)setString: (NSString*)string
{
    Objc_CrossPlatformApi_ApiCenter_setString([self getCptr], string);
}

-(void)setStringVector: (StrVec_OC*)vector
{
    Objc_CrossPlatformApi_ApiCenter_setStringVector([self getCptr], [vector getCptr]);
}

-(StrVec_OC*)getStringVector
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getStringVector([self getCptr]);
	StrVec_OC* ret = nil;
	if(cPtr) {
		ret = [[StrVec_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(void)setDataVector: (DataVec_OC*)data_vector
{
    Objc_CrossPlatformApi_ApiCenter_setDataVector([self getCptr], [data_vector getCptr]);
}

-(DataVec_OC*)getDataVectorRef
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getDataVectorRef([self getCptr]);
	DataVec_OC* ret = nil;
	if(cPtr) {
		ret = [[DataVec_OC alloc] initWithCptr:cPtr swigOwnCObject:NO];
	}
	return ret; 
}

-(void)setDataSharedPtrVector: (DataSharedPtrVec_OC*)data_shared_ptr_vector
{
    Objc_CrossPlatformApi_ApiCenter_setDataSharedPtrVector([self getCptr], [data_shared_ptr_vector getCptr]);
}

-(DataSharedPtrVec_OC*)getDataSharedPtrVector
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getDataSharedPtrVector([self getCptr]);
	DataSharedPtrVec_OC* ret = nil;
	if(cPtr) {
		ret = [[DataSharedPtrVec_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(void)setDataMap: (DataMap_OC*)data_map
{
    Objc_CrossPlatformApi_ApiCenter_setDataMap([self getCptr], [data_map getCptr]);
}

-(DataMap_OC*)getDataMapRef
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getDataMapRef([self getCptr]);
	DataMap_OC* ret = nil;
	if(cPtr) {
		ret = [[DataMap_OC alloc] initWithCptr:cPtr swigOwnCObject:NO];
	}
	return ret; 
}

-(void)setDataSharedPtrMap: (DataSharedPtrMap_OC*)a_data_shared_ptr_map
{
    Objc_CrossPlatformApi_ApiCenter_setDataSharedPtrMap([self getCptr], [a_data_shared_ptr_map getCptr]);
}

-(DataSharedPtrMap_OC*)getDataSharedPtrMap
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getDataSharedPtrMap([self getCptr]);
	DataSharedPtrMap_OC* ret = nil;
	if(cPtr) {
		ret = [[DataSharedPtrMap_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}

-(void)setDataPair: (DataPair_OC*)a_data_pair
{
    Objc_CrossPlatformApi_ApiCenter_setDataPair([self getCptr], [a_data_pair getCptr]);
}

-(DataPair_OC*)getDataPairRef
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getDataPairRef([self getCptr]);
	DataPair_OC* ret = nil;
	if(cPtr) {
		ret = [[DataPair_OC alloc] initWithCptr:cPtr swigOwnCObject:NO];
	}
	return ret; 
}

-(void)setDataSharedPtrPair: (DataSharedPtrPair_OC*)a_data_shared_ptr_pair
{
    Objc_CrossPlatformApi_ApiCenter_setDataSharedPtrPair([self getCptr], [a_data_shared_ptr_pair getCptr]);
}

-(DataSharedPtrPair_OC*)getDataSharedPtrPair
{
    void* cPtr = Objc_CrossPlatformApi_ApiCenter_getDataSharedPtrPair([self getCptr]);
	DataSharedPtrPair_OC* ret = nil;
	if(cPtr) {
		ret = [[DataSharedPtrPair_OC alloc] initWithCptr:cPtr swigOwnCObject:YES];
	}
	return ret; 
}


-(void)dealloc{
      if (swigCPtr != NULL) 
	{
		;

		if (swigCMemOwn) 
		{
			Objc_CrossPlatformApi_delete_ApiCenter((void*)swigCPtr);
			swigCMemOwn = NO;
		}
		swigCPtr = NULL;
	} 
}

@end

