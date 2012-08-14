//
//  DLInstructionViewController.m
//  MCLite
//
//  Created by Jeffry Bobb on 8/11/12.
//  Copyright (c) 2012 Jeffry Bobb. All rights reserved.
//

#import "DLInstructionViewController.h"

@interface DLInstructionViewController ()

@end

@implementation DLInstructionViewController
@synthesize MCView1;
@synthesize MCViewLabel1;
@synthesize label_instructions;
@synthesize label_Bottom1;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
-(void)setFont{
    self.label_Bottom1.font = [UIFont DL_FontWithSize:12];
    self.label_instructions.font = [UIFont DL_FontWithSize:16];
    self.MCViewLabel1.font = [UIFont DL_FontWithSize:24];
       
}
-(void)setText{
  
    self.label_instructions.text = @"Instructions";
    self.label_Bottom1.text = [NSString Develomantional_String_copyright];
    self.MCViewLabel1.text = [NSString Develomantional_String];
    self.MCViewLabel1.textColor = [UIColor blueColor];
    self.label_instructions.textColor = [UIColor blueColor];
    
}
-(void)animateLabels{
    [UILabel dbounceLabel:self.label_instructions withDuration:.5];
    [UILabel dbounceLabel:self.label_Bottom1 withDuration:.5];
    [UILabel dbounceLabel:self.MCViewLabel1 withDuration:.5];
        
}

- (void)viewDidLoad
{
    [super viewDidLoad];
         [self setFont];
          [self setText];
         [self animateLabels];
         self.navigationItem.titleView = MCView1;
    
}

- (void)viewDidUnload
{
    [self setMCView1:nil];
    [self setMCViewLabel1:nil];
    [self setLabel_instructions:nil];
    [self setLabel_Bottom1:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return NO;
}

@end
