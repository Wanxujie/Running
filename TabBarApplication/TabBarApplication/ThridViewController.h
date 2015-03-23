//
//  ThridViewController.h
//  TabBarApplication
//
//  Created by 万旭杰 on 15/3/20.
//  Copyright (c) 2015年 万旭杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ThridViewController : UIViewController<UIPickerViewDataSource,UIPickerViewDelegate>
{
    IBOutlet UIButton *uithrbtn;
    NSArray *array_1;
    NSArray *array_2;
    IBOutlet UIPickerView *picker;
    NSDictionary *date;
}
@property NSArray* array_1;
@property NSArray* array_2;
@property UIButton *uithrbtn;
@property UIPickerView *picker;
@property NSDictionary *date;
@end
