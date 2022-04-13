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

@interface ViewController ()

@end

@implementation ViewController


ModelCallback_OC* modelCallback = [ModelCallback_OC new];

-(NSString*) modelToString: (Model_OC*)model {
    NSString * result =
    [[NSString new]
     initWithFormat:@"a_uint64 = %llu, a_float = %f, a_string = %@",
     model.getA_uint64, model.getA_float, model.getA_string];
    return result;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ApiCenter_OC *apiCenter = [ApiCenter_OC new];
    Model_OC *modelPtr = apiCenter.getModelPtr;
    
    
    _sumIntAndFloatValue.text = @(apiCenter.sumIntAndFloat).stringValue;
    

}


@end
