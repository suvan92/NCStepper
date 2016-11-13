//
//  StepperViewController.m
//  NCStepper
//
//  Created by Suvan Ramani on 2016-11-12.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "StepperViewController.h"
#import "CounterViewController.h"

@interface StepperViewController ()

@property (strong, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIStepper *stepper;

@end

@implementation StepperViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    self.stepper.value = 0;
    
}


- (IBAction)stepperAction:(UIStepper *)sender {
    
    NSNotificationCenter *nCentre = [NSNotificationCenter defaultCenter];
    
    NSNumber *stepVal = [NSNumber numberWithDouble:self.stepper.value];
    
    NSDictionary *stepValDict = @{@"stepperValue" : stepVal};
    
    NSNotification *notification = [[NSNotification alloc] initWithName:@"stepChanged" object:nil userInfo:stepValDict];
    
    [nCentre postNotification:notification];
//    NSLog(@"Notification posted with step value: %@", stepVal);
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
