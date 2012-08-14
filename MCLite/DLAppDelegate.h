//
//  DLAppDelegate.h
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TapForTap.h"

@interface DLAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong)NSNumber *launchCount;
@property (nonatomic, strong)NSDictionary *defaultDictionary;

@end
