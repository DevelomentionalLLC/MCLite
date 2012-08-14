//
//  UILabel+animations.h
//  
//
//  Created by Jeffry Bobb on 8/11/12.
//
//

#import <UIKit/UIKit.h>

@interface UILabel (animations)
+(void)dbounceLabel:(UILabel*)view withDuration:(float)duration;
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withDelay:(float)delay withTransform:(CGAffineTransform)transform;
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withTransform:(CGAffineTransform)transform;
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withA:(float)a withB:(float)b withC:(float)c withD:(float)d withTX:(float)tx withTY:(float)ty;

+(void)dFadeLabelin:(UILabel*)view withwithDuration:(float)duration;
+(void)dFadeLabellOut:(UILabel*)view withDuration:(float)duration;

+(void)DL_animateDevelomentionalLabel:(UILabel *)label WithDuration:(float)duration;

@end
