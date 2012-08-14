//
//  UIFont+MC_Addons.m
//  moisture calculator iPad
//
//  Created by jeffry Bobb on 7/21/12.
//  Copyright (c) 2012 Develomentional, LLC. All rights reserved.
//

#import "UIFont+MC_Addons.h"

@implementation UIFont (MC_Addons)
+ (id)DL_FontWithSize:(CGFloat)size{
    
    return [UIFont fontWithName:@"Zapfino" size:size];
}
+(UILabel*)Develomentional_LabelWithFontSize:(float)fontSize{
    UILabel *newLabel = [[UILabel alloc]init];
    newLabel.text = @"Develomentional,LLC";
    newLabel.font = [UIFont DL_FontWithSize:fontSize];
    return newLabel;
    
}

@end
