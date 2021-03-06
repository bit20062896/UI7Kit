//
//  UITPickerViewController.m
//  UI7Kit
//
//  Created by Jeong YunWon on 13. 7. 5..
//  Copyright (c) 2013 youknowone.org. All rights reserved.
//

#import "UITPickerViewController.h"

@interface UITPickerViewController ()

@end

@implementation UITPickerViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%@", [self.pickerView topGradient]);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 2;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    return 20;
}

- (void)backgroundColorChanged:(UISlider *)sender {
    self.view.backgroundColor = [UIColor colorWithRed:sender.value green:sender.value * sender.value blue:1.0 - pow(1 - sender.value, 2) alpha:1.0];
}

@end
