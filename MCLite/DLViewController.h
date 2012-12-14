//
//  DLViewController.h
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UILabel+animations.h"
#import "NSString+addons.h"
#import "UIButton+addons.h"
#import "UIFont+MC_Addons.h"
#import "UIImage+addons.h"
#import <RevMobAds/RevMobAds.h>
#import "UIView+Animations.h"
#import <QuartzCore/QuartzCore.h>
@interface DLViewController : UIViewController
@property (unsafe_unretained, nonatomic) IBOutlet UIView *MCView;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *MCViewLabel;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *MoistureCalcTopLabel;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *labelGreenTextFieldDescription;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *labelDryTextFieldDescription;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *labelCalcDescription;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *labelAnswer;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *labelPercentage;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *labelDevelomentionalShadow;
@property (unsafe_unretained, nonatomic) IBOutlet UILabel *labelCopyright_bottom;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *inputGreen;
@property (unsafe_unretained, nonatomic) IBOutlet UITextField *inputDry;
@property (unsafe_unretained, nonatomic) IBOutlet UIButton *buttonCalculate;
- (IBAction)CalculateButton;

@end
