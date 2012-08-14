//
//  NSString+addons.m
//  moisture calculator iPad
//
//  Created by jeffry Bobb on 7/21/12.
//  Copyright (c) 2012 Develomentional, LLC. All rights reserved.
//

#import "NSString+addons.h"

@implementation NSString (addons)

+(NSString*)Develomantional_String
{
    NSString *new =@"Develomentional,LLC";
    return new;
}
-(NSString*)Develomantional_String
{
    NSString *new =@"Develomentional,LLC";
    return new;
}
+(NSString*)Develomantional_StringWithYear
{
    NSString *new =@"Develomentional,LLC 2012";
    return new;
}
-(NSString*)Develomantional_StringWithYear
{

    NSString *new =@"Develomentional,LLC 2012";
    return new;
}
+(NSString*)Develomantional_String_copyright
{
    NSString *new =@"Copyright Develomentional,LLC 2012";
    return new;

    
}
-(NSString*)Develomantional_String_copyright
{
    NSString *new = @"Copyright Develomentional,LLC 2012";
    return new;

}
#pragma mark Date import
+(NSString *)DL_CurrentDate{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    
    [dateFormat setDateStyle:NSDateFormatterShortStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today];
    
    
    return dateString;

}

+(NSString *)DL_Todays_Date{
    
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterLongStyle];
    [dateFormat setDateStyle:NSDateFormatterMediumStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today];
    
    
    return dateString;
}
+(NSString *)DL_Todays_Date_Long{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterLongStyle];
    [dateFormat setDateStyle:NSDateFormatterLongStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 
    
    return dateString;
}
+(NSString *)DL_Todays_Date_short{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterShortStyle];
    [dateFormat setDateStyle:NSDateFormatterShortStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 
    
    return dateString;
}
+(NSString *)DL_Todays_Date_Medium{
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterMediumStyle];
    [dateFormat setDateStyle:NSDateFormatterMediumStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 
    
    return dateString;
}
+(NSString *)DL_Todays_Date_{
    
    NSDateFormatter *dateFormat =[[NSDateFormatter alloc]init];
    [dateFormat setTimeStyle:NSDateFormatterFullStyle];
    [dateFormat setDateStyle:NSDateFormatterFullStyle];
    NSDate *today = [NSDate date];
    NSString *dateString =[dateFormat stringFromDate:today]; 
    
    return dateString;
}
@end
