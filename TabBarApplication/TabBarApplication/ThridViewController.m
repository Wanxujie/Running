//
//  ThridViewController.m
//  TabBarApplication
//
//  Created by 万旭杰 on 15/3/20.
//  Copyright (c) 2015年 万旭杰. All rights reserved.
//

#import "ThridViewController.h"

@interface ThridViewController ()

@end

@implementation ThridViewController
@synthesize array_1;
@synthesize array_2;
@synthesize picker;
@synthesize uithrbtn;
@synthesize date;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSBundle * bundle=[NSBundle mainBundle];//得到一个bundle;
    NSString * plistPath=[bundle pathForResource:@"List" ofType:@"plist"];//获取路径
    NSDictionary *dic=[[NSDictionary alloc ]initWithContentsOfFile: plistPath]; //通过路径获取到一个字典
    self.date=dic;
    NSArray *array=[self.date allKeys];  //获取所有键
    NSArray *sorted=[array sortedArrayUsingSelector:@selector(compare:)];
    self.array_1=sorted;
    NSString *select_1=[self.array_1 objectAtIndex:0];  //获取第一个字符段
    NSArray *col2=[self.date objectForKey:select_1];
    self.array_2=col2;
    
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)thridbtnclick:(id)sender
{
    NSLog(@"thrid");
    NSInteger row=[picker selectedRowInComponent:0];
    NSString *title=[array_1 objectAtIndex:row];
    NSLog(@"%@",title);
    //NSInteger row= [picker selectedRowInComponent:0];
    NSString *select=[self.array_1 objectAtIndex:row];
    self.array_2=[self.date objectForKey:select];
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component==0)
    {
        NSString *title=[array_1 objectAtIndex:row];
        return title;
    }
    else
    {
        NSString *title=[array_2 objectAtIndex:row];
        return title;
    }

}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if(component==0)
    {
        return array_1.count;
    }
    else
    {
        return array_2.count;
    }
}

-(IBAction)selectchange:(id)sender
{
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if(component==0)
    {
        NSString *select=[self.array_1 objectAtIndex:row];
        self.array_2=[self.date objectForKey:select];
        [self.picker reloadComponent:1];
    }

}

@end
