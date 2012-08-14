//
//  DLViewController.m
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//
#define MCcalc(x,y) ((x-y)/y*100)

#import "DLViewController.h"
#import "TapForTap.h"
@interface DLViewController ()<UITextFieldDelegate,TapForTapAdViewDelegate>
@property (nonatomic, strong)NSString *answerString;
@end

@implementation DLViewController

@synthesize MCView;
@synthesize MCViewLabel;
@synthesize MoistureCalcTopLabel;
@synthesize labelGreenTextFieldDescription;
@synthesize labelDryTextFieldDescription;
@synthesize labelCalcDescription;
@synthesize labelAnswer;
@synthesize labelPercentage;
@synthesize labelDevelomentionalShadow;
@synthesize labelCopyright_bottom;
@synthesize inputGreen;
@synthesize inputDry;
@synthesize buttonCalculate;
@synthesize answerString =_answerString;
#pragma mark- init
-(NSString*)answerString{
    if (!_answerString) {
        _answerString = [[NSString alloc]init];
    }
    return _answerString;
}
#pragma mark - setup
-(void)setFont{
    self.labelGreenTextFieldDescription.font = [UIFont DL_FontWithSize:12];
    self.labelDryTextFieldDescription.font = [UIFont DL_FontWithSize:12];
    self.labelDevelomentionalShadow.font = [UIFont DL_FontWithSize:22];
    self.labelCopyright_bottom.font = [UIFont DL_FontWithSize:12];
    self.MCViewLabel.font = [UIFont DL_FontWithSize:12];
    self.MoistureCalcTopLabel.font = [UIFont DL_FontWithSize:26];
    self.labelAnswer.font = [UIFont DL_FontWithSize:16];
    self.labelPercentage.font = [UIFont DL_FontWithSize:16];
    self.buttonCalculate.titleLabel.font = [UIFont DL_FontWithSize:12];
}
-(void)setText{
    self.labelGreenTextFieldDescription.text = @"Green Sample Weight:";
    self.labelDryTextFieldDescription.text = @"Dry Sample Weight:";
    self.labelDevelomentionalShadow.text = [NSString Develomantional_String];
    self.labelCopyright_bottom.text = [NSString Develomantional_String_copyright];
    self.MCViewLabel.textColor = [UIColor blueColor];
    self.MoistureCalcTopLabel.textColor = [UIColor blueColor];
    self.MCViewLabel.text = [NSString Develomantional_String];
    self.MoistureCalcTopLabel.text = @"Moisture Calculator";
    self.labelDevelomentionalShadow.alpha = .225;
    self.labelPercentage.text = @"%";

}
-(void)animateLabels{
    [UILabel dbounceLabel:self.labelGreenTextFieldDescription withDuration:.5];
    [UILabel dbounceLabel:self.labelDryTextFieldDescription withDuration:.5];
    [UILabel dbounceLabel:self.labelDevelomentionalShadow withDuration:.5];
    [UILabel dbounceLabel:self.labelCopyright_bottom withDuration:.5];
    [UILabel dbounceLabel:self.MCViewLabel withDuration:.5];
    [UILabel dbounceLabel:self.MoistureCalcTopLabel withDuration:.5];
    [UILabel dbounceLabel:self.labelAnswer withDuration:.5];
    [UILabel dbounceLabel:self.labelPercentage withDuration:.5];
    [UIView dbounceView:self.buttonCalculate withDuration:.5];
}
#pragma mark - validation
-(void)ValidatCalculation{
    if (!self.inputGreen.text) {
            //self.inputGreen.text = 0;
        
    }
    if (!self.inputDry.text) {
            // self.inputDry.text = 0;
    }
    if (self.inputGreen.text.floatValue <= 0) {
        self.inputGreen.textColor = UIColor.redColor;
        
        self.labelAnswer.text = 0;
        
        [self greenInvalid];
    }
    else if (self.inputDry.text.floatValue <= 0){
        self.labelDryTextFieldDescription.textColor = UIColor.redColor;
        self.labelAnswer.text = 0;
        [self dryInvalid];
    }
    else if(self.inputDry.text.floatValue >= self.inputGreen.text.floatValue){
        self.labelAnswer.text = 0;
        self.labelGreenTextFieldDescription.textColor = UIColor.redColor;
        self.labelDryTextFieldDescription.textColor = UIColor.redColor;
        [self dryLowerThanGreen];
        
    }else{
        self.labelDryTextFieldDescription.textColor = UIColor.blackColor;
        self.labelDryTextFieldDescription.textColor = UIColor.blackColor;
        self.labelCalcDescription.textColor = UIColor.blackColor;
        self.labelPercentage.textColor = UIColor.blackColor;
        self.labelAnswer.textColor = UIColor.blackColor;
    }
}
-(void)changeColorsOfLabels{
   
    
    if (self.answerString.floatValue <= 0) {
        self.labelCalcDescription.text = @"INVALID";
        self.labelCalcDescription.textColor = UIColor.redColor;
        self.labelPercentage.textColor = UIColor.redColor;
        self.labelAnswer.textColor = UIColor.redColor;
        self.labelAnswer.text = @"Invalid Sample!";
    }
    else if (self.answerString.floatValue < 5) {
        self.labelCalcDescription.text =[[NSUserDefaults standardUserDefaults] objectForKey:KEY_TO_DRY_KEY];
        self.labelCalcDescription.textColor = UIColor.yellowColor;
        self.labelPercentage.textColor = UIColor.yellowColor;
        
        
        self.labelAnswer.textColor = UIColor.yellowColor;
        self.labelAnswer.text = [self answerString];
    }
    else if(self.answerString.floatValue <= 9) {
        self.labelCalcDescription.text =[[NSUserDefaults standardUserDefaults] objectForKey:KEY_IS_DRY_KEY];
        self.labelCalcDescription.textColor = UIColor.greenColor;
        self.labelPercentage.textColor = UIColor.greenColor;
        
        
        self.labelAnswer.textColor = UIColor.greenColor;
        self.labelAnswer.text = [self answerString];
    }
    else if (self.answerString.floatValue <= 25) {
        self.labelCalcDescription.text = @"The sample is seasoned (firewood)";
        self.labelCalcDescription.textColor = UIColor.yellowColor;
        self.labelPercentage.textColor = UIColor.yellowColor;
        self.labelAnswer.textColor = UIColor.yellowColor;
        self.labelAnswer.text = [self answerString];
        
    }else{
        self.labelCalcDescription.text = [[NSUserDefaults standardUserDefaults] objectForKey:KEY_NOT_DRY_KEY];
        self.labelCalcDescription.textColor = UIColor.redColor;
        self.labelPercentage.textColor = UIColor.redColor;
        self.labelAnswer.textColor = UIColor.redColor;
        self.labelAnswer.text = [self answerString];
        
    }
    
}
#pragma mark- life cycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    [self setFont];
    [self setText];
    [self animateLabels];
    [self makeTextFieldsDelegateSelf];
    [self restoreTextFieldsOnly];
    [self restoreAnswerStringOnly];
    self.labelAnswer.text = self.answerString;
    
    [self changeColorsOfLabels];
        
    self.navigationItem.titleView = MCView;
    TapForTapAdView *adView = [[TapForTapAdView alloc] initWithFrame: CGRectMake(0, 0, 320, 50)];
    [self.view addSubview: adView];
    
        // You don't have to do this if you set the default app ID in your app delegate
    adView.appId = @"3654dbc0-c6fe-012f-fb53-4040d804a637";
    
    [adView loadAds];

}

- (void)viewDidUnload
{
    [self setMCView:nil];
    [self setMCViewLabel:nil];
    [self setMoistureCalcTopLabel:nil];
    [self setLabelGreenTextFieldDescription:nil];
    [self setLabelDryTextFieldDescription:nil];
    [self setLabelCalcDescription:nil];
    [self setLabelAnswer:nil];
    [self setLabelPercentage:nil];
    [self setLabelDevelomentionalShadow:nil];
    [self setLabelCopyright_bottom:nil];
    [self setInputGreen:nil];
    [self setInputDry:nil];
    [self setButtonCalculate:nil];
    
    
    [[NSNotificationCenter defaultCenter]removeObserver:self];
  
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}
#pragma mark - rotation
- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}
#pragma mark - textField delegate
-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    NSLog(@" ");
    NSLog(@"Done pressed");
    
    if (self.inputDry.isFirstResponder == YES){
        NSLog(@" ");
        NSLog(@"resigning txtfields");
        [self.inputDry resignFirstResponder ];
    }
    
    else if (self.inputGreen.isFirstResponder==YES){
        NSLog(@" ");
        NSLog(@"changing txtfields");
        [self.inputDry  becomeFirstResponder];
        
    }
    [self saveAnswerStringOnly];
    [self saveTextFieldsOnly];
    return YES;
}

-(void)makeTextFieldsDelegateSelf{
    self.inputDry.delegate = self;
    self.inputGreen.delegate = self;
    
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string{
 
    return YES;
}
-(void)calculationAnimations
{
    [UIView dbounceView:self.buttonCalculate withDuration:.5];
    [UILabel dbounceLabel:self.labelPercentage withDuration:.5];
    [UILabel dbounceLabel:self.labelAnswer withDuration:.5];
    
    
}
#pragma mark - IBActions
- (IBAction)CalculateButton
{
         [self ValidatCalculation];
    
        float green = self.inputGreen.text.floatValue;
        float dry = self.inputDry.text.floatValue;
        float MC = MCcalc(green, dry);
        self.answerString = [[NSString alloc]initWithFormat:@"%.2f",MC];
         self.labelAnswer.text = self.answerString;
         [self saveTextFieldsOnly];
        [self saveAnswerStringOnly];
    [self changeColorsOfLabels];
}
#pragma mark - alerts
-(void)greenInvalid{
   

    
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Invalid green sample"
                          message:@"please check entries"
                          delegate:self
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil];
    
    [alert show];
}
-(void)dryInvalid{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"Invalid dry sample"
                          message:@"please check entries"
                          delegate:self
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil];
    
    [alert show];
    
}
-(void)dryLowerThanGreen{
    UIAlertView *alert = [[UIAlertView alloc]
                          initWithTitle:@"invadid entries"
                          message:@"The dry sample must be lower than the Green sample"
                          delegate:self
                          cancelButtonTitle:@"OK"
                          otherButtonTitles: nil];
    
    [alert show]; 
    
    
}
#pragma mark-saving & retrieving data
-(void)saveTextFieldsOnly
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.inputGreen.text forKey:KEY_GREENTXT_KEY];
    [defaults setObject:self.inputDry.text forKey:KEY_DRYTXT_KEY];
    [defaults synchronize];
}
-(void)restoreTextFieldsOnly
{
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.inputGreen.text = [defaults objectForKey:KEY_GREENTXT_KEY];
    self.inputDry.text = [defaults objectForKey:KEY_DRYTXT_KEY];
    [defaults synchronize];
}
-(void)saveAnswerStringOnly
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setObject:self.answerString forKey:KEY_ANSWER_KEY];
    [defaults synchronize];
}
-(void)restoreAnswerStringOnly
{
     NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    self.answerString = [defaults objectForKey:KEY_ANSWER_KEY];
    [defaults synchronize];
}
#pragma mark - notifications
-(void)UpdateUI:(NSNotification *)notification
{
    [self restoreTextFieldsOnly];
    [self restoreAnswerStringOnly];
    
}
#pragma mark - TapForTap Delegate protocol
- (void) tapForTapAdViewDidReceiveAd: (TapForTapAdView *)adView{
    NSLog(@"adView did recieve ad");
}
- (void) tapForTapAdView: (TapForTapAdView *)adView didFailToReceiveAd: (NSString *)reason{
     NSLog(@"adView Failed to recieve ad");
}
@end
