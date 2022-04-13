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

@end

@interface ViewController ()

@property (nonatomic, strong) HYXCallback *callback;
@property (nonatomic, strong) ApiCenter_OC *apiCenter;


@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.callback = [[HYXCallback alloc] init];
    self.callback.sumIntAndFloatValue = self.sumIntAndFloatValue;
    self.callback.onModelChangedPtrValue = self.onModelChangedPtrValue;
    
    self.apiCenter = [ApiCenter_OC new];
    [self.apiCenter registerModelCallback:self.callback];
    
    _sumIntAndFloatValue.text = @(self.apiCenter.sumIntAndFloat).stringValue;
     
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
    [[NSString new]
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
    
}

@end
