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

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Model_OC *model = [Model_OC new];
    float a_float = model.getA_float;
    int c = 2;
}


@end
