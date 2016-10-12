//
//  DetailViewController.h
//  UINavigationButtonBugDemo
//
//  Created by sunbohong on 16/10/12.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController

@property (strong, nonatomic) NSDate *detailItem;
@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;

@end

