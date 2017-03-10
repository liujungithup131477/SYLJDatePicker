//
//  SYLJDatePickerView.h
//  SYLJDatePicker
//
//  Created by 刘俊 on 2017/3/10.
//  Copyright © 2017年 刘俊. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SYLJDatePickerView : UIView

/**
 日期选择器
 */
@property (nonatomic, strong) UIDatePicker *datePicker;

/**
 显示日期选择器
 */
- (void)showDatePicker;

/**
 隐藏日期选择器
 */
- (void)hideDatePicker;

@end
