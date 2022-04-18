//
//  ViewController.m
//  cross_platform_api_ios
//
//  Created by bytedance on 2022/4/13.
//

#import "ViewController.h"
#include <swig/gen/CrossPlatformApi_proxy.h>
#include <swig/gen/CrossPlatformApi_proxy.h>
#include <swig/gen/CrossPlatformApi_proxy.h>
#include <swig/gen/CrossPlatformApi_proxy.h>
#include <swig/gen/CrossPlatformApi_proxy.h>
#include <swig/gen/CrossPlatformApi_proxy.h>


@interface HYXCallback : ModelCallback_OC

@property (nonatomic, weak) UILabel *sumIntAndFloatValue;
@property (nonatomic, weak) UILabel *onModelChangedPtrValue;
@property (nonatomic, weak) UILabel *onModelChangedSharedPtrValue;

@end

@interface ViewController ()

@property (nonatomic, strong) HYXCallback *callback;
@property (nonatomic, strong) ApiCenter_OC *apiCenter;


@end

@implementation ViewController

- (NSString*)modelToString:(Model_OC *)model {
    NSString * result =
    [[NSString alloc]
     initWithFormat:@"a_uint64 = %llu, a_float = %f, a_string = %@",
     model.getA_uint64, model.getA_float, model.getA_string];
    return result;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.callback = [[HYXCallback alloc] init];
    self.callback.sumIntAndFloatValue = self.sumIntAndFloatValue;
    self.callback.onModelChangedPtrValue = self.onModelChangedPtrValue;
    self.callback.onModelChangedSharedPtrValue = self.onModelChangedSharedPtrValue;
    
    self.apiCenter = [ApiCenter_OC new];
    [self.apiCenter registerModelCallback:self.callback];
    
    _sumIntAndFloatValue.text = @(self.apiCenter.sumIntAndFloat).stringValue;
    _modelPtrStringValue.text = [self modelToString:self.apiCenter.getModelPtr];
    _modelSharedPtrStringValue.text = [self modelToString:self.apiCenter.getModelSharedPtr];
    
    
    //### primitives start ###
    [self.apiCenter setUint64:12345];
    auto a_uinit64 = [self.apiCenter getUnit64];
    
    [self.apiCenter setFloat:123.4f];
    auto a_float = [self.apiCenter getFloat];
   
    [self.apiCenter setBool:true];
    auto a_bool = [self.apiCenter getBool];
    //### primitives end ###
    
    //### string start ###
    [self.apiCenter setString:@"abc"];
    auto a_string = [self.apiCenter getString];
    //### string end ###
    
    //### containers start ###
    StrVec_OC *strVec = [StrVec_OC new];
    [self.apiCenter setStringVector:strVec];
    auto a_str_vec = [self.apiCenter getStringVector];
    
    DataVec_OC *dataVec = [DataVec_OC new];
    [self.apiCenter setDataVector:dataVec];
    auto a_data_vec = [self.apiCenter getDataVectorRef];
    
    DataSharePtrVec_OC *dataSharedPtrVec = [DataSharePtrVec_OC new];
    [self.apiCenter setDataSharedPtrVector:dataSharedPtrVec];
    auto a_data_shared_ptr_vec = [self.apiCenter getDataSharedPtrVector];
    
    DataMap_OC *dataMap = [DataMap_OC new];
    [self.apiCenter setDataMap:dataMap];
    auto a_data_map = [self.apiCenter getDataMapRef];
    
    DataSharePtrMap_OC *dataSharedPtrMap = [DataSharePtrMap_OC new];
    [self.apiCenter setDataSharedPtrMap: dataSharedPtrMap];
    auto a_data_shared_ptr_map = [self.apiCenter getDataSharedPtrMap];
    
    DataPair_OC *dataPair = [DataPair_OC new];
    [self.apiCenter setDataPair:dataPair];
    auto a_data_pair = [self.apiCenter getDataPairRef];
    
    DataSharedPtrPair_OC *dataSharedPtrPair = [DataSharedPtrPair_OC new];
    [self.apiCenter setDataSharedPtrPair:dataSharedPtrPair];
    auto a_data_shared_ptr_pair = [self.apiCenter getDataSharedPtrPair];
    //### containers end ###
}


#pragma mark - Actions
- (IBAction)textChanged:(UITextField *)sender
{
    NSString *text = sender.text;
    [self.apiCenter setString:text];
}

@end


@implementation HYXCallback

- (NSString*)modelToString:(Model_OC *)model {
    NSString * result =
    [[NSString alloc]
     initWithFormat:@"a_uint64 = %llu, a_float = %f, a_string = %@",
     model.getA_uint64, model.getA_float, model.getA_string];
    return result;
}

- (void)onModelChangedPtr:(Model_OC *)model_ptr
{
    _onModelChangedPtrValue.text = [self modelToString:model_ptr];
}

- (void)onModelChangedSharedPtr:(Model_OC *)model_shared_ptr
{
    _onModelChangedSharedPtrValue.text = [self modelToString:model_shared_ptr];
}

@end
