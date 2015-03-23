//
//  SecondViewController.m
//  TabBarApplication
//
//  Created by 万旭杰 on 15/3/20.
//  Copyright (c) 2015年 万旭杰. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController
@synthesize uisedbtn;
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(IBAction)secondbtnclick:(id)sender
{
    UIAlertView * alert=[[UIAlertView alloc] initWithTitle:@"Second" message:@"System message" delegate:self cancelButtonTitle:@"ok" otherButtonTitles:nil, nil];
    [alert show];
    NSLog(@"second");
}
@end
