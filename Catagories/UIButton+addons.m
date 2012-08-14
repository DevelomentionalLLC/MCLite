//
//  UIButton+addons.m
//  moisture calculator iPad
//
//  Created by jeffry Bobb on 7/22/12.
//  Copyright (c) 2012 Develomentional, LLC. All rights reserved.
//

#import "UIButton+addons.h"
#import "UIView+Animations.h"
#import "UIFont+MC_Addons.h"
@implementation UIButton (addons)
-(void)DL_applyStyleToButtonWithFontSize:(float)Fsize{
    self.titleLabel.font = [UIFont DL_FontWithSize:Fsize];

	UIImage *buttonImage = [[UIImage imageNamed:@"C_Button"] stretchableImageWithLeftCapWidth:15 topCapHeight:0];
	[self setBackgroundImage:buttonImage forState:UIControlStateNormal];
    
        UIImage *pressedImage = [[UIImage imageNamed:@"C_Button"] stretchableImageWithLeftCapWidth:15 topCapHeight:0];
	[self setBackgroundImage:pressedImage forState:UIControlStateHighlighted];
}

+(void)bounceButton:(UIButton *)button{
    [UIView dbounceView:button withDuration:.5];

}


@end
