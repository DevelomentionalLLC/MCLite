//
//  DLInfoViewController.h
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DLInfoViewController : UIViewController
- (IBAction)buttonWeb:(id)sender;
- (IBAction)MCSite:(id)sender;
- (IBAction)DevelomentionalSite:(id)sender;
@property (weak, nonatomic) IBOutlet UILabel *shadowLabel;
@property (weak, nonatomic) IBOutlet UILabel *label_Bottom;
@property (weak, nonatomic) IBOutlet UIView *MCView;
@property (weak, nonatomic) IBOutlet UILabel *MCViewlabel;
@property (weak, nonatomic) IBOutlet UILabel *label_Top;
@property (weak, nonatomic) IBOutlet UIButton *button_DevSite;
@property (weak, nonatomic) IBOutlet UIButton *button_MCSite;
@property (weak, nonatomic) IBOutlet UIButton *button_RC;

@end
