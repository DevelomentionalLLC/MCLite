//
//  DLAppDelegate.m
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import "DLAppDelegate.h"
#import "Appirater.h"
@implementation DLAppDelegate
@synthesize launchCount = _launchCount;
@synthesize defaultDictionary = _defaultDictionary;

-(NSDictionary*)defaultDictionary{
    if (!_defaultDictionary) {
            // _defaultDictionary = [[NSDictionary alloc]initWithObjectsAndKeys:@"The sample is dry",KEY_IS_DRY_KEY,@"The sample in not dry",KEY_NOT_DRY_KEY,@"The sample is to dry",KEY_TO_DRY_KEY,@"0",KEY_GREENTXT_KEY,@"0",KEY_DRYTXT_KEY,@"0",KEY_ANSWER_KEY, @"Welcome to Moisture Calculator",KEY_FIRST_LAUNCH_MESSAGE_KEY,@"Thank you for your purchase. ",KEY_THANK_YOU_FOR_PURCHASE_KEY,@"0",_launchCount, nil ];
        _defaultDictionary =[[NSDictionary alloc]initWithObjectsAndKeys:@"The sample is dry",KEY_IS_DRY_KEY,@"The sample in not dry",KEY_NOT_DRY_KEY,@"The sample is to dry",KEY_TO_DRY_KEY, @"Welcome to Moisture Calculator",KEY_FIRST_LAUNCH_MESSAGE_KEY,@"Thank you for your purchase. ",KEY_THANK_YOU_FOR_PURCHASE_KEY,nil];
    }
    
    NSLog(@"%@",_launchCount);
    NSLog(@"%@",[[NSUserDefaults standardUserDefaults]objectForKey:KEY_LAUNCH_COUNT_KEY]);
    return _defaultDictionary;
}
-(NSNumber *)launchCount{
    if (!_launchCount) {
        _launchCount = [NSNumber numberWithInt:0];
    }
    return _launchCount;
}


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
        [RevMobAds startSessionWithAppID:@"502d6dba72acb34000000010"];
         [[NSUserDefaults standardUserDefaults] registerDefaults:self.defaultDictionary];
    _launchCount =  [[NSUserDefaults standardUserDefaults] valueForKey:KEY_LAUNCH_COUNT_KEY];
    
    int count = self.launchCount.intValue;
    int nCount = count + 1;
    self.launchCount = [[NSNumber alloc] initWithInt:nCount];
    [[NSUserDefaults standardUserDefaults] setValue:self.launchCount forKey:KEY_LAUNCH_COUNT_KEY];
    [[NSUserDefaults standardUserDefaults] synchronize];
    NSLog(@"%@",self.launchCount);
    if (self.launchCount.intValue == 16) {
        [Appirater rateApp];
    }
    if (self.launchCount.intValue == 1) {
        
        [self showAlert];
    }

    [Appirater appLaunched:YES];
    [[UIApplication sharedApplication] registerForRemoteNotificationTypes:(UIRemoteNotificationTypeBadge | UIRemoteNotificationTypeAlert |UIRemoteNotificationTypeSound)];
   
    
    
      
 return YES;

  
}
-(void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken
{
     NSLog(@"My Device Token is %@", deviceToken);

    
}
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    
        [[NSUserDefaults standardUserDefaults] setObject:self.launchCount forKey:KEY_LAUNCH_COUNT_KEY];
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
        [RevMobAds showFullscreenAd];
    [TapForTap setDefaultAppId: @"3654dbc0-c6fe-012f-fb53-4040d804a637"];
    [TapForTap checkIn];


    
   
        //[MKiCloudSync start];
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    [self setDefaultDictionary:nil];
    [self setLaunchCount:nil];
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}
-(void)showAlert{
    NSString *message = [[NSUserDefaults standardUserDefaults]stringForKey:KEY_FIRST_LAUNCH_MESSAGE_KEY];
    NSString *messageTY = [[NSUserDefaults standardUserDefaults]stringForKey:KEY_THANK_YOU_FOR_PURCHASE_KEY];
    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:message
                          message:messageTY
                          delegate:self
                          cancelButtonTitle:@"OK"
                          otherButtonTitles:nil];
    
    [alert show];
    
}

@end
