//
//  StepperView.m
//  EpicStepperView
//
//  Created by Efrain Ayllon on 6/23/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "StepperView.h"

@implementation StepperView

-(instancetype) initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    [self setup];
    return self;
}

-(void) setup {
    
    UIView *stepperView = [[UIView alloc] init];
    stepperView.frame = CGRectMake(0, 0, 300, 50);
    [stepperView setBackgroundColor:[UIColor colorWithRed:33/255.0 green:33/255.0 blue:33/255.0 alpha:1.0]];
    [self addSubview:stepperView];

//    Add Button
    UIButton *addButton = [[UIButton alloc] init];
    addButton.frame = CGRectMake(stepperView.frame.size.width/2 + 50, stepperView.frame.size.height/2 - 25, 100, 50);
    [addButton setBackgroundColor:[UIColor orangeColor]];
    [addButton setTitle:@"+" forState:UIControlStateNormal];
    [addButton addTarget:self action:@selector(addButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:addButton];
    
//    Subtract Button
    UIButton *subButton = [[UIButton alloc] init];
    subButton.frame = CGRectMake(stepperView.frame.size.width/2 - 150, stepperView.frame.size.height/2 - 25, 100, 50);
    [subButton setBackgroundColor:[UIColor orangeColor]];
    [subButton setTitle:@"-" forState:UIControlStateNormal];
   [subButton addTarget:self action:@selector(subButtonPress:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:subButton];
    
//    Label
    UILabel *valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(stepperView.frame.size.width/2, stepperView.frame.size.height/2, 100, 100)];
    [valueLabel setTextColor:[UIColor redColor]];
    [self addSubview:valueLabel];
    
    stepperStartValue = 0;
    _valueLabel.text = [NSString stringWithFormat:@"%d", stepperStartValue];
    
}





-(void) addButtonPress:(id) sender {
    
    stepperStartValue++;
    NSString *convertedValue = [NSString stringWithFormat:@"%d", stepperStartValue];
    _valueLabel.text = convertedValue;
    
    NSLog(@"%d", stepperStartValue);
    [self.delegate stepperValueChanged:stepperStartValue];
}

-(void) subButtonPress:(id) sender {
    
    stepperStartValue--;
    NSString *convertedValue = [NSString stringWithFormat:@"%d", stepperStartValue];
    _valueLabel.text = convertedValue;
    
    
    NSLog(@"%d", stepperStartValue);
    [self.delegate stepperValueChanged:stepperStartValue];
    
}

@end