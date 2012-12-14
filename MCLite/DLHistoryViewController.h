//
//  DLHistoryViewController.h
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UIButton+addons.h"
@interface DLHistoryViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *viewTitleLabel;
@property (weak, nonatomic) IBOutlet UIView *viewTitle;
- (IBAction)button_To_Universal:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button_To_iPhone;
@property (weak, nonatomic) IBOutlet UILabel *label_Bottom;
- (IBAction)buttton_To_iPhone_Action:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button_To_Universal_View;
@property (weak, nonatomic) IBOutlet UILabel *labelTop;
@property (weak, nonatomic) IBOutlet UILabel *label_AddFuntionality;

@end
