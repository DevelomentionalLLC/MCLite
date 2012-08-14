//
//  UIView+Animations.h
//  moisture calculator iPad
//
//  Created by jeffry Bobb on 7/22/12.
//  Copyright (c) 2012 Develomentional, LLC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Animations)

+(void)danimateView:(UIView *)obj withDuration:(float)duration withDelay:(float)delay withTransform:(CGAffineTransform)transform;
+(void)danimateView:(UIView *)obj withDuration:(float)duration withTransform:(CGAffineTransform)transform;



+(void)danimateUIView:(UIView *)obj withDuration:(float)duration withA:(float)a withB:(float)b withC:(float)c withD:(float)d withTX:(float)tx withTY:(float)ty;

+(void)dbounceView:(UIView*)view withDuration:(float)duration;
+(void)dFadeViewOut:(UIView*)view withDuration:(float)duration;
+(void)dFadeViewin:(UIView*)view withwithDuration:(float)duration;


+(void)dbounceLabel:(UILabel*)view withDuration:(float)duration;
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withDelay:(float)delay withTransform:(CGAffineTransform)transform;
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withTransform:(CGAffineTransform)transform;
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withA:(float)a withB:(float)b withC:(float)c withD:(float)d withTX:(float)tx withTY:(float)ty;

+(void)dFadeLabelin:(UILabel*)view withwithDuration:(float)duration;
+(void)dFadeLabellOut:(UILabel*)view withDuration:(float)duration;

+(void)DL_animateDevelomentionalLabel:(UILabel *)label WithDuration:(float)duration;
@end
