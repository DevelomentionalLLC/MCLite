//
//  DLHistoryViewController.m
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import "DLHistoryViewController.h"

@interface DLHistoryViewController ()

@end

@implementation DLHistoryViewController
@synthesize viewTitleLabel;
@synthesize viewTitle;
@synthesize button_To_Universal_View;
@synthesize labelTop;
@synthesize label_AddFuntionality;
@synthesize button_To_iPhone;
@synthesize label_Bottom;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)yearAlert{
UIAlertView *alert = [[UIAlertView alloc] 
                       initWithTitle:@"First Year anniverary sale"
                       message:@"We've been in the AppStore a full year, So in the month of September Moisture Calculator Universal will be only $.99"
                       delegate:self 
                       cancelButtonTitle:@"OK" 
                       otherButtonTitles: nil];
    
[alert show];
}
-(void)setFont{
    self.label_Bottom.font = [UIFont DL_FontWithSize:12];
    self.labelTop.font = [UIFont DL_FontWithSize:18];
    self.viewTitleLabel.font = [UIFont DL_FontWithSize:24];
    self.button_To_iPhone.titleLabel.font = [UIFont DL_FontWithSize:12];
    self.button_To_Universal_View.titleLabel.font = [UIFont DL_FontWithSize:12];
    self.label_AddFuntionality.font =[UIFont DL_FontWithSize:12];
}
-(void)setText{
    self.label_AddFuntionality.text = @"For History Tracking Click Here!";
    self.labelTop.text = @"Moisture Calculator";
    self.labelTop.textColor = [UIColor blueColor];
    self.label_Bottom.text = [NSString Develomantional_String_copyright];
    self.viewTitleLabel.text = [NSString Develomantional_String];
    self.viewTitleLabel.textColor = [UIColor blueColor];
    
    
}
-(void)animateLabels{
    [UILabel dbounceLabel:self.labelTop withDuration:.5];
    [UILabel dbounceLabel:self.label_Bottom withDuration:.5];
    [UILabel dbounceLabel:self.viewTitleLabel withDuration:.5];
    [UIView dbounceView:self.button_To_iPhone withDuration:.5];
    [UIView dbounceView:self.button_To_Universal_View withDuration:.5];
    [UILabel dbounceLabel:self.label_AddFuntionality withDuration:.5];
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setFont];
    [self setText];
    [self animateLabels];
    self.navigationItem.titleView = viewTitle;
    [self yearAlert];
    [UIButton roundButtonCorners:self.button_To_iPhone withRadius:8];
    [UIButton roundButtonCorners:self.button_To_Universal_View withRadius:8];

}

- (void)viewDidUnload
{
    [self setButton_To_iPhone:nil];
    [self setLabel_Bottom:nil];
    [self setButton_To_Universal_View:nil];
    [self setLabelTop:nil];
    [self setViewTitle:nil];
    [self setViewTitleLabel:nil];
    [self setLabel_AddFuntionality:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}
-(void)goToWeb:(NSString *)urls{
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: urls]];
    NSLog(@"opening url");
    NSLog(@"%@/n",urls);
    
    
    
}

- (IBAction)button_To_Universal:(id)sender {
    NSString *MCiPad =[[NSString alloc]initWithFormat:@"http://itunes.apple.com/us/app/moisture-calculator-ipad-edition/id488584781?mt=8"];
    [self goToWeb:MCiPad];
                      }
- (IBAction)buttton_To_iPhone_Action:(id)sender {
    NSString *MCiPhone =[[NSString alloc]initWithFormat:@"http://itunes.apple.com/us/app/moisture-content-calculator/id463728918?mt=8"];
    [self goToWeb:MCiPhone];
}
@end
