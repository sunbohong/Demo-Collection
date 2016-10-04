//
//  ViewController.m
//  UIView-布局
//
//  Created by sunbohong on 16/10/4.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import "ViewController.h"
#import "SunView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.view addSubview:^(){SunView*v=[SunView new];v.title=@"1"; v.frame=CGRectMake(10, 10, 10, 10); return v;}()];
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self.view addSubview:^(){SunView*v=[SunView new];v.title=@"2";v.frame=CGRectMake(100, 100, 10, 10); return v;}()];
        });
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

