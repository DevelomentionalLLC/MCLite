//
//  UIView+Animations.m
//  moisture calculator iPad
//
//  Created by jeffry Bobb on 7/22/12.
//  Copyright (c) 2012 Develomentional, LLC. All rights reserved.
//

#import "UIView+Animations.h"

@implementation UIView (Animations)
+(void)danimateView:(UIView *)obj withDuration:(float)duration withDelay:(float)delay withTransform:(CGAffineTransform)transform;
{
    
    CGAffineTransform Thetransform = transform;    
    [UIView animateWithDuration:duration
                          delay:delay
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         obj.transform = Thetransform;
         
     }   
                     completion:^(BOOL finished){
     }];
}
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withDelay:(float)delay withTransform:(CGAffineTransform)transform
{
    
    CGAffineTransform Thetransform = transform;    
    [UIView animateWithDuration:duration
                          delay:delay
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         obj.transform = Thetransform;
         
     }   
                     completion:^(BOOL finished){
                     }];
}
+(void)danimateUIView:(UIView *)obj withDuration:(float)duration withA:(float)a withB:(float)b withC:(float)c withD:(float)d withTX:(float)tx withTY:(float)ty{
    CGAffineTransform Thetransform = CGAffineTransformMake(a, b, c, d, tx, ty);   
    
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^
     {
         obj.transform = Thetransform;
         
     }  completion:^(BOOL finished)
     { if(finished){
        
    }
     }];

}
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withA:(float)a withB:(float)b withC:(float)c withD:(float)d withTX:(float)tx withTY:(float)ty{
    CGAffineTransform Thetransform = CGAffineTransformMake(a, b, c, d, tx, ty);   
    
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^
     {
         obj.transform = Thetransform;
         
     }  completion:^(BOOL finished)
     { if(finished){
        obj.transform = CGAffineTransformIdentity;
    }
     }];

}
+(void)danimateView:(UIView *)obj withDuration:(float)duration withTransform:(CGAffineTransform)transform 
{
    CGAffineTransform Thetransform = transform;    

    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         obj.transform = Thetransform;
     
     }  completion:^(BOOL finished)
     { 
                 }];
}
+(void)danimateLabel:(UILabel *)obj withDuration:(float)duration withTransform:(CGAffineTransform)transform
{
    CGAffineTransform Thetransform = transform;    
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveEaseIn
                     animations:^
     {
         obj.transform = Thetransform;
         
     }   
                     completion:^(BOOL finished)
     {
     }];
}

+(void)dbounceView:(UIView *)view withDuration:(float)duration
{  CGAffineTransform big = CGAffineTransformMakeScale(1.35f, 1.35f);
    CGAffineTransform realbig = CGAffineTransformMakeScale(2.25f,2.25f);
    CGAffineTransform start = CGAffineTransformMakeScale(2.0f,2.0f);
    view.hidden = YES;
    CGAffineTransform med = CGAffineTransformMakeScale(0.8f, 0.8f);
    CGAffineTransform normal = CGAffineTransformIdentity;
    view.transform = realbig;
    float num1 = 0.2f;
    
    [UIView animateWithDuration:(duration - num1)
                          delay:0.0f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^
     { view.transform =start;
         view.hidden = NO;
         
         
     }   
                     completion:^(BOOL finished)
     {    if(finished){
        float num2 = 0.02;
        [UIView animateWithDuration:((duration - num2)-num1)
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^
         {view.transform = med;
             
             
         }   
                         completion:^(BOOL finished)
         {    if(finished){   float num3 = .05;
            [UIView animateWithDuration:((duration -num3)-num1)
                                  delay:0.0f
                                options:UIViewAnimationOptionCurveLinear
                             animations:^
             {view.transform = big;
                 
                 
             }   
                             completion:^(BOOL finished)
             {    if(finished){
                float num4 = .06;
                [UIView animateWithDuration:((duration - num4)-num4)
                                      delay:0.0f
                                    options:UIViewAnimationOptionCurveLinear
                                 animations:^
                 {view.transform = normal;
                     
                     
                 }   
                                 completion:^(BOOL finished)
                 {    if(finished){
                    
                    
                }
                 }];
                
            }
             }];
            
            
        }
         }];
        
    }
     }];

}
+(void)dbounceLabel:(UILabel*)view withDuration:(float)duration{
    CGAffineTransform big = CGAffineTransformMakeScale(1.35f, 1.35f);
     CGAffineTransform realbig = CGAffineTransformMakeScale(2.25f,2.25f);
     CGAffineTransform start = CGAffineTransformMakeScale(2.0f,2.0f);
    view.hidden = YES;
     CGAffineTransform med = CGAffineTransformMakeScale(0.8f, 0.8f);
    CGAffineTransform normal = CGAffineTransformIdentity;
    view.transform = realbig;
    float num1 = 0.2f;
   
    [UIView animateWithDuration:(duration - num1)
                          delay:0.0f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^
     { view.transform =start;
         view.hidden = NO;
        
         
     }   
                     completion:^(BOOL finished)
     {    if(finished){
           float num2 = 0.02;
        [UIView animateWithDuration:((duration - num2)-num1)
                              delay:0.0f
                            options:UIViewAnimationOptionCurveLinear
                         animations:^
         {view.transform = med;
             
             
         }   
                         completion:^(BOOL finished)
         {    if(finished){   float num3 = .05;
            [UIView animateWithDuration:((duration -num3)-num1)
                                  delay:0.0f
                                options:UIViewAnimationOptionCurveLinear
                             animations:^
             {view.transform = big;
                 
                 
             }   
                             completion:^(BOOL finished)
             {    if(finished){
                float num4 = .06;
                [UIView animateWithDuration:((duration - num4)-num4)
                                      delay:0.0f
                                    options:UIViewAnimationOptionCurveLinear
                                 animations:^
                 {view.transform = normal;
                     
                     
                 }   
                                 completion:^(BOOL finished)
                 {    if(finished){
                    
                    
                }
                 }];

            }
             }];

            
        }
         }];

    }
     }];
}
+(void)dFadeViewOut:(UIView*)view withDuration:(float)duration{
   
    CGAffineTransform normal = CGAffineTransformIdentity;
    view.transform = normal;
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^
     {   
          CGAffineTransform gone = CGAffineTransformMakeScale(0.0f, 0.0f);
        view.transform = gone;
     }   
                     completion:^(BOOL finished)
     {    if (finished){
        
           }
     }];
}

+(void)dFadeViewin:(UIView*)view withwithDuration:(float)duration
{ 
    view.hidden = YES;
        
    CGAffineTransform normal = CGAffineTransformIdentity;
    CGAffineTransform gone = CGAffineTransformMakeScale(0.1f, 0.1f);
    view.transform = gone;
       view.hidden = NO;
    
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^
     {   
          
         view.transform = normal;
            
                     
     }
                     completion:^(BOOL finished)
     {    if (finished){
       
     }  
     
    }];
}
+(void)dFadeLabelin:(UILabel*)view withwithDuration:(float)duration{
    
    view.hidden = YES;
    
    CGAffineTransform normal = CGAffineTransformIdentity;
    CGAffineTransform gone = CGAffineTransformMakeScale(0.1f, 0.1f);
    view.transform = gone;
    view.hidden = NO;
    
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveEaseOut
                     animations:^
     {   
         
         view.transform = normal;
         
         
     }
                     completion:^(BOOL finished)
     {    if (finished){
        
    }  
         
     }];

}
+(void)dFadeLabellOut:(UILabel*)view withDuration:(float)duration{
    
    CGAffineTransform normal = CGAffineTransformIdentity;
    view.transform = normal;
    [UIView animateWithDuration:duration
                          delay:0.0f
                        options:UIViewAnimationOptionCurveLinear
                     animations:^
     {   
         CGAffineTransform gone = CGAffineTransformMakeScale(0.0f, 0.0f);
         view.transform = gone;
     }   
                     completion:^(BOOL finished)
     {    if (finished){
        
    }
     }];
}

+(void)DL_animateDevelomentionalLabel:(UILabel *)label WithDuration:(float)duration{
   
    CGAffineTransform bigTransform = CGAffineTransformMakeScale(0.1, 0.1);
    label.text = @" ";
    [UIView animateWithDuration:duration
                          delay:0.0
                        options:UIViewAnimationCurveLinear
     
                     animations:^
     {
         label.text =@"D";
         label.hidden = NO;
         label.transform = bigTransform;
     } 
                     completion:^(BOOL finished)
     {
         [UIView animateWithDuration:duration
                               delay:0.0
                             options:UIViewAnimationCurveLinear
          
                          animations:^
          {
              label.text =@"De";
          } 
                          completion:^(BOOL finished)
          {
              if (finished) {
                  
                  [UIView animateWithDuration:duration
                                        delay:0.0
                                      options:UIViewAnimationCurveLinear
                   
                                   animations:^
                   {
                       label.text =@"Dev";
                   } 
                                   completion:^(BOOL finished)
                   {
                       if (finished) {
                           [UIView animateWithDuration:duration
                                                 delay:0.0
                                               options:UIViewAnimationCurveLinear
                            
                                            animations:^
                            {
                                label.text =@"Deve";
                            } 
                                            completion:^(BOOL finished)
                            {
                                if (finished) {
                                    [UIView animateWithDuration:duration
                                                          delay:0.0
                                                        options:UIViewAnimationCurveLinear
                                     
                                                     animations:^
                                     {
                                         label.text =@"Devel";
                                     } 
                                                     completion:^(BOOL finished)
                                     {
                                         if (finished) {
                                             [UIView animateWithDuration:duration
                                                                   delay:0.0
                                                                 options:UIViewAnimationCurveLinear
                                              
                                                              animations:^
                                              {
                                                  label.text =@"Develo";
                                              } 
                                                              completion:^(BOOL finished)
                                              { 
                                                  if (finished) {
                                                      [UIView animateWithDuration:duration
                                                                            delay:0.0
                                                                          options:UIViewAnimationCurveLinear
                                                       
                                                                       animations:^
                                                       {
                                                           label.text =@"Develom";
                                                       } 
                                                                       completion:^(BOOL finished)
                                                       {
                                                           if (finished) {
                                                               [UIView animateWithDuration:duration
                                                                                     delay:0.0
                                                                                   options:UIViewAnimationCurveLinear
                                                                
                                                                                animations:^
                                                                {
                                                                    label.text =@"Develome";
                                                                } 
                                                                                completion:^(BOOL finished)
                                                                {
                                                                    if (finished) {
                                                                        [UIView animateWithDuration:duration
                                                                                              delay:0.0
                                                                                            options:UIViewAnimationCurveLinear
                                                                         
                                                                                         animations:^
                                                                         {
                                                                             label.text =@"Develomen";
                                                                         } 
                                                                                         completion:^(BOOL finished)
                                                                         {
                                                                             if (finished) {
                                                                                 [UIView animateWithDuration:duration
                                                                                                       delay:0.0
                                                                                                     options:UIViewAnimationCurveLinear
                                                                                  
                                                                                                  animations:^
                                                                                  {
                                                                                      label.text =@"Develoment";
                                                                                  } 
                                                                                                  completion:^(BOOL finished)
                                                                                  {
                                                                                      if (finished) {
                                                                                          [UIView animateWithDuration:duration
                                                                                                                delay:0.0
                                                                                                              options:UIViewAnimationCurveLinear
                                                                                           
                                                                                                           animations:^
                                                                                           {
                                                                                               label.text =@"Develomenti";
                                                                                           } 
                                                                                                           completion:^(BOOL finished)
                                                                                           {
                                                                                               if (finished) {
                                                                                                   [UIView animateWithDuration:duration
                                                                                                                         delay:0.0
                                                                                                                       options:UIViewAnimationCurveLinear
                                                                                                    
                                                                                                                    animations:^
                                                                                                    {
                                                                                                        label.text =@"Develomentio";
                                                                                                    } 
                                                                                                                    completion:^(BOOL finished)
                                                                                                    {
                                                                                                        if (finished) {
                                                                                                            [UIView animateWithDuration:duration
                                                                                                                                  delay:0.0
                                                                                                                                options:UIViewAnimationCurveLinear
                                                                                                             
                                                                                                                             animations:^
                                                                                                             {
                                                                                                                 label.text =@"Develomention";
                                                                                                             } 
                                                                                                                             completion:^(BOOL finished)
                                                                                                             {
                                                                                                                 if (finished) {
                                                                                                                     [UIView animateWithDuration:duration
                                                                                                                                           delay:0.0
                                                                                                                                         options:UIViewAnimationCurveLinear
                                                                                                                      
                                                                                                                                      animations:^
                                                                                                                      {
                                                                                                                          label.text =@"Develomentiona";
                                                                                                                      } 
                                                                                                                                      completion:^(BOOL finished)
                                                                                                                      {
                                                                                                                          if (finished) {
                                                                                                                              [UIView animateWithDuration:duration
                                                                                                                                                    delay:0.0
                                                                                                                                                  options:UIViewAnimationCurveLinear
                                                                                                                               
                                                                                                                                               animations:^
                                                                                                                               {
                                                                                                                                   label.text =@"Develomentional";
                                                                                                                               } 
                                                                                                                                               completion:^(BOOL finished)
                                                                                                                               {
                                                                                                                                   if (finished) {[UIView animateWithDuration:duration
                                                                                                                                                                        delay:0.0
                                                                                                                                                                      options:UIViewAnimationCurveLinear
                                                                                                                                                   
                                                                                                                                                                   animations:^
                                                                                                                                                   {
                                                                                                                                                       label.text =@"Develomentional,L";
                                                                                                                                                   } 
                                                                                                                                                                   completion:^(BOOL finished)
                                                                                                                                                   {
                                                                                                                                                       if (finished) {
                                                                                                                                                           [UIView animateWithDuration:duration
                                                                                                                                                                                 delay:0.0
                                                                                                                                                                               options:UIViewAnimationCurveLinear
                                                                                                                                                            
                                                                                                                                                                            animations:^
                                                                                                                                                            {
                                                                                                                                                                label.text =@"Develomentional,LL";
                                                                                                                                                            } 
                                                                                                                                                                            completion:^(BOOL finished)
                                                                                                                                                            {
                                                                                                                                                                if (finished) {
                                                                                                                                                                    [UIView animateWithDuration:duration
                                                                                                                                                                                          delay:0.0
                                                                                                                                                                                        options:UIViewAnimationCurveLinear
                                                                                                                                                                     
                                                                                                                                                                                     animations:^
                                                                                                                                                                     {
                                                                                                                                                                         label.text =@"Develomentional,LLC";
                                                                                                                                                                     } 
                                                                                                                                                                                     completion:^(BOOL finished)
                                                                                                                                                                     {
                                                                                                                                                                         if (finished) {
                                                                                                                                                                             [UIView animateWithDuration:duration
                                                                                                                                                                                                   delay:0.0
                                                                                                                                                                                                 options:UIViewAnimationCurveLinear
                                                                                                                                                                              
                                                                                                                                                                                              animations:^
                                                                                                                                                                              {
                                                                                                                                                                                  label.text =@"Develomentional,LLC";
                                                                                                                                                                              } 
                                                                                                                                                                                              completion:^(BOOL finished)
                                                                                                                                                                              {
                                                                                                                                                                                  if (finished) {
                                                                                                                                                                                      [UIView animateWithDuration:duration
                                                                                                                                                                                                            delay:0.0
                                                                                                                                                                                                          options:UIViewAnimationCurveLinear
                                                                                                                                                                                       
                                                                                                                                                                                                       animations:^
                                                                                                                                                                                       {
                                                                                                                                                                                           label.text =@"Develomentional,LLC";
                                                                                                                                                                                           label.transform =CGAffineTransformIdentity;
                                                                                                                                                                                       } 
                                                                                                                                                                                                       completion:^(BOOL finished)
                                                                                                                                                                                       {
                                                                                                                                                                                       }];
                                                                                                                                                                                  }
                                                                                                                                                                                  
                                                                                                                                                                              }];
                                                                                                                                                                         }
                                                                                                                                                                     }];
                                                                                                                                                                }
                                                                                                                                                            }];
                                                                                                                                                       }
                                                                                                                                                   }];
                                                                                                                                   }
                                                                                                                               }];
                                                                                                                          }
                                                                                                                      }];
                                                                                                                 }
                                                                                                             }];
                                                                                                        }
                                                                                                    }];
                                                                                               }
                                                                                           }];
                                                                                      }
                                                                                  }];
                                                                             }
                                                                         }];
                                                                    }
                                                                }];
                                                           }
                                                       }];
                                                  }
                                              }];
                                         }
                                     }];
                                }
                            }];
                       }
                   }];
              }
          }];
     }];
  
}


@end
