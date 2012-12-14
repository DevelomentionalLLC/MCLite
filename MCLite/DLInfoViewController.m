//
//  DLInfoViewController.m
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import "DLInfoViewController.h"

@interface DLInfoViewController ()

@end

@implementation DLInfoViewController
@synthesize shadowLabel;
@synthesize label_Bottom;
@synthesize MCView;
@synthesize MCViewlabel;
@synthesize label_Top;
@synthesize button_DevSite;
@synthesize button_MCSite;
@synthesize button_RC;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)setFont{
   
    self.shadowLabel.font = [UIFont DL_FontWithSize:24];
    self.MCViewlabel.font = [UIFont DL_FontWithSize:12];
    self.label_Bottom.font = [UIFont DL_FontWithSize:12];
    self.label_Top.font = [UIFont DL_FontWithSize:32];
    self.button_DevSite.titleLabel.font = [UIFont DL_FontWithSize:12];
    self.button_MCSite.titleLabel.font = [UIFont DL_FontWithSize:12];
    self.button_RC.titleLabel.font = [UIFont DL_FontWithSize:12];
}
-(void)setText{
    
    self.shadowLabel.text = [NSString Develomantional_String];
    self.label_Bottom.text = [NSString Develomantional_StringWithYear];
    self.MCViewlabel.text = [NSString Develomantional_String];
    self.label_Top.text = @"Info";
    self.label_Top.textColor = [UIColor blueColor];
    self.MCViewlabel.textColor = [UIColor blueColor];
    self.shadowLabel.alpha = .225;
    
}
-(void)animateLabels{
    [UILabel dbounceLabel:self.label_Bottom withDuration:.5];
       [UILabel dbounceLabel:self.MCViewlabel withDuration:.5];
    [UILabel dbounceLabel:self.label_Top withDuration:.5];
    [UIView dbounceView:self.button_DevSite withDuration:.5];
    [UIView dbounceView:self.button_MCSite withDuration:.5];
    [UIView dbounceView:self.button_RC withDuration:.5];
    [UIButton roundButtonCorners:self.button_DevSite withRadius:8];
    [UIButton roundButtonCorners:self.button_MCSite withRadius:8];
    [UIButton roundButtonCorners:self.button_RC withRadius:8];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setFont];
    [self setText];
    [self animateLabels];
    
	// Do any additional setup after loading the view.
}

- (void)viewDidUnload
{
    [self setShadowLabel:nil];
    [self setLabel_Bottom:nil];
    [self setMCView:nil];
    [self setMCViewlabel:nil];
    [self setLabel_Top:nil];
    [self setButton_DevSite:nil];
    [self setButton_MCSite:nil];
    [self setButton_RC:nil];
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

- (IBAction)buttonWeb:(id)sender
{
    NSString *rateComment = [[NSString alloc]initWithFormat:@"http://itunes.apple.com/us/app/moisture-content-calculator/id463728918?ls=1&mt=8"];
    [self goToWeb:rateComment];
}

- (IBAction)MCSite:(id)sender
{
     NSString *moisturecalculator = [[NSString alloc]initWithFormat:@"http://development.develomentional.com/develomentional/Moisture_Calculator.html"];
    [self goToWeb:moisturecalculator];
}

- (IBAction)DevelomentionalSite:(id)sender
{
    NSString *develomentional = [[NSString alloc]initWithFormat:@"http://www.develomentional.com"];
    [self goToWeb:develomentional];
}
@end
