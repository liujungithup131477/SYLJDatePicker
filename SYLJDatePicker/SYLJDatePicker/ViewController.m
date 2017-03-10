//
//  ViewController.m
//  SYLJDatePicker
//
//  Created by 刘俊 on 2017/3/10.
//  Copyright © 2017年 刘俊. All rights reserved.
//

#import "ViewController.h"
#import "SYLJDatePickerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeContactAdd];
    btn.frame = CGRectMake(200, 150, 50, 50);
    [self.view addSubview:btn];
    [btn addTarget:self action:@selector(click) forControlEvents:UIControlEventTouchUpInside];
}

- (void)click
{
    SYLJDatePickerView *datePicker = [[SYLJDatePickerView alloc] initWithDatePickerType:SYLJDatePickerTypeBirthdayDate dateSelBlock:^(NSString *dateString) {
        NSLog(@"%@",dateString);
    }];
    [datePicker showDatePicker];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
