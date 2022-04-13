//
//  ViewController.m
//  cross_platform_api_ios
//
//  Created by bytedance on 2022/4/12.
//

#import "ViewController.h"
#include <swig/gen/CrossPlatformApi_proxy.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    Model_OC * a = [Model_OC new];
    auto b = a.getA_float;
    auto c = a.getA_string;
    auto d = 11;
}


@end
