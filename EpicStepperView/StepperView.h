//
//  StepperView.h
//  EpicStepperView
//
//  Created by Efrain Ayllon on 6/23/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol StepperViewDelegate

-(void) stepperValueChanged:(int) number;


@end

@interface StepperView : UIView
{
    
    
}

@property (nonatomic,weak) id<StepperViewDelegate> delegate;

@end
