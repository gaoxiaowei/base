//
//  ViewController.m
//  VVBaseFoundationDemo
//
//  Created by gaoxiaowei on 2018/3/2.
//  Copyright © 2018年 gxw. All rights reserved.
//

#import "ViewController.h"
#import "SystemInformation.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    NSLog(@"systemVersion:%@",@( [SystemInformation systemVersion]));
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
