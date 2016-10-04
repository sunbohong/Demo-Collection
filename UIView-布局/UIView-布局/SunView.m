//
//  SunView.m
//  UIView-布局
//
//  Created by sunbohong on 16/10/4.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import "SunView.h"

@implementation SunView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

-(void)layoutSubviews{
    [super layoutSubviews];
    NSLog(@"%@",self.title);
}

@end
