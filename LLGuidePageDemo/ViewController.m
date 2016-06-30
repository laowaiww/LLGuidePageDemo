//
//  ViewController.m
//  LLGuidePageDemo
//
//  Created by 王威 on 16/6/30.
//  Copyright © 2016年 王威. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *textLabel = [[UILabel alloc]initWithFrame:self.view.bounds];
    textLabel.textAlignment = NSTextAlignmentCenter;
    textLabel.font = [UIFont systemFontOfSize:20];
    textLabel.text = @"你跳转到了首页";
    [self.view addSubview:textLabel];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
