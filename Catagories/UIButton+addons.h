//
//  UIButton+addons.h
//  moisture calculator iPad
//
//  Created by jeffry Bobb on 7/22/12.
//  Copyright (c) 2012 Develomentional, LLC. All rights reserved.
//



@interface UIButton (addons)
-(void)DL_applyStyleToButtonWithFontSize:(float)Fsize;
+(void)bounceButton:(UIButton *)button;
+(void)roundButtonCornersDefaultRadius:(UIButton*)button;
+(void)roundButtonCorners:(UIButton *)button withRadius:(float)radius;
@end
