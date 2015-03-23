//
//  FirstViewController.h
//  TabBarApplication
//
//  Created by 万旭杰 on 15/3/20.
//  Copyright (c) 2015年 万旭杰. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
{
    IBOutlet UIPickerView *picker;
    NSArray *array;
    NSArray *array_2;
}
@property(nonatomic,retain) UIPickerView*picker;
@property(nonatomic,strong) NSArray *array;
@property(nonatomic,retain) NSArray *array_2;
@end

