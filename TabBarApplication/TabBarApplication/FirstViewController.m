//
//  FirstViewController.m
//  TabBarApplication
//
//  Created by 万旭杰 on 15/3/20.
//  Copyright (c) 2015年 万旭杰. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
{
    
}
@synthesize picker;
@synthesize array;
@synthesize array_2;
    
-(IBAction)onclick:(id)sender
{
    NSInteger row=[picker selectedRowInComponent:0];
    NSString *selected=[array objectAtIndex:row];
    NSString *title=[[NSString alloc] initWithFormat:@"%@",selected];
    UIAlertView *alert=[[UIAlertView alloc] initWithTitle:title message:@"change" delegate:nil cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
    NSLog(@"click");
}
- (void)viewDidLoad {
    [super viewDidLoad];
    array=[[NSArray alloc] initWithObjects:@"a",@"b",@"c",@"d", nil];
    array_2=[[NSArray alloc]initWithObjects:@"mm",@"nn",@"qq",@"pp", nil];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 2;
}
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    if(component==0)
    {
        return array.count;
    }
    else
    {
        return array_2.count;
    }
    return array.count;
}
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    if(component==0)
    {
        return [array objectAtIndex:row];
    }
    else
    {
        return [array_2 objectAtIndex:row];
    }
    return [array_2 objectAtIndex:row];
}
@end
