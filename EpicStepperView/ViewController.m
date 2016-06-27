//
//  ViewController.m
//  EpicStepperView
//
//  Created by Efrain Ayllon on 6/23/16.
//  Copyright © 2016 Efrain Ayllon. All rights reserved.
//

#import "ViewController.h"
#import "StepperView.h"

@interface ViewController ()

@end


@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    StepperView *stepperView = [[StepperView alloc] initWithFrame:CGRectMake(0, 0, 300, 50)];
    stepperView.center = self.view.center;
    [self.view addSubview:stepperView];
    
    
//    AddButton
    UIButton *additionButton = [[UIButton alloc] initWithFrame:CGRectMake(195, 318, 100, 100)];
    additionButton.frame = CGRectMake(stepperView.frame.size.width/2 + 50, stepperView.frame.size.height/2 - 25, 100, 50);
    [self.view addSubview:additionButton];
    
    
//    Subtraction button
    UIButton *subtractionButton = [[UIButton alloc] initWithFrame:CGRectMake(195, 318, 100, 100)];
    subtractionButton.frame = CGRectMake(stepperView.frame.size.width/2 - 150, stepperView.frame.size.height/2 - 25, 100, 50);
    [self.view addSubview:subtractionButton];
    
    
    
//    Label
    UILabel *valueLabel = [[UILabel alloc] initWithFrame:CGRectMake(195, 318, 100, 100)];
    [valueLabel setTextColor:[UIColor redColor]];
    [self.view addSubview:valueLabel];
    
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
