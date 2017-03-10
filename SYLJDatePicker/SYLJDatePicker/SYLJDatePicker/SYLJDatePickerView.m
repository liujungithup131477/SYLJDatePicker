//
//  SYLJDatePickerView.m
//  SYLJDatePicker
//
//  Created by 刘俊 on 2017/3/10.
//  Copyright © 2017年 刘俊. All rights reserved.
//

#import "SYLJDatePickerView.h"

#define kScreenWidth    [[UIScreen mainScreen] bounds].size.width
#define kScreenHeight   [[UIScreen mainScreen] bounds].size.height
#define kDatePickerToolHeight   40
#define kDatePickerHeight   216

@interface SYLJDatePickerView ()

@property (nonatomic, strong) UIView *toolsView;
@property (nonatomic, strong) UIView *dividingline;

@end

@implementation SYLJDatePickerView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self prepareUI];
    }
    return self;
}

- (void)prepareUI
{
    self.frame = CGRectMake(0, 0, kScreenWidth, kScreenHeight);
    
    [self addSubview:self.toolsView];
    
    [self.toolsView addSubview:self.dividingline];
    [self.toolsView addSubview:self.datePicker];
}

#pragma mark - 
#pragma mark Action methods
- (void)showDatePicker
{
    self.backgroundColor = [UIColor colorWithRed:0 / 255.0 green:0 / 255.0 blue:0 / 255.0 alpha:0.7];
    [[UIApplication sharedApplication].keyWindow addSubview:self];
    
    [UIView animateWithDuration:0.25 animations:^{
        self.toolsView.frame = CGRectMake(0, kScreenHeight - kDatePickerHeight - kDatePickerToolHeight, kScreenWidth, kDatePickerToolHeight + kDatePickerHeight);
    } completion:^(BOOL finished) {
        
    }];
}

- (void)hideDatePicker
{
    self.backgroundColor = [UIColor colorWithRed:0 / 255.0 green:0 / 255.0 blue:0 / 255.0 alpha:0.0];
    
    [UIView animateWithDuration:0.25 animations:^{
        self.toolsView.frame = CGRectMake(0, kScreenHeight, kScreenWidth, kDatePickerToolHeight + kDatePickerHeight);
    } completion:^(BOOL finished) {
        [self.toolsView removeFromSuperview];
    }];
}

#pragma mark -
#pragma mark setter methods
- (UIView *)toolsView
{
    if (_toolsView == nil) {
        _toolsView = [[UIView alloc] initWithFrame:CGRectMake(0, kScreenHeight, kScreenWidth, kDatePickerHeight + kDatePickerToolHeight)];
        _toolsView.backgroundColor = [UIColor colorWithRed:245 / 255.0 green:245 / 255.0 blue:245 /255.0 alpha:1.0];
    }
    return _toolsView;
}

- (UIView *)dividingline
{
    if (_dividingline == nil) {
        _dividingline = [[UIView alloc] initWithFrame:CGRectMake(0, kDatePickerToolHeight - 1, kScreenWidth, 1)];
        _dividingline.backgroundColor = [UIColor colorWithRed:218 / 255.0 green:218 / 255.0 blue:218 / 255.0 alpha:1.0];
    }
    return _dividingline;
}

- (UIDatePicker *)datePicker
{
    if (_datePicker == nil) {
        _datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, kDatePickerToolHeight, kScreenWidth, kDatePickerHeight)];
        _datePicker.backgroundColor = [UIColor whiteColor];
        _datePicker.datePickerMode = UIDatePickerModeDate;
        
        NSLocale *locale = [[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"];
        _datePicker.locale = locale;
        
    }
    return _datePicker;
}

@end
