//
//  DetailViewController.m
//  UINavigationButtonBugDemo
//
//  Created by sunbohong on 16/10/12.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)configureView {
    // Update the user interface for the detail item.
    if (self.detailItem) {
        self.detailDescriptionLabel.text = [self.detailItem description];
    }
}

+ (void)initialize{
    UIBarButtonItem *item = [UIBarButtonItem appearance];

    //设置可用状态
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSFontAttributeName] = [UIFont systemFontOfSize:14];
    NSLog(@"设置了字体，请注意观察右上角的文字在切换界面时的变化");
    [item setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"是" style:UIBarButtonItemStylePlain target:nil action:nil];

    // Do any additional setup after loading the view, typically from a nib.
    [self configureView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - Managing the detail item

- (void)setDetailItem:(NSDate *)newDetailItem {
    if (_detailItem != newDetailItem) {
        _detailItem = newDetailItem;
        
        // Update the view.
        [self configureView];
    }
}


@end
