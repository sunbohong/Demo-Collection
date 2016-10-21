//
//  main.m
//  ClassClustersDemo
//
//  Created by sunbohong on 16/10/17.
//  Copyright © 2016年 sunbohong. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"



//预热
__attribute__((constructor))
static void constructor(void) {
    @autoreleasepool
    {
        NSArray *arr = [NSArray new];
        [arr count];
    }

    @autoreleasepool
    {
        NSArray *arr = @[@"1", @"3"];
        NSLog(@"%@", arr);
    }

    @autoreleasepool
    {
        NSArray *arr = [NSArray arrayWithObjects:@"1", @"3", nil];
        NSLog(@"%@", arr);
    }

    @autoreleasepool
    {
        NSMutableArray *arr = [NSMutableArray array];
        NSLog(@"%@", arr);
    }

    @autoreleasepool
    {
        NSMutableArray *arr = [NSMutableArray arrayWithArray:@[]];
        NSLog(@"%@", arr);
    }
}

int main(int argc, char *argv[]) {
    @autoreleasepool
    {
        NSArray *arr = [NSArray new];
        [arr count];
    }

    @autoreleasepool
    {
        NSArray *arr = @[@"1", @"3"];
        [arr count];
    }

    @autoreleasepool
    {
        NSArray *arr = [NSArray arrayWithObjects:@"1", @"3", nil];
        [arr count];
    }

    @autoreleasepool
    {
        NSMutableArray *arr = [NSMutableArray array];
        [arr count];
    }

    @autoreleasepool
    {
        NSMutableArray *arr = [NSMutableArray arrayWithArray:@[]];
        [arr count];
    }
}
