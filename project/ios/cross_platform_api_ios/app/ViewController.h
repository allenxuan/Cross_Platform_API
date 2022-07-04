//
//  ViewController.h
//  cross_platform_api_ios
//
//  Created by bytedance on 2022/4/13.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *sumIntAndFloatValue;
@property (weak, nonatomic) IBOutlet UILabel *modelPtrStringValue;
@property (weak, nonatomic) IBOutlet UILabel *modelSharedPtrStringValue;
@property (weak, nonatomic) IBOutlet UILabel *onModelChangedPtrValue;
@property (weak, nonatomic) IBOutlet UILabel *onModelChangedSharedPtrValue;

@end

