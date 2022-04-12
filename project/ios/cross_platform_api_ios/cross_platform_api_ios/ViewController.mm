//
//  ViewController.m
//  cross_platform_api_ios
//
//  Created by bytedance on 2022/4/11.
//

#import "ViewController.h"
#include "gen/test_model.h"
#import "cross_platform_lib/swig/gen/ios/CrossPlatformApi_proxy.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.sumIntAndFloatValue.text = @"dsad";
    
    self.sumIntAndFloatValue2.text = @"222222";
    
    
    auto a = new cross_platform_external::Model();
    delete a;
    auto b = std::make_unique<cross_platform_external::Model>();
    
    
    self.sumIntAndFloatValue2.text = [NSString stringWithUTF8String:b->a_string.c_str()];
    
    Model * model = [[Model alloc] init];
    self.sumIntAndFloatValue2.text = [NSString stringWithFormat:@"%f", [model getA_float]];
    
    ModelCallback *modelCallback = [[ModelCallback alloc] init];
}


@end
