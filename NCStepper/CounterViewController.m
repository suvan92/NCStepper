//
//  CounterViewController.m
//  NCStepper
//
//  Created by Suvan Ramani on 2016-11-12.
//  Copyright © 2016 suvanr. All rights reserved.
//

#import "CounterViewController.h"

@interface CounterViewController ()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UILabel *counterLabel;

@end

@implementation CounterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    NSNotificationCenter *nCentre = [NSNotificationCenter defaultCenter];
    
    [nCentre addObserver:self selector:@selector(updateLabel:) name:@"updateCounter" object:nil];
    
}


-(void)updateLabel:(NSNotification *)notification {
    
}

//- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSKeyValueChangeKey,id> *)change context:(void *)context {
//    if ([keyPath isEqualToString:@""]) {
//        
//    }
//}

@end
